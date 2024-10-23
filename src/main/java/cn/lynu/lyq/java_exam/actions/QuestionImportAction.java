package cn.lynu.lyq.java_exam.actions;

import java.io.File;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

import cn.lynu.lyq.java_exam.dao.BankQuestionDao;
@Component("questionImport")
@Scope("prototype")
public class QuestionImportAction extends ActionSupport {
	private static final long serialVersionUID = -3795645550612592706L;
	private final static Logger logger = LoggerFactory.getLogger(QuestionImportAction.class);
	
	private File choiceImportFile;
	private String choiceImportFileFileName;//文件名
	private String choiceImportFileContentType;//文件类型
	private String choiceFilePath;
	
	private File blankImportFile;
	private String blankImportFileFileName;//文件名
	private String blankImportFileContentType;//文件类型
	private String blankFilePath;
	
	private File judgeImportFile;
	private String judgeImportFileFileName;//文件名
	private String judgeImportFileContentType;//文件类型
	private String judgeFilePath;

	private File shortAnswerImportFile;
	private String shortAnswerImportFileFileName;//文件名
	private String shortAnswerImportFileContentType;//文件类型
	private String shortAnswerFilePath;

	@Resource
	private BankQuestionDao bankQuestionDao;
	
	public File getChoiceImportFile() {
		return choiceImportFile;
	}
	public void setChoiceImportFile(File choiceImportFile) {
		this.choiceImportFile = choiceImportFile;
	}
	public String getChoiceImportFileFileName() {
		return choiceImportFileFileName;
	}
	public void setChoiceImportFileFileName(String choiceImportFileFileName) {
		this.choiceImportFileFileName = choiceImportFileFileName;
	}
	public String getChoiceImportFileContentType() {
		return choiceImportFileContentType;
	}
	public void setChoiceImportFileContentType(String choiceImportFileContentType) {
		this.choiceImportFileContentType = choiceImportFileContentType;
	}
	public String getChoiceFilePath() {
		return choiceFilePath;
	}
	public void setChoiceFilePath(String choiceFilePath) {
		this.choiceFilePath = choiceFilePath;
	}
	public File getBlankImportFile() {
		return blankImportFile;
	}
	public void setBlankImportFile(File blankImportFile) {
		this.blankImportFile = blankImportFile;
	}
	public String getBlankImportFileFileName() {
		return blankImportFileFileName;
	}
	public void setBlankImportFileFileName(String blankImportFileFileName) {
		this.blankImportFileFileName = blankImportFileFileName;
	}
	public String getBlankImportFileContentType() {
		return blankImportFileContentType;
	}
	public void setBlankImportFileContentType(String blankImportFileContentType) {
		this.blankImportFileContentType = blankImportFileContentType;
	}
	public String getBlankFilePath() {
		return blankFilePath;
	}
	public void setBlankFilePath(String blankFilePath) {
		this.blankFilePath = blankFilePath;
	}
	public File getJudgeImportFile() {
		return judgeImportFile;
	}
	public void setJudgeImportFile(File judgeImportFile) {
		this.judgeImportFile = judgeImportFile;
	}
	public String getJudgeImportFileFileName() {
		return judgeImportFileFileName;
	}
	public void setJudgeImportFileFileName(String judgeImportFileFileName) {
		this.judgeImportFileFileName = judgeImportFileFileName;
	}
	public String getJudgeImportFileContentType() {
		return judgeImportFileContentType;
	}
	public void setJudgeImportFileContentType(String judgeImportFileContentType) {
		this.judgeImportFileContentType = judgeImportFileContentType;
	}
	public String getJudgeFilePath() {
		return judgeFilePath;
	}
	public void setJudgeFilePath(String judgeFilePath) {
		this.judgeFilePath = judgeFilePath;
	}

	public File getShortAnswerImportFile() {
		return shortAnswerImportFile;
	}

	public void setShortAnswerImportFile(File shortAnswerImportFile) {
		this.shortAnswerImportFile = shortAnswerImportFile;
	}

	public String getShortAnswerImportFileFileName() {
		return shortAnswerImportFileFileName;
	}

	public void setShortAnswerImportFileFileName(String shortAnswerImportFileFileName) {
		this.shortAnswerImportFileFileName = shortAnswerImportFileFileName;
	}

	public String getShortAnswerImportFileContentType() {
		return shortAnswerImportFileContentType;
	}

	public void setShortAnswerImportFileContentType(String shortAnswerImportFileContentType) {
		this.shortAnswerImportFileContentType = shortAnswerImportFileContentType;
	}

	public String getShortAnswerFilePath() {
		return shortAnswerFilePath;
	}

	public void setShortAnswerFilePath(String shortAnswerFilePath) {
		this.shortAnswerFilePath = shortAnswerFilePath;
	}

	@Override
	public String execute() throws Exception {  //只针对选择题
		logger.info("导入选择题");
		int cnt = bankQuestionDao.importChoiceFromTxt(choiceImportFile);
		logger.debug("choiceImportFile="+choiceImportFile);
		logger.debug("choiceFilePath="+choiceFilePath);
		this.addActionMessage(cnt+"道选择题已经导入题库");
		return SUCCESS;
	}
	
	public String executeForBlank() throws Exception {
		logger.info("导入填空题");
		int cnt = bankQuestionDao.importBlankFromTxt(blankImportFile);
		logger.debug("blankImportFile="+blankImportFile);
		logger.debug("blankFilePath="+blankFilePath);
		this.addActionMessage(cnt+"道填空题已经导入题库");
		return SUCCESS;
	}
	
	public String executeForJudge() throws Exception {
		logger.info("导入判断题");
		int cnt = bankQuestionDao.importJudgeFromTxt(judgeImportFile);
		logger.debug("judgeImportFile="+judgeImportFile);
		logger.debug("judgeFilePath="+judgeFilePath);
		this.addActionMessage(cnt+"道判断题已经导入题库");
		return SUCCESS;
	}

	public String executeForShortAnswer() throws Exception {
		logger.info("导入简答题");
		int cnt = bankQuestionDao.importShortAnswerFromTxt(shortAnswerImportFile);
		logger.debug("shortAnswerImportFile="+shortAnswerImportFile);
		logger.debug("shortAnswerFilePath="+shortAnswerFilePath);
		this.addActionMessage(cnt+"道简答题已经导入题库");
		return SUCCESS;
	}
	
	
}
