package entity;

import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.BelongsTo;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;

@Table(name="m_user")
public class User extends ActiveRecordBase{
	
	@Id private Integer id;
	@Column private String u_name;
	@Column private String u_pwd;
	@Column private String u_type;
	
	@Column private String cate_name;
	
	@Column private String real_name;
	
	@Column private String grade;//年级
	
	@Column private String sex; //性别
	
	@Column private String  title_name;  //职称
	
	@Column private Integer class_id;    //班级
	@BelongsTo(foreignKey="class_id")
    private MyClass myclass;

	public MyClass getMyclass() {
		return myclass;
	}
	public void setMyclass(MyClass myclass) {
		this.myclass = myclass;
	}
	public Integer getClass_id() {
		return class_id;
	}
	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public String getReal_name() {
		return real_name;
	}
	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_type() {
		return u_type;
	}
	public void setU_type(String u_type) {
		this.u_type = u_type;
	}
	public String getTitle_name() {
		return title_name;
	}
	public void setTitle_name(String title_name) {
		this.title_name = title_name;
	}
	
}
