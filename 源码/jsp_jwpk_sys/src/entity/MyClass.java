package entity;

import com.et.ar.ActiveRecordBase;
import com.et.ar.annotations.BelongsTo;
import com.et.ar.annotations.Column;
import com.et.ar.annotations.Id;
import com.et.ar.annotations.Table;


@Table(name="m_myclass")
public class MyClass extends ActiveRecordBase{//班级
	
	/*
	  drop table m_myclass;
		create table m_myclass(
			id int auto_increment primary key,  
		    name varchar(100),
		    remark varchar(100),
		    cate_id int
		);
	 */
	
	@Id private Integer id;
	
	@Column private String name;
	
	@Column private String remark;
	
	@Column Integer  cate_id;
	
	@BelongsTo(foreignKey="cate_id")
    private Category category;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Integer getCate_id() {
		return cate_id;
	}

	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}


}
