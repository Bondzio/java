package article.models;

public class PageVO {
	private long startnum;
	private long endnum;
	private long startpage;
	private long endpage;
	private long pg;
	private long pageCount;
	private long totalCount;
	private long blockSize=10;
	private int pageSize=10;	
	
	public final long getStartpage() {
		return startpage;
	}

	public final void setStartpage(long startpage) {
		this.startpage = startpage;
	}

	public final long getEndpage() {
		return endpage;
	}

	public final void setEndpage(long endpage) {
		this.endpage = endpage;
	}

	public final long getPageCount() {
		return pageCount;
	}

	public final void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}

	public final long getTotalCount() {
		return totalCount;
	}

	public final void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public final long getBlockSize() {
		return blockSize;
	}

	public final void setBlockSize(long blockSize) {
		this.blockSize = blockSize;
	}

	public PageVO(long startnum, long endnum, long pg) throws Exception {
		this.totalCount= ArticleDAOImpl.getInstance().getTotalCount(); // 전체 page 숫자
		this.startnum = startnum; // 시작번호
		this.endnum = endnum; // 끝번호
		this.pg=pg; // 현재 페이지 번호
		this.startpage 	= (pg -1) / blockSize * blockSize +1; // 페이지 블럭 시작 페이지 
		this.endpage 	= (pg -1) / blockSize * blockSize + blockSize; // 페이지 블럭 마지막 페이지
		this.pageCount = totalCount / pageSize; // 정수나누기 정수는 정수. 
		if (totalCount%pageSize !=0) this.pageCount++; 		 //page 가 10미만일때 
		if (endpage > pageCount) this.endpage = this.pageCount; // 계산한 endpage가 전체 page숫자보다 많으면 
	}
	
	public PageVO(){}
	
	
	public final long getStartnum() {
		return startnum;
	}
	public final void setStartnum(long startnum) {
		this.startnum = startnum;
	}
	public final long getEndnum() {
		return endnum;
	}
	public final void setEndnum(long endnum) {
		this.endnum = endnum;
	}
	@Override
	public String toString() {
		return "PageVO [startnum=" + startnum + ", endnum=" + endnum + "]";
	}

	public long getPg() {
		return pg;
	}

	public void setPg(long pg) {
		this.pg = pg;
	}
	
}
