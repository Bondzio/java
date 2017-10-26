package net.bkpark.tone;

import java.util.List;

public interface NLPService {
	void insertEmail(EmailVO vo);
	List<EmailVO> getList();
	EmailVO detail(int no);
}
