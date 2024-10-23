package cn.lynu.lyq.java_exam.actions;

import cn.lynu.lyq.java_exam.dao.BankQuestionDao;
import cn.lynu.lyq.java_exam.entity.BankBlankFillingQuestion;
import cn.lynu.lyq.java_exam.entity.BankShortAnswerQuestion;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component("shortAnswerDetail")
@Scope("prototype")
public class ShortAnswerDetailAction extends ActionSupport {
	
	private static final long serialVersionUID = -3038382114712565555L;
	private final static Logger logger = LoggerFactory.getLogger(ShortAnswerDetailAction.class);
	
	private BankShortAnswerQuestion question;
	@Resource 
	private BankQuestionDao bankQuestionDao;
	
	public BankShortAnswerQuestion getQuestion() {
		return question;
	}
	public void setQuestion(BankShortAnswerQuestion question) {
		this.question = question;
	}

	@Override
	public String execute() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		String qid = ctx.getParameters().get("qid").getValue();
		logger.info("根据id查找填空题详细信息");
		question = bankQuestionDao.findShortAnswerById(Integer.parseInt(qid.trim()));
		
		return SUCCESS;
	}
	
}
