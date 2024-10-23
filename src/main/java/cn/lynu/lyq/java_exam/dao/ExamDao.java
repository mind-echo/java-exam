package cn.lynu.lyq.java_exam.dao;

import java.util.List;

import cn.lynu.lyq.java_exam.entity.*;

public interface ExamDao {

	List<Exam> findAllFixedExam();//查找固定组卷的考试
	List<String> findAllDistinctExamName();//查找所有考试名（随机试卷算1个）
	List<Exam> findByStudentNameAndExamNameAlike(String studentName, String examName);

	Exam findById(int id);
	Exam findByName(String name);
	void save(Exam e);
	void update(Exam e);
	void delete(Exam e);
	void composeExamRandom(Exam exam, int choiceNum,int blankFillingNum, int judgeNum,int shortAnswerNum);
	
	void examCreateWithQuestions(Exam exam, List<BankChoiceQuestion> choiceList,
								 List<BankBlankFillingQuestion> blankList, List<BankJudgeQuestion> judgeList,
								 List<BankShortAnswerQuestion> shortAnswerList);

}