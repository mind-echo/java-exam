package cn.lynu.lyq.java_exam.actions;

import cn.lynu.lyq.java_exam.dao.BankQuestionDao;
import cn.lynu.lyq.java_exam.entity.BankShortAnswerQuestion;
import com.opensymphony.xwork2.ActionSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component("shortAnswerQuestionSearch")
@Scope("prototype")
public class ShortAnswerQuestionSearchAction extends ActionSupport {
    private static final long serialVersionUID = -1106576639902301220L;
    private final static Logger logger = LoggerFactory.getLogger(ShortAnswerQuestionSearchAction.class);
    private String contentSearch;
    private String answerSearch;
    private String knowledgeSearch;
    private List<BankShortAnswerQuestion> questionList;
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

    public List<BankShortAnswerQuestion> getQuestionList() {
        return questionList;
    }

    public void setQuestionList(List<BankShortAnswerQuestion> questionList) {
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

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(int deleteId) {
        this.deleteId = deleteId;
    }

    @Override
    public String execute() throws Exception {//初始结果
        int totalCnt = bankQuestionDao.countAllShortAnswer();
        totalPage = (totalCnt % PAGE_SIZE > 0) ? (totalCnt / PAGE_SIZE + 1) : (totalCnt / PAGE_SIZE);
        questionList = bankQuestionDao.findAllShortAnswerWithPage(pageIndex, PAGE_SIZE);
        return SUCCESS;
    }

    public String executeForSearch() {//搜索后结果
        logger.info("contentSearch=" + contentSearch);
        logger.info("answerSearch=" + answerSearch);
        logger.info("knowledgeSearch=" + knowledgeSearch);
        questionList = bankQuestionDao.findShortAnswerForSearch(contentSearch, answerSearch, knowledgeSearch);
        return SUCCESS;
    }

    public String deleteQuestion() {
        logger.info("delete ShortAnswer: {}", deleteId);
        bankQuestionDao.delete(bankQuestionDao.findShortAnswerById(deleteId));
        return SUCCESS;
    }
}
