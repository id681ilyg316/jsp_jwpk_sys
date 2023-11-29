package entity;

import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;


@Table(name="m_course")
public class Course extends ActiveRecordBase {
	
	@Id private Integer id;
	
	@Column private String c_code;
	
	@Column private String c_name;
	
	@Column private String c_descr;
	
	@Column private String c_state;
	
	@Column private String c_cate;
	

	public String getC_cate() {
		return c_cate;
	}

	public void setC_cate(String c_cate) {
		this.c_cate = c_cate;
	}

	public String getC_state() throws Exception{
		long total=Byrow.count(Byrow.class,"course_id=?",new Object[]{this.getId()});
		if(total>0){
			return "已开课";
		}else{
			return "未开课";
		}
	}

	public void setC_state(String c_state) {
		this.c_state = c_state;
	}

	public String getC_descr() {
		return c_descr;
	}

	public void setC_descr(String c_descr) {
		this.c_descr = c_descr;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_code() {
		return c_code;
	}

	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	
	

}
