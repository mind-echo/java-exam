package cn.lynu.lyq.java_exam.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.dispatcher.HttpParameters;
import org.apache.struts2.dispatcher.Parameter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.lynu.lyq.java_exam.common.QuestionType;
@Component("examSummary")
@Scope("prototype")
public class ExamSummaryAction extends ActionSupport {
	private static final long serialVersionUID = 4348538623304933327L;
	private final static Logger logger = LoggerFactory.getLogger(ExamSummaryAction.class);
	
	private Map<QuestionType,List<Object>> submittedAnswerMap = new HashMap<>();
	
	private Map<QuestionType,Integer> submittedCntMap = new HashMap<>();
	
	public Map<QuestionType, List<Object>> getSubmittedAnswerMap() {
		return submittedAnswerMap;
	}

	public void setSubmittedAnswerMap(Map<QuestionType, List<Object>> submittedAnswerMap) {
		this.submittedAnswerMap = submittedAnswerMap;
	}

	public Map<QuestionType, Integer> getSubmittedCntMap() {
		return submittedCntMap;
	}

	public void setSubmittedCntMap(Map<QuestionType, Integer> submittedCntMap) {
		this.submittedCntMap = submittedCntMap;
	}

	@Override
	public String execute(){
		ActionContext ctx=ActionContext.getContext();
		logger.info("统计已答问题个数");
		Map<String,Object> session =ctx.getSession();
		@SuppressWarnings("unchecked")
		Map<QuestionType,List<Object>> answerMap = (Map<QuestionType,List<Object>>)session.get("EXAM_ANSWER");
//		submittedAnswerMap=answerMap;//test only
		HttpParameters params =ctx.getParameters();
		
		//选择题
		List<Object> choiceAnswerList = answerMap.get(QuestionType.CHOICE);
		List<Object> choiceSubmmitedList = new ArrayList<>();
		int submittedChoiceCnt=0;
		for(int i=0; choiceAnswerList!=null && i<choiceAnswerList.size(); i++){
			Parameter p = params.get("choice_q"+(i+1));
			String value = null;
			if( ExamDetailShowAction2.isMultipleChoice1( (String)(choiceAnswerList.get(i)) ) ){
				String[] values=p.getMultipleValues();
				value = joinString(values,",");
			}else{
				value=p.getValue();
			}
			if(p.isDefined()==false || value.trim().equals("")){
				choiceSubmmitedList.add(null);
			}else{
				choiceSubmmitedList.add(value);
				submittedChoiceCnt++;
			}
		}
		submittedAnswerMap.put(QuestionType.CHOICE, choiceSubmmitedList);
		submittedCntMap.put(QuestionType.CHOICE, submittedChoiceCnt);
		
		//填空题
		List<Object> blankAnswerList = answerMap.get(QuestionType.BLANK_FILLING);
		List<Object> blankSubmmitedList = new ArrayList<>();
		int submittedBlankCnt=0;
		for(int i=0; blankAnswerList!=null && i<blankAnswerList.size(); i++){
			@SuppressWarnings("unchecked")
			List<String> answerListForCurrentQ = (List<String>)blankAnswerList.get(i);
			List<String> answerSubmittedListForCurrentQ = new ArrayList<>();
			for(int j=0; j<answerListForCurrentQ.size(); j++){
				Parameter p = params.get("q"+(i+1)+"_blank"+(j+1));
				String value=p.getValue();
				if(value.trim().equals("")){
					answerSubmittedListForCurrentQ.add(null);
				}else{
					answerSubmittedListForCurrentQ.add(value);
					submittedBlankCnt++;
				}
			}
			blankSubmmitedList.add(answerSubmittedListForCurrentQ);
		}
		submittedAnswerMap.put(QuestionType.BLANK_FILLING, blankSubmmitedList);
		submittedCntMap.put(QuestionType.BLANK_FILLING, submittedBlankCnt);
		
		//判断题
		List<Object> judgeAnswerList = answerMap.get(QuestionType.JUDGE);
		List<Object> judgeSubmmitedList = new ArrayList<>();
		int submittedJudgeCnt=0;
		for(int i=0; judgeAnswerList!=null && i<judgeAnswerList.size(); i++){
			Parameter p = params.get("judge_q"+(i+1));
			String value=p.getValue();
			logger.info(p.getName()+":"+value);
			if(p.isDefined()==false || value.trim().equals("")){
				judgeSubmmitedList.add(null);
			}else{
				judgeSubmmitedList.add(value);
				submittedJudgeCnt++;
			}
		}
		submittedAnswerMap.put(QuestionType.JUDGE, judgeSubmmitedList);
		submittedCntMap.put(QuestionType.JUDGE, submittedJudgeCnt);

		//判断题
		List<Object> shortAnswerAnswerList = answerMap.get(QuestionType.SHORT_ANSWER);
		List<Object> shortAnswerSubmmitedList = new ArrayList<>();
		int submittedshortAnswerCnt=0;
		for(int i=0; shortAnswerAnswerList!=null && i<shortAnswerAnswerList.size(); i++){
			Parameter p = params.get("short_answer_q"+(i+1));
			String value=p.getValue();
			logger.info(p.getName()+":"+value);
			if(p.isDefined()==false || value.trim().equals("")){
				shortAnswerSubmmitedList.add(null);
			}else{
				shortAnswerSubmmitedList.add(value);
				submittedshortAnswerCnt++;
			}
		}
		submittedAnswerMap.put(QuestionType.SHORT_ANSWER, shortAnswerSubmmitedList);
		submittedCntMap.put(QuestionType.SHORT_ANSWER, submittedshortAnswerCnt);

		ctx.getSession().put("EXAM_SUBMITTED_ANSWER",submittedAnswerMap);
		return SUCCESS;
	}
	
	/*
	 * 将字符串数组用delimiter连接起来形成一个字符串
	 */
	private String joinString(String[] strArray, String delimiter){
		StringBuffer sb = new StringBuffer();
		for(int i = 0; i < strArray.length; i++){
			sb.append(strArray[i]);
			if(strArray.length>1 && i!=strArray.length-1 ) sb.append(delimiter);
		}
		return sb.toString();
	}

}
