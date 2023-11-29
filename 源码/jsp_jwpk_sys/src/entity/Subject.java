package entity;

import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.BelongsTo;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;

@Table(name="m_subject")
public class Subject extends ActiveRecordBase{//课程
	
	
	/*
	 drop table m_subject;
		create table m_subject(
			id int auto_increment primary key,  
		    teacher_id int,
		    class_id int,
		    cate_id int,
		    status varchar(100)
		); 
	 
	 */
	
	@Id private Integer id;
	
	
	@Column private String code;
	
	@Column private Integer course_id;
	@BelongsTo(foreignKey="course_id")
    private Course course;
	
	@Column private Integer teacher_id;
	
	@BelongsTo(foreignKey="teacher_id")
    private User teacher;
	
	@Column private Integer class_id;
	@BelongsTo(foreignKey="class_id")
    private MyClass myclass;
	
	@Column private Integer cate_id;
	
	@BelongsTo(foreignKey="cate_id")
    private Category category;

	@Column private String status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(Integer teacher_id) {
		this.teacher_id = teacher_id;
	}

	public Integer getClass_id() {
		return class_id;
	}

	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}

	public Integer getCate_id() {
		return cate_id;
	}

	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getTeacher() {
		return teacher;
	}

	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}

	public MyClass getMyclass() {
		return myclass;
	}

	public void setMyclass(MyClass myclass) {
		this.myclass = myclass;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getCourse_id() {
		return course_id;
	}

	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
}
