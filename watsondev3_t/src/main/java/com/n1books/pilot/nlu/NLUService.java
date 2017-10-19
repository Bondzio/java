package com.n1books.pilot.nlu;

import java.util.List;

public interface NLUService {

	void insertEmotion(EmotionVO vo);

	List<EmotionVO> getList();

}
