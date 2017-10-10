package test;

public class DaoTest {

	public static void dbTest (DataAccessObject dao) { // static method는 instance없이 실행, Interface를 통해 Upcasting 
		dao.select();
		dao.insert();
		dao.update();
		dao.delete();
	}
	
// instance를 parameter로 넘겨서 유연하게 사용 
	
	public static void main(String [] args) {
		dbTest(new OracleDao());
		dbTest(new MySQLDao());
	}

}
