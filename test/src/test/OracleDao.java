package test;

public class OracleDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("Oracle DB에서 검색");
	}

	@Override
	public void insert() {
		System.out.println("Oracle DB에서 삽입");
	}

	@Override
	public void update() {
		System.out.println("Oracle DB에서 업데이트");
	}

	@Override
	public void delete() {
		System.out.println("Oracle DB에서 삭제");
	}

}
