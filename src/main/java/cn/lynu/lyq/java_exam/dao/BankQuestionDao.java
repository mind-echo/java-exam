package cn.lynu.lyq.java_exam.dao;

import java.io.File;
import java.util.List;

import cn.lynu.lyq.java_exam.entity.*;

public interface BankQuestionDao {
	
	List<BankQuestion> findAll();
	
	int countAllChoice();
	int countAllBlankFilling();
	int countAllJudge();
	int countAllShortAnswer();

	List<BankChoiceQuestion> findAllChoice();
	List<BankBlankFillingQuestion> findAllBlankFilling();
	List<BankJudgeQuestion> findAllJudge();
	List<BankShortAnswerQuestion> findAllShortAnswer();

	//根据组卷标志（目前用于随机抽题）查询
	List<BankChoiceQuestion> findChoiceWithComposeFlag(int composeFlag);
	List<BankBlankFillingQuestion> findBlankFillingWithComposeFlag(int composeFlag);
	List<BankJudgeQuestion> findJudgeWithComposeFlag(int composeFlag);
	List<BankShortAnswerQuestion> findShortAnswerWithComposeFlag(int composeFlag);

	//分页查询
	List<BankChoiceQuestion> findAllChoiceWithPage(int pageIndex, int pageSize);
	List<BankBlankFillingQuestion> findAllBlankFillingWithPage(int pageIndex, int pageSize);
	List<BankJudgeQuestion> findAllJudgeWithPage(int pageIndex, int pageSize);
	List<BankShortAnswerQuestion> findAllShortAnswerWithPage(int pageIndex, int pageSize);

	List<BankChoiceQuestion> findChoiceForSearch(String content,String choice,String answer,String knowledge);
	List<BankBlankFillingQuestion> findBlankForSearch(String content,String answer,String knowledge);
	List<BankJudgeQuestion> findJudgeForSearch(String content,String answer,String knowledge);
	List<BankShortAnswerQuestion> findShortAnswerForSearch(String content,String answer,String knowledge);

	BankChoiceQuestion findChoiceById(int id);
	BankBlankFillingQuestion findBlankFillingById(int id);
	BankJudgeQuestion findJudgeById(int id);
	BankShortAnswerQuestion findShortAnswerById(int id);

	void save(BankQuestion bq);
	void update(BankQuestion bq);
	void delete(BankQuestion bq);
	
	int importChoiceFromTxt(File txtFile);
	int importBlankFromTxt(File txtFile);
	int importJudgeFromTxt(File txtFile);
	int importShortAnswerFromTxt(File txtFile);
}