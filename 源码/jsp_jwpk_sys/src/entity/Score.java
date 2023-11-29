package entity;

import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.BelongsTo;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;

@Table(name="m_score")
public class Score extends ActiveRecordBase {
	
	/*
	 drop table m_score;
		create table m_score(
			id int auto_increment primary key,  
		    course_id int,
		    student_id int,
		    teacher_id int,
		    value varchar(30)
		); 
	 */
	
	@Id private Integer id;
	
	@Column private Integer course_id;
	@BelongsTo(foreignKey="course_id")
    private Course course;
	
	@Column private Integer student_id;
	@BelongsTo(foreignKey="student_id")
    private User student;
	
	@Column private Integer teacher_id;
	@BelongsTo(foreignKey="teacher_id")
    private User teacher;
	
	@Column private String value;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCourse_id() {
		return course_id;
	}

	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}

	public Integer getStudent_id() {
		return student_id;
	}

	public void setStudent_id(Integer student_id) {
		this.student_id = student_id;
	}

	public Integer getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(Integer teacher_id) {
		this.teacher_id = teacher_id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public User getStudent() {
		return student;
	}

	public void setStudent(User student) {
		this.student = student;
	}

	public User getTeacher() {
		return teacher;
	}

	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}

}
