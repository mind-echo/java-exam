create schema java_exam;

SET FOREIGN_KEY_CHECKS=1;
use java_exam;
create table bankblankfillingquestion
(
    id             int auto_increment
        primary key,
    answer         varchar(255) null,
    content        varchar(255) null,
    contributor    varchar(255) null,
    createDate     datetime     null,
    description    varchar(255) null,
    memo           varchar(255) null,
    name           varchar(255) null,
    picLocation    varchar(255) null,
    answer2        varchar(255) null,
    answer3        varchar(255) null,
    answer4        varchar(255) null,
    answer5        varchar(255) null,
    answer6        varchar(255) null,
    answer7        varchar(255) null,
    answer8        varchar(255) null,
    knowledgePoint varchar(255) null,
    composeFlag    int          not null
)
    charset = utf8;

INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (1, 'Java EE', 'Java的三大平台分别是Java SE、_________________和Java ME。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (2, 'JDK', 'Java程序开发前需下载安装Java应用程序开发包，其英文缩写是__________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (3, 'CMD', '在Windows下打开命令行界面的方法是搜索输入命令_________________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (4, 'bin', 'JDK安装完成后，javac和java这些编译和运行工具存放在JDK安装目录
的_____________子目录中。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (5, 'Path', 'JDK安装完成后，在操作系统上还需要配置_______________环境变量，
该环境变量用于存储Java的编译和运行工具所在的路径。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (6, '注释', 'Java中的________________用于为程序增加一些说明性文字，增加程序的可读性，
本身不会被执行。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (7, '//', 'Java中单行注释是在注释前书写______________符号。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (8, '文档注释', 'Java中有三种注释，分别是单行注释、多行注释和_________________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (9, 'main()', 'Java程序从________________方法开始执行。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (10, '强类型', 'Java是一种___________________编程语言，它要求所有变量都具有一个类型。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (11, '引用数据类型', 'Java数据类型分为两大类，分别是基本数据类型和____________________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (12, '4', 'Java中的int类型占用______________个字节。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (13, '0', 'Java中的整型数的字面值在表示八进制时，需添加前缀________________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (14, '0x', 'Java中都整型数的字面值在表示十六进制时，需添加前缀_______________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (15, 'L', 'Java中在整数后面添加后缀字母______________表示long型整数。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (16, 'double', 'Java的基本数据类型中，float和____________________类型用于保存浮点数。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (17, 'f', 'float类型的字面值在书写时浮点数时，还需要在最后添加后缀字母_____________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (18, 'char', 'Java的基本类型中，_______________类型表示字符型。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (19, '=', 'Java中的赋值运算符是______________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (20, 'true', 'Java的boolean类型只有_______________和false两个取值。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (21, '循环', '依据结构化程序设计理论，所有程序都可以用三种基本控制结构构成，
它们分别是顺序、选择和________________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (22, 'if-else', 'Java中的_________________语句用于在条件为true时执行一些语句，
而条件为false时执行另一些语句。。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (23, '分号', 'Java中的for语句中小括号里有3部分，它们之间用______________分隔。
（用汉字回答）', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (24, 'switch', 'Java中的________________语句用于根据一个整型数或表达式的值，
从多路分支中选择其中一路执行。。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (25, 'do-while', '在Java的三种循环语句for循环、while循环、do-while循环中，
______________循环会在执行循环体之后判断测试条件，因此至少会执行一遍循环体。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (26, 'continue', 'Java语言在执行循环的过程中，遇到________________语句，
会跳过循环体中剩下的语句，继续进行下一次循环。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (27, 'void', '在Java的方法声明中，________________关键字表示该方法没有返回值。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (28, '引用', 'Java的数组属于___________________数据类型。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (29, 'length', 'Java中取得数组的长度，可以使用用数组变量的_______________属性。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankblankfillingquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, answer2, answer3, answer4, answer5, answer6, answer7, answer8, knowledgePoint, composeFlag) VALUES (30, '从0到9', 'Java中包含10个元素的数组，其下标的范围是___________________。', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Java语言基础', 1);

create table bankchoicequestion
(
    id             int auto_increment
        primary key,
    answer         varchar(255) null,
    content        varchar(255) null,
    contributor    varchar(255) null,
    createDate     datetime     null,
    description    varchar(255) null,
    memo           varchar(255) null,
    name           varchar(255) null,
    picLocation    varchar(255) null,
    choiceA        varchar(255) null,
    choiceB        varchar(255) null,
    choiceC        varchar(255) null,
    choiceD        varchar(255) null,
    choiceE        varchar(255) null,
    choiceF        varchar(255) null,
    choiceG        varchar(255) null,
    choiceH        varchar(255) null,
    knowledgePoint varchar(255) null,
    composeFlag    int          not null
)
    charset = utf8;

INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (1, 'B', '如果JDK的安装路径是"d:\\jdk"，若想在命令行窗口中任何路径下，都可以直接使用javac和java命令，
需要将环境变量Path设置为以下哪个选项：（     ）', null, null, null, null, null, null, 'A. d:\\jdk', 'B. d:\\jdk\\bin', 'C. d:\\jre\\bin', 'D. d:\\jre', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (2, 'D', '下面以哪种类型的文件可以直接在Java虚拟机中运行：（     ）。', null, null, null, null, null, null, 'A．.java', 'B．.jre', 'C．.exe', 'D．.class', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (3, 'C', '下面哪个是合法的Java标识符：（      ）', null, null, null, null, null, null, 'A．void', 'B．12class', 'C．_blank', 'D．95', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (4, 'B', 'Java中类的定义必须包含在一下哪种符号之间？（      ）', null, null, null, null, null, null, 'A. 方括号[ ]', 'B. 花括号{ }', 'C. 双引号" "', 'D. 圆括号( )', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (5, 'A', 'Java的运算符中用于执行除法运算的是哪个？（      ）', null, null, null, null, null, null, 'A. /', 'B. \\', 'C. %', 'D. *', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (6, 'D', '以下哪个关键字不是用于循环语句的？（      ）', null, null, null, null, null, null, 'A. for', 'B. do...while', 'C. while', 'D. switch', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (7, 'A', '以下哪种写法可以实现访问数组array的最开始的第一个元素？（      ）', null, null, null, null, null, null, 'A. array[0]', 'B. array(0)', 'C. array[1]', 'D. array(1)', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (8, 'B', '如下哪个选项可以正确地创建一个长度为3的二维数组？（      ）', null, null, null, null, null, null, 'A. new int[2][3]', 'B. new int[3][ ]', 'C. new int[ ][3]', 'D. 以上都不对', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (10, 'B', '下列选项中，哪个不属于Java语言的基本数据类型？（      ）', null, null, null, null, null, null, 'A. 整型', 'B. 数组', 'C. 字符型', 'D. 浮点型', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (11, 'B', '有关方法重载，以下说法正确的是：（      ）', null, null, null, null, null, null, 'A. 重载的方法，其方法名可以不一致', 'B. 重载的方法参数的个数或类型必须不一致', 'C. 重载的方法，其返回值类型必须不同', 'D. 重载的方法，其参数个数必须一致', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (12, 'A', '下列关于Java语言简单数据类型的说法中，正确的一项是：（      ）', null, null, null, null, null, null, 'A. 以0开头的整数数值代表8进制整型数', 'B. 以0x或0X开头的整数代表8进制整型常量', 'C. char型的值可以包含一个或多个字符', 'D. double类型的数据占计算机存储的32位', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (13, 'B', '下列语句中编译错误的一个是：（      ）', null, null, null, null, null, null, 'A. float f = 1.1f;', 'B. byte b = 128;', 'C. double d = 1.1/0.0;', 'D. char c = (char)1.1f;', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (14, 'B', '表达式(12==0) && (1/0 < 1)的值为：（      ）', null, null, null, null, null, null, 'A. true', 'B. false', 'C. 0', 'D. 运行时抛出异常', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (15, 'C', '表达式10^2的值为：（      ）', null, null, null, null, null, null, 'A. 100', 'B. 12', 'C. 8', 'D. 10', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (16, 'B', '假设i=10, j=20, k=30，则表达式 !(i<j+k) || !(i+10<=j) 的值为：（      ）', null, null, null, null, null, null, 'A. true', 'B. false', 'C. 表达式错误', 'D. 以上都不对', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (21, 'B', '如果JDK的安装路径是"d:\\jdk"，若想在命令行窗口中任何路径下，都可以直接使用javac和java命令，
需要将环境变量Path设置为以下哪个选项：（     ）', null, null, null, null, null, null, 'A. d:\\jdk', 'B. d:\\jdk\\bin', 'C. d:\\jre\\bin', 'D. d:\\jre', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (22, 'D', '下面以哪种类型的文件可以直接在Java虚拟机中运行：（     ）。', null, null, null, null, null, null, 'A．.java', 'B．.jre', 'C．.exe', 'D．.class', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (23, 'C', '下面哪个是合法的Java标识符：（      ）', null, null, null, null, null, null, 'A．void', 'B．12class', 'C．_blank', 'D．95', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (24, 'B', 'Java中类的定义必须包含在一下哪种符号之间？（      ）', null, null, null, null, null, null, 'A. 方括号[ ]', 'B. 花括号{ }', 'C. 双引号" "', 'D. 圆括号( )', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (25, 'A', 'Java的运算符中用于执行除法运算的是哪个？（      ）', null, null, null, null, null, null, 'A. /', 'B. \\', 'C. %', 'D. *', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (26, 'D', '以下哪个关键字不是用于循环语句的？（      ）', null, null, null, null, null, null, 'A. for', 'B. do...while', 'C. while', 'D. switch', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (27, 'A', '以下哪种写法可以实现访问数组array的最开始的第一个元素？（      ）', null, null, null, null, null, null, 'A. array[0]', 'B. array(0)', 'C. array[1]', 'D. array(1)', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (28, 'B', '如下哪个选项可以正确地创建一个长度为3的二维数组？（      ）', null, null, null, null, null, null, 'A. new int[2][3]', 'B. new int[3][ ]', 'C. new int[ ][3]', 'D. 以上都不对', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (30, 'B', '下列选项中，哪个不属于Java语言的基本数据类型？（      ）', null, null, null, null, null, null, 'A. 整型', 'B. 数组', 'C. 字符型', 'D. 浮点型', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (31, 'B', '有关方法重载，以下说法正确的是：（      ）', null, null, null, null, null, null, 'A. 重载的方法，其方法名可以不一致', 'B. 重载的方法参数的个数或类型必须不一致', 'C. 重载的方法，其返回值类型必须不同', 'D. 重载的方法，其参数个数必须一致', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (32, 'A', '下列关于Java语言简单数据类型的说法中，正确的一项是：（      ）', null, null, null, null, null, null, 'A. 以0开头的整数数值代表8进制整型数', 'B. 以0x或0X开头的整数代表8进制整型常量', 'C. char型的值可以包含一个或多个字符', 'D. double类型的数据占计算机存储的32位', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (33, 'B', '下列语句中编译错误的一个是：（      ）', null, null, null, null, null, null, 'A. float f = 1.1f;', 'B. byte b = 128;', 'C. double d = 1.1/0.0;', 'D. char c = (char)1.1f;', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (34, 'B', '表达式(12==0) && (1/0 < 1)的值为：（      ）', null, null, null, null, null, null, 'A. true', 'B. false', 'C. 0', 'D. 运行时抛出异常', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (35, 'C', '表达式10^2的值为：（      ）', null, null, null, null, null, null, 'A. 100', 'B. 12', 'C. 8', 'D. 10', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (36, 'B', '假设i=10, j=20, k=30，则表达式 !(i<j+k) || !(i+10<=j) 的值为：（      ）', null, null, null, null, null, null, 'A. true', 'B. false', 'C. 表达式错误', 'D. 以上都不对', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (41, 'D', '表达式2>3?4:5的值为：（      ）', null, null, null, null, null, null, 'A. 2', 'B. 3', 'C. 4', 'D. 5', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (42, 'C', '如下哪个是不合法的Java标识符：（      ）', null, null, null, null, null, null, 'A. _username', 'B. $username', 'C. 9username', 'D. username9', null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (43, 'C', '如下哪个是不合法的Java标识符：（      ）', null, null, null, null, null, null, 'A. _username', 'B. $username', 'C. 9username', 'D. username9', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (44, 'C', '下面哪一个是合法的数组声明和构造语句：（      ）', null, null, null, null, null, null, 'A. int[] ages = [100];', 'B. int ages = new int[100];', 'C. int[] ages = new int[100];', 'D. int() ages = new int(100);', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (45, 'A', '下列运算符中合法的是：（      ）', null, null, null, null, null, null, 'A. &&', 'B. <>', 'C. if', 'D. :=', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (46, 'D', 'Java Application中的主类需包含main方法，main方法的返回值类型是什么？（      ）', null, null, null, null, null, null, 'A. int', 'B. String', 'C. double', 'D. void', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (47, 'B', '下面哪个方法是public void aMethod(){...}的重载方法？（      ）', null, null, null, null, null, null, 'A. void aMethod(){...}', 'B. public int aMethod(int m){...}', 'C. public void aMethod() {...}', 'D. public int aMethod() {...}', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (48, 'B', '下面变量声明和赋值语句会出现编译错误的是：（      ）', null, null, null, null, null, null, 'A. int i=10;', 'B. float f=1.3;', 'C. double d=3.5;', 'D. long m=3;', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (49, 'D', '下面不是Java关键字的是：（      ）', null, null, null, null, null, null, 'A. while;', 'B. if;', 'C. break;', 'D. True;', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (50, 'A', '下列命令中，哪个命令是Java的编译命令：（      ）', null, null, null, null, null, null, 'A. javac', 'B. java', 'C. javadoc', 'D. appletviewer', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (51, 'C', 'Java属于以下那种语言：（      ）', null, null, null, null, null, null, 'A. 机器语言', 'B. 汇编语言', 'C. 高级语言', 'D. 以上都不对', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (52, 'D', '下列整数表达式中，哪个是非法的？（      ）', null, null, null, null, null, null, 'A. 030', 'B. 24', 'C. 0X18', 'D. ABC', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (53, 'B', 'for循环语句中，小括号里规定了几个表达式？（      ）', null, null, null, null, null, null, 'A. 4', 'B. 3', 'C. 2', 'D. 1', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (54, 'A', '如下哪个语句能够终止循环？（      ）', null, null, null, null, null, null, 'A. break语句', 'B. continue语句', 'C. switch语句', 'D. if语句', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (57, 'B', '如下哪个Java关键字表示方法没有返回值：（      ）', null, null, null, null, null, null, 'A. null', 'B. void', 'C. none', 'D. return', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (58, 'B', '以下有关数组的说法，正确的是：（      ）', null, null, null, null, null, null, 'A. 同一数组中可以保存不同数据类型的值', 'B. 数组的下标（索引）是从0开始的', 'C. 数组的下标可以用浮点数表示', 'D. 数组中元素的个数，等于数组变量的length属性值减去1', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (59, 'D', '以下哪个不是Java中注释的类型：（      ）', null, null, null, null, null, null, 'A. 单行注释', 'B. 多行注释', 'C. 文档注释', 'D. 提示注释', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (61, 'D', '下列数组初始化程序，正确的是：（      ）', null, null, null, null, null, null, 'A. int score[5] = {90, 12, 34, 77, 56};', 'B. int[5] score = new int[];', 'C. int[] score = new int[5]{90, 12, 34, 77, 56};', 'D. int[] score = new int[]{90, 12, 34, 77, 56};', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (62, 'A', '以下哪个表达式不可以作为循环条件：（      ）', null, null, null, null, null, null, 'A. i=5', 'B. i<3', 'C. count==i', 'D. i>=6', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (66, 'B', '假设有一个 Java 源程序文件，它只定义了一个具有 public 属性的类 Hello，那么编译该文件的命令是：（      ）', null, null, null, null, null, null, 'A. javac Hello', 'B. javac Hello.java', 'C. java Hello', 'D. java Hello.class', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (67, 'A', 'Java语言的基本数据类型中，属于整型的是：（      ）', null, null, null, null, null, null, 'A. byte, short, int, long', 'B. byte, short, char, int', 'C. byte, int, char, long', 'D. float, double, byte, int', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (69, 'B', 'Eclipse中用于格式化代码的快捷键是：（      ）', null, null, null, null, null, null, 'A. Ctrl+Alt+F', 'B. Ctrl+Shift+F', 'C. Ctrl+Alt+O', 'D. Ctrl+Shift+O', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (70, 'B', '下列哪个选项不属于Java语言的基本数据类型：（      ）', null, null, null, null, null, null, 'A. 整型', 'B. 数组', 'C. 浮点型', 'D. 字符型', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (71, 'C', '如下哪个不是面向对象的特性之一：（     ）', null, null, null, null, null, null, 'A. 继承', 'B. 多态', 'C. 逻辑', 'D. 封装', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (72, 'B', '下面类与对象的关系的说法，错误的是：（     ）。', null, null, null, null, null, null, 'A．对象是类的一个实例', 'B．一个类只能有一个对象', 'C．任何一个对象只能属于一个具体的类', 'D．类与对象的关系和数据类型与变量的关系相似', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (73, 'C', '下列关于Java构造方法的叙述中，错误的是：（      ）', null, null, null, null, null, null, 'A．构造方法名与类名必须相同', 'B．构造方法没有返回值，但不用void声明', 'C．构造方法不可以重载', 'D．构造方法只能通过new自动调用', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (74, 'D', 'Java中关键字this的作用中，不包括哪个（      ）', null, null, null, null, null, null, 'A. 访问成员变量', 'B. 调用成员方法', 'C. 在构造方法中调用其他构造方法', 'D. 在成员方法中调用构造方法', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (79, 'B', '在以下什么情况下，构造方法会被调用？（      ）', null, null, null, null, null, null, 'A. 类定义时', 'B. 创建对象时', 'C. 调用对象方法时', 'D. 使用对象的变量时', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (80, 'D', '使用this调用类的构造方法，下面说法错误的是（      ）', null, null, null, null, null, null, 'A. 使用this调用构造方法的格式为this([参数1,参数2,...])', 'B. 只能在构造方法中使用this调用其他的构造方法', 'C. 使用this调用其他构造方法的语句必须放在第一行', 'D. 可以在一个类的两个构造方法中使用this互相调用', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (81, 'B', 'Java语言中，static关键字不能用于修饰：（     ）', null, null, null, null, null, null, 'A. 成员变量', 'B. 局部变量', 'C. 成员方法', 'D. 代码块', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (84, 'D', '下列有关静态成员的描述中，错误的是：（      ）', null, null, null, null, null, null, 'A. 静态成员有静态变量和静态方法两种', 'B. 静态成员的修饰符是static', 'C. 静态成员可以使用类名来访问，也可以使用对象名来访问', 'D. 静态方法可以访问静态成员变量，也可以访问非静态成员变量', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (89, 'B', '以下关于单例模式的描述中，正确的是（      ）', null, null, null, null, null, null, 'A. 它描述了只有一个方法的类的集合', 'B. 它能够保证一个类只产生一个唯一的实例', 'C. 它描述了只有一个属性的类的集合', 'D. 它能够保证一个类的方法只能被一个唯一的类调用', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (90, 'D', '有关Java语言的垃圾回收，以下说法错误的是（      ）', null, null, null, null, null, null, 'A. 对象在被垃圾回收时，其finalize()方法会被自动调用', 'B. Java虚拟机会进行自动垃圾回收', 'C. 调用System.gc()方法会通知Java虚拟机进行垃圾回收', 'D. 程序中必须调用finalize()方法才能实现垃圾回收', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (91, 'C', '有关Java中类的构造方法，以下说法正确的是：（     ）', null, null, null, null, null, null, 'A. 所有类都必须为其编写至少一个构造方法', 'B. 构造方法必须有返回值', 'C. 构造方法可以访问类的非静态成员', 'D. 构造方法必须初始化类的所有成员变量', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (92, 'C', '如下哪个类提供，在日期时间相关类和指定格式的字符串之间相互转换的功能。（     ）。', null, null, null, null, null, null, 'A．java.util.Date', 'B．java.sql.Date', 'C．java.text.SimpleDateFormat', 'D．java.util.Calendar', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (109, 'A', 'Java的final关键字不能用于：（      ）', null, null, null, null, null, null, 'A. 修饰父类方法', 'B. 修饰子类方法', 'C. 修饰成员变量', 'D. 修饰局部变量', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (110, 'C', '有关Java的中的继承，以下说法错误的是（      ）', null, null, null, null, null, null, 'A. 一个类只能有一个直接父类', 'B. 多个子类可以有共同的直接父类', 'C. 一个类可以同时继承两个直接父类', 'D. 一个类可以有子类，子类也可以有自己的子类', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (116, 'D', 'B类是A类的子类，C类是B类的子类，那么如下语句中哪个是错误的：（     ）', null, null, null, null, null, null, 'A. A a = new A();', 'B. A a = new B();', 'C. A a = new C();', 'D. B b = new A();', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (117, 'C', '下面哪个修饰符所修饰的变量是所有同一个类生成的对象共享的：（     ）。', null, null, null, null, null, null, 'A．public', 'B．private', 'C．static', 'D．final', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (118, 'B', 'Java如下哪个包中的类是被自动导入的，无需写import语句:（      ）', null, null, null, null, null, null, 'A．java.util', 'B．java.lang', 'C．java.awt', 'D．java.sys', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (120, 'B', '以下数据类型不属于Java的引用数据类型的是：（      ）', null, null, null, null, null, null, 'A. 类', 'B. 字符型', 'C. 数组', 'D. 接口', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (121, 'D', '以下关于接口的说法，错误的是：（      ）', null, null, null, null, null, null, 'A. 接口中的成员方法都是抽象方法，接口中的成员变量都是常量', 'B. 类实现一个接口使用implements关键字', 'C. 一个类可以实现多个接口', 'D. 一个类不能同时继承一个类并实现一个接口', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (122, 'D', '以下哪个概念和Java中的多态特性无关：（      ）', null, null, null, null, null, null, 'A. 方法重写', 'B. 抽象类', 'C. 接口', 'D. static方法', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (123, 'A', '如下哪个类是所有Java类的（直接或间接）父类：（      ）', null, null, null, null, null, null, 'A. Object', 'B. System', 'C. Class', 'D. Parent', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (124, 'D', '符合对象和类关系的是：（      ）', null, null, null, null, null, null, 'A. 人和老虎', 'B. 书和汽车', 'C. 楼房和土地', 'D. 松树和植物', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (125, 'D', '有关抽象方法的说法，正确的是：（      ）', null, null, null, null, null, null, 'A. 可以有方法体', 'B. 可以出现在非抽象类中', 'C. 抽象类中的方法都是抽象方法', 'D. 可以出现在抽象类或接口中', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (126, 'A', '以下有关方法重写和方法重载的关系，正确的是：（      ）', null, null, null, null, null, null, 'A. 重写只有发生在父子类型之间，而重载可以发生在同一个类中', 'B. 重写的方法名可以不相同，重载的方法名必须相同', 'C. final修饰的方法可以被重写，但不能被重载', 'D. 方法重写与方法重载是同一回事', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (127, 'A', '下列哪个关键字用于实现接口：（      ）', null, null, null, null, null, null, 'A. implements', 'B. implement', 'C. extend', 'D. extends', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (128, 'D', '有关抽象类和接口，以下说法错误的是：（      ）', null, null, null, null, null, null, 'A. 抽象类可以实现接口', 'B. 接口中不能有非抽象方法，抽象类中可以有非抽象方法', 'C. 抽象类可以继承一个类，接口可以继承多个接口', 'D. 一个类不能同时继承抽象类和实现接口', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (129, 'B', '有关重写，以下说法正确的是：（      ）', null, null, null, null, null, null, 'A. 重写包括成员方法的重写和成员变量的重写', 'B. 成员方法的重写是多态的一种表现形式', 'C. 子类不能调用父类中被重写的方法', 'D. 任何方法都可以被重写', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (136, 'B', '如果一个类具有至少一个抽象方法，那么这个类是：（     ）', null, null, null, null, null, null, 'A. 普通类', 'B. 抽象类', 'C. 具体类', 'D. 实现类', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (137, 'A', '如果一个类只实现了一个接口中的部分方法，那么这个类可以是（     ）。', null, null, null, null, null, null, 'A．只能是抽象类', 'B．可以是抽象类或普通类', 'C．只能是普通类', 'D．以上说法都不对', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (138, 'D', '对于Java中的toString()方法，以下说法正确的是:（      ）', null, null, null, null, null, null, 'A．必须在类中首先重写toString()方法，才能对该类的对象调用toString()方法', 'B．对类重写toString()方法后，对该类的对象调用toString()方法，仍然调用的是Object类的toString()方法', 'C．如果对某个类对象stu没有重写toString()方法，那么System.out.println(stu);这条语句会出现编译错误', 'D．对某个类重写toString()方法时，可以打印一些成员变量的值的信息，以便于后期输出调试', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (139, 'B', '如果想从键盘输入中获取信息，应该使用如下哪个Java类（      ）', null, null, null, null, null, null, 'A．System', 'B．Scanner', 'C．InputStrem', 'D．Output', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (140, 'B', 'String类位于以下哪个包中：（      ）', null, null, null, null, null, null, 'A. java.text', 'B. java.lang', 'C. java.util', 'D. java.io', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (141, 'B', '已经创建了一个Student类，然后用Object obj = new Student();这条语句创建obj对象变量，那么以下说法正确的是：（      ）', null, null, null, null, null, null, 'A. 题目中这条语句会编译出错', 'B. 运行System.out.println(obj.getClass().getName());这条语句将打印"Student"', 'C. 运行System.out.println(obj);这条语句会打印"Student"', 'D. 运行System.out.println(obj.toString());这条语句会打印"Student"', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (145, 'D', 'Java中Object类是所有类的父类，如下哪个方法不是Object类中的方法：（      ）', null, null, null, null, null, null, 'A. getClass()', 'B. equals(Object o)', 'C. toString()', 'D. getName()', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (147, 'B', '在一个合法的Java源程序文件中定义了3个类，其中属性为public的类可能有：（      ）', null, null, null, null, null, null, 'A. 只能是1个', 'B. 可以为0或1个', 'C. 可以为0或1或2或3个', 'D. 可以为1或2或3个', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (148, 'A', '在使用super 和this关键字时，以下描述正确的是：（      ）', null, null, null, null, null, null, 'A. 在子类构造方法中使用super（）显示调用父类的构造方法，super（）必须写在子类构造方法的第一行，否则编译不通过', 'B. super（）和this（）不一定要放在构造方法内第一行', 'C. this（）和super（）可以同时出现在一个构造函数中', 'D. this（）和super（）可以在static环境中使用，包括static方法和static语句块', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (149, 'B', '以下对重载描述错误的是：（      ）', null, null, null, null, null, null, 'A. 方法重载只能发生在一个类的内部', 'B. 构造方法不能重载', 'C. 重载要求方法名相同，参数列表不同', 'D. 方法的返回值类型不是区分方法重载的条件', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (151, 'B', '以下对接口描述错误的是:（      ）', null, null, null, null, null, null, 'A．接口没有提供构造方法', 'B．接口不允许多继承', 'C．接口中的方法默认使用public和abstract修饰', 'D．接口中的属性默认使用public、static和final修饰', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (153, 'B', '根据String s=null;语句，以下说法正确的是。（      ）', null, null, null, null, null, null, 'A．if( (s!=null)&(s.length()>0) ){}语句不会出现NullPointerException异常，而
if( (s!=null)&&(s.length()>0) ){} 语句会出现NullPointerException异常', 'B．if( (s==null)|(s.length()==0) ){}语句会出现NullPointerException异常，而
if( (s==null)||(s.length()==0) ){}语句不会出现NullPointerException异常', 'C．if( (s==null)|(s.length()==0) ){}语句和if( (s==null)||(s.length()==0) ){}语句都会出现NullPointerException异常', 'D．if( (s!=null)&(s.length()!=0) ){}语句和if( (s!=null)&&(s.length()!=0) ){}语句都不会出现NullPointerException异常', null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankchoicequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, choiceA, choiceB, choiceC, choiceD, choiceE, choiceF, choiceG, choiceH, knowledgePoint, composeFlag) VALUES (156, 'A,C,D', '下列哪些方法是ArrayList和LinkedList集合中都定义的（多选）（     ）', null, null, null, null, null, null, 'A. add(Object o)', 'B. removeFirst()', 'C. remove(Object o)', 'D. add(int index,Object o)', null, null, null, null, 'Java语言基础', 1);

create table bankjudgequestion
(
    id             int auto_increment
        primary key,
    answer         varchar(255) null,
    content        varchar(255) null,
    contributor    varchar(255) null,
    createDate     datetime     null,
    description    varchar(255) null,
    memo           varchar(255) null,
    name           varchar(255) null,
    picLocation    varchar(255) null,
    knowledgePoint varchar(255) null,
    composeFlag    int          not null
)
    charset = utf8;

INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (1, 'T', 'Java中，h22是合法的变量名，而22h是不合法的变量名。（  ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (2, 'T', 'Java中birthday和birthDay是两个不同的变量。（     ）。', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (3, 'T', 'Java中，多行注释/* …*/中可以嵌套//的单行注释，
但不能嵌套/*… */的多行注释。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (4, 'T', 'Java表达式 5>7 || 3>=2的运算结果是true。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (5, 'F', 'Java语句int n=9/2;执行后，n的值是5。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (6, 'F', 'Java表达式 7>=7 ? 777 : 888的运算结果是888。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (7, 'F', '已知int型的Java变量int x=3;，那么执行完int y=x++;语句后，y的值是4。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (8, 'T', 'Java表达式0xC8-2的运算结果是198。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (9, 'T', '已知int型的Java变量int x=5;，那么执行完x%=3;语句后，x的值是2。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (10, 'T', 'Java源代码中出现的整型数5其默认类型是int。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (11, 'F', 'Java源代码中出现的浮点数值4.5其默认类型是float。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (12, 'T', 'Java中，int类型的数据可以直接赋值给double类型的变量，实现自动类型转换。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (13, 'F', 'Java中的boolean类型可以和int类型之间相互转换。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (14, 'T', 'Java的switch语句中可以没有default子句，该子句是可选的。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (15, 'F', 'Java的for循环语句中，for关键字后面的小括号()内三部分内容之间用逗号(,)分隔。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (16, 'F', '在Java方法的内部不能调用自身方法。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (17, 'F', 'Java的数组声明并初始化语句int[ ] arrayX = (1, 7, 8, 5, 9); 是正确的。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (18, 'T', '声明Java数组boolean[ ] boolArray = new boolean[3]，那么boolArray[0]的值是false。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (19, 'F', '声明并初始化二维数组int[ ][ ] dim2Array = { {1, 2}, {3, 4, 5}}，则dim2Array[1][2]的值是2。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (20, 'F', 'Java在循环中出现的break语句的作用是结束本次循环，执行下一次循环。（      ）', null, null, null, null, null, null, 'Java语言基础', 0);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (21, 'T', 'Java中，h22是合法的变量名，而22h是不合法的变量名。（  ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (22, 'T', 'Java中birthday和birthDay是两个不同的变量。（     ）。', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (23, 'T', 'Java中，多行注释/* …*/中可以嵌套//的单行注释，
但不能嵌套/*… */的多行注释。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (24, 'T', 'Java表达式 5>7 || 3>=2的运算结果是true。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (25, 'F', 'Java语句int n=9/2;执行后，n的值是5。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (26, 'F', 'Java表达式 7>=7 ? 777 : 888的运算结果是888。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (27, 'F', '已知int型的Java变量int x=3;，那么执行完int y=x++;语句后，y的值是4。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (28, 'T', 'Java表达式0xC8-2的运算结果是198。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (29, 'T', '已知int型的Java变量int x=5;，那么执行完x%=3;语句后，x的值是2。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (30, 'T', 'Java源代码中出现的整型数5其默认类型是int。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (31, 'F', 'Java源代码中出现的浮点数值4.5其默认类型是float。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (32, 'T', 'Java中，int类型的数据可以直接赋值给double类型的变量，实现自动类型转换。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (33, 'F', 'Java中的boolean类型可以和int类型之间相互转换。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (34, 'T', 'Java的switch语句中可以没有default子句，该子句是可选的。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (35, 'F', 'Java的for循环语句中，for关键字后面的小括号()内三部分内容之间用逗号(,)分隔。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (36, 'F', '在Java方法的内部不能调用自身方法。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (37, 'F', 'Java的数组声明并初始化语句int[ ] arrayX = (1, 7, 8, 5, 9); 是正确的。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (38, 'T', '声明Java数组boolean[ ] boolArray = new boolean[3]，那么boolArray[0]的值是false。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (39, 'F', '声明并初始化二维数组int[ ][ ] dim2Array = { {1, 2}, {3, 4, 5}}，则dim2Array[1][2]的值是2。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (40, 'F', 'Java在循环中出现的break语句的作用是结束本次循环，执行下一次循环。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (41, 'F', 'while语句中的小括号中的表达式称为循环条件，它的值只能为boolean型或int型。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (42, 'T', '循环嵌套是指再一个循环语句的循环体中再定义一个循环语句的语法结构，while, do...while, for循环语句可以互相嵌套。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (43, 'T', 'Java在循环中出现的continue语句的作用是终止本次循环，执行下一次循环。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (44, 'F', '方法中没有返回值，返回值类型要声明为void，但方法体中的return语句不可以省略。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (45, 'F', '若int[][] arr={{1,2,3},{4,5},{6,7,8}};则arr[2][2]元素的值是5。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (46, 'T', 'switch条件语句中，default子句是可选的，即可以没有default子句。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (47, 'T', 'Java表达式6&12的运算结果是4。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (48, 'F', 'Java表达式6|13的运算结果是14。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (49, 'T', 'Java表达式6^15的运算结果是9。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (50, 'F', 'Java表达式(-15)%2的运算结果是1。（      ）', null, null, null, null, null, null, 'Java语言基础', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (51, 'F', 'Java中String是基本数据类型。（  ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (52, 'F', 'Java中一个数组可以存放不同类型的数值。（     ）。', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (53, 'T', 'Java中静态变量是被同一个类的所有实例所共享的。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (54, 'T', '如果一个类的声明中没有使用extends关键字，这个类被系统默认为是继承Object类。。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (55, 'T', 'Java中某属性前不加任何访问控制修饰符，则表示只允许同一包中的类访问。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (56, 'F', 'Java中任何变量在使用前都必须显式初始化。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (57, 'F', 'Java中，非静态方法中不能直接使用静态变量。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (58, 'T', 'Java中一个类可以实现多个接口。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (59, 'F', 'Java的类定义时可以不定义构造方法，所以构造方法在类中不是必须存在的。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (60, 'F', 'Java在定义一个方法时，如果该方法没有返回值，则在方法声明中返回值类型可以省略。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (61, 'F', '声明构造方法时，不能使用private关键字修饰。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (62, 'F', '用运算符“==”比较字符串对象时，如果两个字符串内容的值相同，结果为true。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (63, 'T', '定义在类中的变量叫成员变量，定义在方法中的变量叫局部变量。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (64, 'T', 'Object类中的toString()方法用于返回对象的字符串表示形式。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (65, 'T', '如果一个类继承了一个抽象类，但是没有完全覆写父类的所有的抽象方法那么这个类也必须是抽象类。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (66, 'F', 'this关键字可以在非静态成员方法中使用，也可以在静态方法中使用。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (67, 'T', '在一个类中可以定义多个构造方法，只要每个构造方法的参数类型或参数个数不同即可。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (68, 'F', 'Java的源程序文件中，import语句通常出现在package语句之前。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (69, 'T', '父类的引用指向自己子类的对象是多态的一种体现形式。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (70, 'F', 'static关键字可以修饰成员变量，也可以修饰局部变量。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (71, 'F', '抽象方法必须定义在抽象类中，所以抽象类中的方法都是抽象方法。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (72, 'T', '当一个类的方法被final关键字修饰后，这个类的子类将不能重写该方法。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (73, 'F', '一个类中可以定义多个同名的方法，只要他们的返回值类型不同。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (74, 'T', 'Java中java.util包下的Date类表示特定的时间，它可以精确到毫秒。 。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (75, 'T', 'final既可以修饰局部变量，也可以修饰成员变量。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (76, 'F', '在一个Java源程序文件中,可以有多个public类。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (77, 'T', 'Java的接口中只能定义常量和抽象方法。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (78, 'T', '一个异常处理中，finally语句块只能有一个或可以没有。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (79, 'T', 'Java中子类的成员变量可以和父类的成员变量同名。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);
INSERT INTO bankjudgequestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (80, 'F', 'Java中子类可以重写一个父类的构造方法。。（      ）', null, null, null, null, null, null, 'Java面向对象', 1);

create table bankshortanswerquestion
(
    id             int auto_increment
        primary key,
    answer         varchar(2000) null,
    content        varchar(2000) null,
    contributor    varchar(255)  null,
    createDate     datetime      null,
    description    varchar(255)  null,
    memo           varchar(255)  null,
    name           varchar(255)  null,
    picLocation    varchar(255)  null,
    knowledgePoint varchar(255)  null,
    composeFlag    int           not null
)
    charset = utf8;

INSERT INTO bankshortanswerquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (7, '快排', '用Java实现快排算法。', null, null, null, null, null, null, '算法', 1);
INSERT INTO bankshortanswerquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (8, '答案', '给你一个二进制数组 nums 。
你可以对数组执行以下操作 任意 次（也可以 0 次）：
选择数组中 任意连续 3 个元素，并将它们 全部反转 。
反转 一个元素指的是将它的值从 0 变 1 ，或者从 1 变 0 。
请你返回将 nums 中所有元素变为 1 的 最少 操作次数。如果无法全部变成 1 ，返回 -1 。', null, null, null, null, null, null, '算法', 1);
INSERT INTO bankshortanswerquestion (id, answer, content, contributor, createDate, description, memo, name, picLocation, knowledgePoint, composeFlag) VALUES (9, '答案', '给你一个整数数组 matches 其中 matches[i] = [winneri, loseri] 表示在一场比赛中 winneri 击败了 loseri 。
返回一个长度为 2 的列表 answer ：
answer[0] 是所有 没有 输掉任何比赛的玩家列表。
answer[1] 是所有恰好输掉 一场 比赛的玩家列表。
两个列表中的值都应该按 递增 顺序返回。
注意：
只考虑那些参与 至少一场 比赛的玩家。
生成的测试用例保证 不存在 两场比赛结果 相同 。', null, null, null, null, null, null, '算法', 1);

create table exam
(
    id            int auto_increment
        primary key,
    createDate    datetime     null,
    detail        varchar(255) null,
    examDate      datetime     null,
    name          varchar(255) null,
    type          int          not null,
    scheduledTime int          not null
)
    charset = utf8;

create table examquestion
(
    id                    int auto_increment
        primary key,
    questionType          int not null,
    bank_blankfilling_qid int null,
    bank_choice_qid       int null,
    bank_judge_qid        int null,
    exam_id               int null,
    bank_short_answer_qid int null,
    constraint FK7dpvfm124dkj3pu6a40fnqqr8
        foreign key (exam_id) references exam (id),
    constraint FK9x4pf7350v72p4lrbyaot88vb
        foreign key (bank_blankfilling_qid) references bankblankfillingquestion (id),
    constraint FKerim5f8dvww2cqniojpdg78an
        foreign key (bank_choice_qid) references bankchoicequestion (id),
    constraint FKks8x6o3q8i1k4h14i98p684s
        foreign key (bank_judge_qid) references bankjudgequestion (id),
    constraint FKriu6qltabnum80h0rgsl6t9q8
        foreign key (bank_short_answer_qid) references bankshortanswerquestion (id)
)
    charset = utf8;

create table examquestionanswer
(
    id               int auto_increment
        primary key,
    answer           varchar(255) null,
    answerDate       datetime     null,
    exam_question_id int          null,
    student_id       int          null,
    constraint FKcu38o3yr7xgfelgqkb7kllag7
        foreign key (student_id) references student (id),
    constraint FKr8fo3yfr32sjdpey6lvr5rqfg
        foreign key (exam_question_id) references examquestion (id)
)
    charset = utf8;

create table examstrategy
(
    id                  int auto_increment
        primary key,
    blankPerScore       int          not null,
    choicePerScore      int          not null,
    comment             varchar(255) null,
    judgePerScore       int          not null,
    name                varchar(255) null,
    exam_id             int          null,
    shortAnswerPerScore int          not null,
    constraint FK1hfiipd00yvn6mfq1qt7l9797
        foreign key (exam_id) references exam (id)
)
    charset = utf8;

create table grade
(
    id   int auto_increment
        primary key,
    name varchar(255) null
)
    charset = utf8;

INSERT INTO grade (id, name) VALUES (1, '高三一班');
INSERT INTO grade (id, name) VALUES (2, '高三二班');

create table student
(
    id             int auto_increment
        primary key,
    gender         bit          not null,
    name           varchar(255) null,
    password       varchar(255) null,
    grade_id       int          null,
    registerNo     varchar(255) null,
    avatarPath     varchar(255) null,
    avatarfilePath varchar(255) null,
    role           int          not null,
    constraint uk_student_registerNo
        unique (registerNo),
    constraint FKlxatkq565g9vfqxknn72o0dh7
        foreign key (grade_id) references grade (id)
)
comment '学生表' charset = utf8;

INSERT INTO student (id, gender, name, password, grade_id, registerNo, avatarPath, avatarfilePath, role) VALUES (1, true, '管理员', 'admin', null, 'admin', null, null, 1);
INSERT INTO student (id, gender, name, password, grade_id, registerNo, avatarPath, avatarfilePath, role) VALUES (2, true, '张三', '123456', 1, '20240001', null, null, 0);
INSERT INTO student (id, gender, name, password, grade_id, registerNo, avatarPath, avatarfilePath, role) VALUES (3, false, '李静', '123456', 2, '20240002', null, null, 0);

create table studentexamscore
(
    id               int auto_increment
        primary key,
    examPhase        varchar(255) null,
    score            int          not null,
    exam_id          int          null,
    exam_strategy_id int          null,
    student_id       int          null,
    timeUsed         int          not null,
    examEndTime      datetime     null,
    examStartTime    datetime     null,
    constraint FKeekdyptkdsnd1mr9pxl7v3cn0
        foreign key (exam_id) references exam (id),
    constraint FKlv3gqbhqyn7qmpgfkfvoopavd
        foreign key (student_id) references student (id),
    constraint FKn3o1pdb2kovqkaopabdnr6ki8
        foreign key (exam_strategy_id) references examstrategy (id)
)
    charset = utf8;

SET FOREIGN_KEY_CHECKS=1;