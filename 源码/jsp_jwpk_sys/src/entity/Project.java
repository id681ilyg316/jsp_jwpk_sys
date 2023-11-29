package entity;

import java.util.List;


import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.BelongsTo;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.DependentType;
import com.et.ar.annotations.HasMany;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;


@Table(name="m_project")
public class Project extends ActiveRecordBase {
	
	@Id private Integer id;
	
	@Column private String code;
	
	@Column private Integer teacher_id;
	
	@Column private Integer course_id;
	
	@Column private Integer class_id;
	@BelongsTo(foreignKey="class_id")
    private MyClass myclass;
	
	@BelongsTo(foreignKey="teacher_id")
    private User teacher;
	
	@BelongsTo(foreignKey="course_id")
    private Course course;

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public Integer getTeacher_id() {
		return teacher_id;
	}


	public void setTeacher_id(Integer teacher_id) {
		this.teacher_id = teacher_id;
	}


	public Integer getCourse_id() {
		return course_id;
	}


	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}


	public User getTeacher() {
		return teacher;
	}


	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}


	public Course getCourse() {
		return course;
	}


	public void setCourse(Course course) {
		this.course = course;
	}


	public Integer getClass_id() {
		return class_id;
	}


	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}


	public MyClass getMyclass() {
		return myclass;
	}


	public void setMyclass(MyClass myclass) {
		this.myclass = myclass;
	}

}
