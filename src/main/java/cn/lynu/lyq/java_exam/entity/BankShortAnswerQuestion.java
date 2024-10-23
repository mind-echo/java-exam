package cn.lynu.lyq.java_exam.entity;

import javax.persistence.Entity;

/*
 * 填空题题库
 * 答案（该属性在父类里）
 */
@Entity
public class BankShortAnswerQuestion extends BankQuestion {

	public BankShortAnswerQuestion(){}

	public BankShortAnswerQuestion(String content, String answer, String knowledgePoint) {
		setContent(content);
		setAnswer(answer);
		setKnowledgePoint(knowledgePoint);
		setComposeFlag(1); //默认允许题目参与随机抽题
	}


	@Override
	public String toString() {
		return super.toString();
	}
}
