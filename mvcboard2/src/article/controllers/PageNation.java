package article.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import article.models.ArticleDAO;
import article.models.ArticleDAOImpl;

public class PageNation {
	
	private static Logger logger = LoggerFactory.getLogger(PageNation.class);
	
	long pg = 1;
	long pageCount 	= 0 ;								// 전체 페이지 수
	long totalCount	= 0;								// 전체 게시물 수
	long blockSize 	= 10;
	int pageSize=10;
	long startPage 	= 0; //// 페이지 블럭 시작 페이지 
	long endPage 	= 0; //(pg -1) / blockSize * blockSize + blockSize; // 페이지 블럭 마지막 페이지
	
	long startnum = 0;
	long endnum = 0; 
	private StringBuffer display = new StringBuffer();

	public PageNation(long pg) throws Exception{
		this.pg = pg;
		startnum = (pg- 1) * pageSize +1;
		endnum = pg * pageSize;
		
		startPage = (pg -1) / blockSize * blockSize +1; 
		endPage = (pg -1) / blockSize * blockSize + blockSize;
		
		ArticleDAO articleDAO = ArticleDAOImpl.getInstance();
		totalCount = articleDAO.getTotalCount();
		pageCount = totalCount / pageSize;
		
		if (totalCount%pageSize !=0) {
			this.pageCount++;
		}
		if (endPage > pageCount) endPage = pageCount; 
		
		display.append("<ul class='pagination'>");
		if (startPage == 1) {
			display.append("<li><a> 이전블럭 </a></li>");
		} else {
			display.append("<li><a href='list?pg=" + (startPage -1) + "'> 이전블럭</a></li>");
		}
		
		for(long p = startPage; p<=endPage; p++) {
			if (p==pg) {
				display.append("<li class='active'><a>" +p+ "</a></li>");
			} else {
				display.append("<li><a href='list?pg=" +p+ "'>" + p + "</a></li>");
			}
		}
		if (endPage == pageCount) {
			display.append("<li><a> 다음블럭 </a></li>");
		} else {
			display.append("<li><a href='list?pg=" + (endPage + 1) + "'> 다음블럭</a></li>");
		}
		display.append("</ul");
		System.out.println("=============display=========================================================");
		System.out.println(display);
		System.out.println("=============display=========================================================");
	}

	public final long getPg() {
		return pg;
	}

	public final void setPg(long pg) {
		this.pg = pg;
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

	public final int getPageSize() {
		return pageSize;
	}

	public final void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public final long getStartPage() {
		return startPage;
	}

	public final void setStartPage(long startPage) {
		this.startPage = startPage;
	}

	public final long getEndPage() {
		return endPage;
	}

	public final void setEndPage(long endPage) {
		this.endPage = endPage;
	}

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

	public final StringBuffer getDisplay() {
		return display;
	}

	public final void setDisplay(StringBuffer display) {
		this.display = display;
	}

	@Override
	public String toString() {
		return "PageNation [pg=" + pg + ", pageCount=" + pageCount + ", totalCount=" + totalCount + ", blockSize="
				+ blockSize + ", pageSize=" + pageSize + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", startnum=" + startnum + ", endnum=" + endnum + ", display=" + display + "]";
	}
}
