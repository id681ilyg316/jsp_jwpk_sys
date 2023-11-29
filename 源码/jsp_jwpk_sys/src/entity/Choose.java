package entity;

import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.BelongsTo;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;

@Table(name="m_choose")
public class Choose extends ActiveRecordBase{
	
	/*
	 drop table m_choose;
		create table m_choose(
			id int auto_increment primary key,  
		    course_id int,
		    student_id int
    );
	 */
	
	@Id private Integer id;
	
	@Column private Integer student_id;
	@BelongsTo(foreignKey="student_id")
    private User student;
	
	@Column private Integer course_id;
	@BelongsTo(foreignKey="course_id")
    private Course course;

	public User getStudent() {
		return student;
	}

	public void setStudent(User student) {
		this.student = student;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStudent_id() {
		return student_id;
	}

	public void setStudent_id(Integer student_id) {
		this.student_id = student_id;
	}

	public Integer getCourse_id() {
		return course_id;
	}

	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
}
