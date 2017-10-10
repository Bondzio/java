package ibatis;

import java.sql.SQLException;
import java.util.Scanner;

public class Driver {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		AccountDVO accountDVO = new AccountDVO();
		
		while(true) {
			try {
				int menu = accountDVO.showMenu(sc);
				
				switch (menu) {
				case 1:
					accountDVO.insertAccount(sc);
					break;
					
				case 2:
					accountDVO.listAccount(sc);
					break;

				case 3:
					accountDVO.detailAccount(sc);
					break;

				case 4:
					accountDVO.updateAccount(sc);
					break;
				
				case 5:
					accountDVO.deleteAccount(sc);
					break;

				case 0:
					System.out.println("프로그램을 종료합니다. ");
					System.exit(1);
					break;
				default:
					System.out.println("없는 메뉴입니다");
					break;
				}
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("잘못된 메뉴가 입력되었습니다");
			}
		}
	}
	
	
}
