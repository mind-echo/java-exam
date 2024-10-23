package cn.lynu.lyq.java_exam.test;

import cn.lynu.lyq.java_exam.dao.BankQuestionDao;
import cn.lynu.lyq.java_exam.entity.BankBlankFillingQuestion;
import cn.lynu.lyq.java_exam.entity.BankChoiceQuestion;
import cn.lynu.lyq.java_exam.entity.BankJudgeQuestion;
import cn.lynu.lyq.java_exam.entity.BankShortAnswerQuestion;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.FileOutputStream;

public class PDFGenerateTest2 {

    private static final Font TITLE_FONT_CN;
    private static final Font CONTENT_FONT_CN;
    private static final Font CONTENT_FONT_EN;

    static {
        try {
            TITLE_FONT_CN = new Font(BaseFont.createFont("msyh.ttc,1", BaseFont.IDENTITY_H, BaseFont.EMBEDDED), 2, Font.BOLD);
            CONTENT_FONT_CN = new Font(BaseFont.createFont("msyh.ttc,1", BaseFont.IDENTITY_H, BaseFont.EMBEDDED), 5, Font.NORMAL);
            CONTENT_FONT_EN = new Font(Font.FontFamily.TIMES_ROMAN, 5, Font.NORMAL);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) throws Exception {
        System.out.println("\u2713");
        System.out.println("\u2717");
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BankQuestionDao bankQuestionDao = (BankQuestionDao) context.getBean("bankQuestionDao");

        Document doc = new Document(PageSize.A4);
        PdfWriter pdfWriter = PdfWriter.getInstance(doc, new FileOutputStream("Problems.pdf"));
        doc.open();
        for (BankChoiceQuestion bankChoiceQuestion : bankQuestionDao.findAllChoice()) {
            addChoiceQuestionAndAnswer(doc, bankChoiceQuestion);
        }

        for (BankJudgeQuestion bq : bankQuestionDao.findAllJudge()) {
            addJudgeQuestionAndAnswer(doc, bq);
        }

        for (BankBlankFillingQuestion bq : bankQuestionDao.findAllBlankFilling()) {
            addBlankFillingQuestionAndAnswer(doc, bq);
        }

        for (BankShortAnswerQuestion bq : bankQuestionDao.findAllShortAnswer()) {
            addShortAnswerQuestionAndAnswer(doc, bq);
        }

        doc.close();
        context.close();
        pdfWriter.close();
    }

    public static void addChoiceQuestionAndAnswer(Document doc, BankChoiceQuestion bq) throws Exception {
        addParagraphForChineseAndEnglish(bq.getId() + "." + bq.getContent(), doc);
        addChunkForChineseAndEnglish(bq.getChoiceA(), doc);
        doc.add(Chunk.NEWLINE);
        addChunkForChineseAndEnglish(bq.getChoiceB(), doc);
        doc.add(Chunk.NEWLINE);
        addChunkForChineseAndEnglish(bq.getChoiceC(), doc);
        doc.add(Chunk.NEWLINE);
        addChunkForChineseAndEnglish(bq.getChoiceD(), doc);
        doc.add(Chunk.NEWLINE);
        addChunkForChineseAndEnglish("答案是：" + bq.getAnswer(), doc);

        doc.add(Chunk.NEWLINE);
        doc.add(Chunk.NEWLINE);

    }


    public static void addJudgeQuestionAndAnswer(Document doc, BankJudgeQuestion bq) throws Exception {

        addParagraphForChineseAndEnglish(bq.getId() + "." + bq.getContent(), doc);
        doc.add(new Chunk("答案是：" + (bq.getAnswer().equals("T") ? "正确" : "错误"), CONTENT_FONT_CN));

        doc.add(Chunk.NEWLINE);
        doc.add(Chunk.NEWLINE);
    }

    public static void addBlankFillingQuestionAndAnswer(Document doc, BankBlankFillingQuestion bq) throws Exception {


        addParagraphForChineseAndEnglish(bq.getId() + "." + bq.getContent(), doc);
        addChunkForChineseAndEnglish("答案是：" + bq.getAnswer(), doc);

        doc.add(Chunk.NEWLINE);
        doc.add(Chunk.NEWLINE);
    }

    public static void addShortAnswerQuestionAndAnswer(Document doc, BankShortAnswerQuestion bq) throws Exception {

        addParagraphForChineseAndEnglish(bq.getId() + "." + bq.getContent(), doc);
        addChunkForChineseAndEnglish("答案是：" + bq.getAnswer(), doc);

        doc.add(Chunk.NEWLINE);
        doc.add(Chunk.NEWLINE);
    }

    public static void addChunkForChineseAndEnglish(String str, Document doc) throws DocumentException {
        StringBuilder sb = new StringBuilder();
        char[] chars = str.toCharArray();
        for (int i = 0; i < chars.length; i++) {
            if (i == 0) {
                sb.append(chars[i]);
            } else {
                if (isChinese(chars[i]) && !isChinese(chars[i - 1])) {
                    doc.add(new Chunk(sb.toString(), CONTENT_FONT_EN));
                    sb = new StringBuilder();
                    sb.append(chars[i]);
                } else if (!isChinese(chars[i]) && isChinese(chars[i - 1])) {
                    doc.add(new Chunk(sb.toString(), CONTENT_FONT_CN));
                    sb = new StringBuilder();
                    sb.append(chars[i]);
                } else {
                    sb.append(chars[i]);
                }
            }

            if (i == chars.length - 1) {
                if (isChinese(chars[i])) {
                    doc.add(new Chunk(sb.toString(), CONTENT_FONT_CN));
                } else {
                    doc.add(new Chunk(sb.toString(), CONTENT_FONT_EN));
                }
            }
        }

    }

    public static void addParagraphForChineseAndEnglish(String str, Document doc) throws DocumentException {
        StringBuilder sb = new StringBuilder();
        Paragraph para = new Paragraph();
        char[] chars = str.toCharArray();
        for (int i = 0; i < chars.length; i++) {
            if (i == 0) {
                sb.append(chars[i]);
            } else {
                if (isChinese(chars[i]) && !isChinese(chars[i - 1])) {
                    para.add(new Chunk(sb.toString(), CONTENT_FONT_EN));
                    sb = new StringBuilder();
                    sb.append(chars[i]);
                } else if (!isChinese(chars[i]) && isChinese(chars[i - 1])) {
                    para.add(new Chunk(sb.toString(), CONTENT_FONT_CN));
                    sb = new StringBuilder();
                    sb.append(chars[i]);
                } else {
                    sb.append(chars[i]);
                }
            }

            if (i == chars.length - 1) {
                if (isChinese(chars[i])) {
                    para.add(new Chunk(sb.toString(), CONTENT_FONT_CN));
                } else {
                    para.add(new Chunk(sb.toString(), CONTENT_FONT_EN));
                }
            }
        }
        para.setLeading(25f);
        doc.add(para);
    }

    private static boolean isChinese(char c) {
        Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
        if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS
                || ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS
                || ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A
                || ub == Character.UnicodeBlock.GENERAL_PUNCTUATION
                || ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION
                || ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {
            return true;
        }
        return false;
    }

}
