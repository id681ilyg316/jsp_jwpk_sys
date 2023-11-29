package entity;

import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.BelongsTo;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;

@Table(name="m_byrow")
public class Byrow extends ActiveRecordBase{
	
	@Id private Integer id;
	@Column private Integer class_id;
	@Column private Integer teacher_id;
	@Column private Integer course_id;
	@Column private Integer room_id;
	
	@BelongsTo(foreignKey="teacher_id")
    private User teacher;
	
	@BelongsTo(foreignKey="room_id")
    private Room room;
	
	@BelongsTo(foreignKey="course_id")
    private Course course;
	
	@BelongsTo(foreignKey="class_id")
    private MyClass myclass;
	
	@Column private Integer col_value;
	@Column private Integer row_value;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	
	public Integer getCol_value() {
		return col_value;
	}
	public void setCol_value(Integer col_value) {
		this.col_value = col_value;
	}
	public Integer getRow_value() {
		return row_value;
	}
	public void setRow_value(Integer row_value) {
		this.row_value = row_value;
	}


	public Integer getClass_id() {
		return class_id;
	}
	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}
	
	public Integer getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(Integer teacher_id) {
		this.teacher_id = teacher_id;
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
	public MyClass getMyclass() {
		return myclass;
	}
	public void setMyclass(MyClass myclass) {
		this.myclass = myclass;
	}
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
	public Integer getRoom_id() {
		return room_id;
	}
	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	
}
