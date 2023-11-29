## 本项目实现的最终作用是基于JSP高校教务排课管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 专业设置查看
 - 学生管理
 - 排课管理
 - 教室管理
 - 教师管理
 - 班级管理
 - 管理员登录
 - 系办人员管理
 - 课程情况查看
 - 课程申请管理
 - 课程设置管理
### 第2个角色为教师角色，实现了如下功能：
 - 学生管理
 - 成绩录入管理
 - 教师角色登录
 - 申请增加课程
 - 课程安排管理
### 第3个角色为学生角色，实现了如下功能：
 - 基本信息查看
 - 学生角色登录
 - 成绩查询
 - 课程表查看
 - 选课功能安排
## 数据库设计如下：
# 数据库设计文档

**数据库名：** jwpk_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [m_byrow](#m_byrow) |  |
| [m_category](#m_category) |  |
| [m_choose](#m_choose) |  |
| [m_course](#m_course) |  |
| [m_message](#m_message) |  |
| [m_myclass](#m_myclass) |  |
| [m_project](#m_project) |  |
| [m_room](#m_room) |  |
| [m_score](#m_score) |  |
| [m_subject](#m_subject) |  |
| [m_user](#m_user) |  |

**表名：** <a id="m_byrow">m_byrow</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | class_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | teacher_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | col_value |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | row_value |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | course_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | room_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 房间ID  |

**表名：** <a id="m_category">m_category</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | remark |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  4   | code |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="m_choose">m_choose</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | course_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | student_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 学生ID  |

**表名：** <a id="m_course">m_course</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | c_code |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | c_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | c_descr |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | c_state |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | c_cate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="m_message">m_message</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  3   | t_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |

**表名：** <a id="m_myclass">m_myclass</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | remark |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  4   | cate_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="m_project">m_project</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | teacher_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | course_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | class_Id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | code |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="m_room">m_room</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |

**表名：** <a id="m_score">m_score</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | course_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | student_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 学生ID  |
|  4   | teacher_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | value |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 值  |

**表名：** <a id="m_subject">m_subject</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | teacher_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | class_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | cate_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |
|  6   | code |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | course_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="m_user">m_user</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | u_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  3   | u_pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | u_type |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  5   | cate_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | REAL_NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 真实名称  |
|  7   | grade |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  9   | title_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | class_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
