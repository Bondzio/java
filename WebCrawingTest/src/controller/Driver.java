package controller;

public class Driver {
	public static void main(String[] args) {
		String rawData = null;
		String urlstr = "https://www.quandl.com/api/v3/datasets/ODA/PCOPP_USD";

		Crawler2 crawer = new Crawler2();
		crawer.setUrlstr(urlstr);
		crawer.sofi_WebReader();
		
/*		Crawler crawer = new Crawler();*/
/*		crawer.setUrlstr(urlstr);
		crawer.sofi_WebReader();
		rawData = crawer.getRawData();

		Sofi_JSONParser parser = new Sofi_JSONParser();
		List<TeamVO> list = parser.do_parsing(rawData);

		for (TeamVO teamVO : list) {
			System.out.println(teamVO);
		}
*/	}
}