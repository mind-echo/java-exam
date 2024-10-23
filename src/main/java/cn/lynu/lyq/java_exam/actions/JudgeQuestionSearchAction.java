package cn.lynu.lyq.java_exam.actions;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

import cn.lynu.lyq.java_exam.dao.BankQuestionDao;
import cn.lynu.lyq.java_exam.entity.BankJudgeQuestion;

@Component("judgeQuestionSearch")
@Scope("prototype")
public class JudgeQuestionSearchAction extends ActionSupport{
	private static final long serialVersionUID = -1106576639902301220L;
	private final static Logger logger = LoggerFactory.getLogger(JudgeQuestionSearchAction.class);
	
	private String contentSearch;
	private String answerSearch;
	private String knowledgeSearch;
	private List<BankJudgeQuestion> questionList;
	private int totalPage;
	private int pageIndex;
	private static final int PAGE_SIZE = 10;
	public int deleteId;

	@Resource
	private BankQuestionDao bankQuestionDao;
	
	public String getContentSearch() {
		return contentSearch;
	}
	public void setContentSearch(String contentSearch) {
		this.contentSearch = contentSearch;
	}
	public String getAnswerSearch() {
		return answerSearch;
	}
	public void setAnswerSearch(String answerSearch) {
		this.answerSearch = answerSearch;
	}
	public String getKnowledgeSearch() {
		return knowledgeSearch;
	}
	public void setKnowledgeSearch(String knowledgeSearch) {
		this.knowledgeSearch = knowledgeSearch;
	}
	public List<BankJudgeQuestion> getQuestionList() {
		return questionList;
	}
	public void setQuestionList(List<BankJudgeQuestion> questionList) {
		this.questionList = questionList;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPageIndex() {
		return pageIndex;
	}

	public int getDeleteId() {
		return deleteId;
	}

	public void setDeleteId(int deleteId) {
		this.deleteId = deleteId;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	@Override
	public String execute() throws Exception {//初始结果
//		questionList = bankQuestionDao.findAllJudge();
		int totalCnt = bankQuestionDao.countAllJudge();
		totalPage = (totalCnt%PAGE_SIZE > 0)?(totalCnt/PAGE_SIZE+1):(totalCnt/PAGE_SIZE);
		questionList = bankQuestionDao.findAllJudgeWithPage(pageIndex,PAGE_SIZE);
		return SUCCESS;
	}
	
	public String executeForSearch(){//搜索后结果
		logger.debug("contentSearch="+contentSearch);
		logger.debug("answerSearch="+answerSearch);
		logger.debug("knowledgeSearch="+knowledgeSearch);
		questionList = bankQuestionDao.findJudgeForSearch(contentSearch,answerSearch,knowledgeSearch);
		return SUCCESS;
	}

	public String deleteQuestion(){
		bankQuestionDao.delete(bankQuestionDao.findJudgeById(deleteId));
		return SUCCESS;
	}
}
