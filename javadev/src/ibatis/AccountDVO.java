package ibatis;

import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

import com.ibatis.sqlmap.client.SqlMapClient;

public class AccountDVO {
	public void listAccount(Scanner sc) throws SQLException {
		SqlMapClient sqlMap = QueryHandler.getInstance();
		List<AccountVO> list = sqlMap.queryForList("listAccount");
			
		for(AccountVO accountVO : list) {
			System.out.println(accountVO);
		}
	}

	public void insertAccount(Scanner sc) throws SQLException {
		AccountVO accountVO = new AccountVO();
		System.out.println("\n1. 회원 입력	");
		System.out.print("firstName : "); 
		accountVO.setFirstName(sc.nextLine());

		System.out.print("lastName : "); 
		accountVO.setLastName(sc.nextLine());

		System.out.print("emailAddress : "); 
		accountVO.setEmailAddress(sc.nextLine());
		SqlMapClient sqlMap = QueryHandler.getInstance();
		sqlMap.insert("insertAccount", accountVO); 
		System.out.println(accountVO.getLastName() + "고객이 입력되었습니다");
		
	}

	

	public void detailAccount(Scanner sc) {
		System.out.print("상세보기 할 고객 ID 를 입력하세요");
		int id = Integer.parseInt(sc.nextLine());
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		try {
			AccountVO accountVO = (AccountVO) sqlMap.queryForObject("detailAccount",id);
			if (accountVO == null) {
				System.out.println("잘못된 고객 ID 입니다");
			} else {
				System.out.println(id + "고객님의 상세정보입니다.");
				System.out.println(accountVO + "\n");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public int showMenu(Scanner sc) throws Exception {
		System.out.println("");
		System.out.println("******** menu*******");
		System.out.println("1. 회원 입력");
		System.out.println("2. 회원 리스트");
		System.out.println("3. 회원 상세보기");
		System.out.println("4. 고객 수정");
		System.out.println("5. 고객 삭제");
		System.out.println("0. 종료");
		System.out.println("********************");
		System.out.print("> ");
		return Integer.parseInt(sc.nextLine().trim());
		//return sc.nextInt();
	}

	public void updateAccount(Scanner sc) {
		System.out.print("수정 할 고객 ID 를 입력하세요");
		int id = Integer.parseInt(sc.nextLine());
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		
		try {
			AccountVO accountVO = (AccountVO) sqlMap.queryForObject("detailAccount",id);
			if (accountVO == null) {
				System.out.println("잘못된 고객 ID 입니다");
			} else {
				System.out.println(accountVO.getId() + "고객 정보 수정");
				System.out.println("old : " + accountVO.getFirstName());
				System.out.print("new : ");
				String firstName = sc.nextLine();

				System.out.println("old : " + accountVO.getLastName());
				System.out.print("new : ");
				String lastName = sc.nextLine();
				
				System.out.println("old : " + accountVO.getEmailAddress());
				System.out.print("new : ");
				String emailAddress = sc.nextLine();
				
				AccountVO up_accountVO = new AccountVO();
				up_accountVO.setId(id);
				up_accountVO.setFirstName(firstName);
				up_accountVO.setLastName(lastName);
				up_accountVO.setEmailAddress(emailAddress);
				
				int result = sqlMap.update("updateAccount", up_accountVO);
				if (result == 1 ) {
					System.out.println(id + "고객정보가수정되었습니다");
				} else {
					System.out.println(id + "고객정보 수정실패");
				}
				
			} 
		} catch (SQLException e) {
				e.printStackTrace();
		}
	}

	public void deleteAccount(Scanner sc) throws SQLException {
		System.out.print("삭제 할 고객 ID 를 입력하세요");
		int id = Integer.parseInt(sc.nextLine());
		SqlMapClient sqlMap = QueryHandler.getInstance();
		int result = sqlMap.delete("deleteAccount", id);
		if (result == 1 ) {
			System.out.println(id + "고객정보가 삭제되었습니다");
		} else {
			System.out.println(id + "고객정보 삭제실패");
		}
	}
}
