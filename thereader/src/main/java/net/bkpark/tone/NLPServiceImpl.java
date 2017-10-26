package net.bkpark.tone;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NLPServiceImpl implements NLPService{

	@Autowired
	private NLPDAO nlpDAO;
	
	@Override
	public void insertEmail(EmailVO vo) {
		nlpDAO.insertEmail(vo);
	}

	@Override
	public List<EmailVO> getList() {
		return nlpDAO.getList();
	}

	@Override
	public EmailVO detail(int no) {
		return nlpDAO.getDetail(no);
	}

}
