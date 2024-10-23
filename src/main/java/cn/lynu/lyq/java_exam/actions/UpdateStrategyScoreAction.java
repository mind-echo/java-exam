package cn.lynu.lyq.java_exam.actions;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

import cn.lynu.lyq.java_exam.dao.ExamStrategyDao;
import cn.lynu.lyq.java_exam.entity.ExamStrategy;

@Component("updateStrategyScore")
@Scope("prototype")
public class UpdateStrategyScoreAction extends ActionSupport{
	private static final long serialVersionUID = -6798232379261444727L;
	private final static Logger logger = LoggerFactory.getLogger(UpdateStrategyScoreAction.class);
	@Resource
	private ExamStrategyDao examStrategyDao;
	private int score;
	private int strategyId;
	private ExamStrategy updatedStrategy;
	
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}

	public int getStrategyId() {
		return strategyId;
	}

	public void setStrategyId(int strategyId) {
		this.strategyId = strategyId;
	}
	public ExamStrategy getUpdatedStrategy() {
		return updatedStrategy;
	}
	public void setUpdatedStrategy(ExamStrategy updatedStrategy) {
		this.updatedStrategy = updatedStrategy;
	}
	
	public String updateForChoice(){
		logger.info("更新选择题策略");
		updatedStrategy = examStrategyDao.findById(strategyId);
		updatedStrategy.setChoicePerScore(score);
		examStrategyDao.update(updatedStrategy);
		return SUCCESS;
	}
	
	public String updateForBlank(){
		logger.info("更新填空题策略");
		updatedStrategy = examStrategyDao.findById(strategyId);
		updatedStrategy.setBlankPerScore(score);
		examStrategyDao.update(updatedStrategy);
		return SUCCESS;
	}
	
	public String updateForJudge(){
		logger.info("更新判断题策略");
		updatedStrategy = examStrategyDao.findById(strategyId);
		updatedStrategy.setJudgePerScore(score);
		examStrategyDao.update(updatedStrategy);
		return SUCCESS;
	}

	public String updateForShortAnswer(){
		logger.info("更新简答题策略");
		updatedStrategy = examStrategyDao.findById(strategyId);
		updatedStrategy.setShortAnswerPerScore(score);
		examStrategyDao.update(updatedStrategy);
		return SUCCESS;
	}
}
