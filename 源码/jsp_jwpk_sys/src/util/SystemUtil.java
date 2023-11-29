package util;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.et.ar.ActiveRecordBase;

import entity.Byrow;
import entity.User;

public class SystemUtil {
	
	public static User login(String u_name,String u_pwd,String u_type){
		User u=null;
		try{
	  		u=User.findFirst(User.class,"u_name=? and u_pwd=? and u_type=?",new Object[]{u_name,u_pwd,u_type});
	  	}catch(Exception e){
	  	    e.printStackTrace();
	  	}
		return u;
	}
	
	//����ַ�ı���ת���ķ���
	public static String chStr(String str){
		if(str==null){
			str="";
		}else{
			try{
				str = str;
//				str = (new String(str.getBytes( "ISO-8859-1"),"UTF-8")).trim();
			}catch(Exception e){
				e.printStackTrace(System.err);
			}
		}
		return str;
	}
	
	public static String getNextBillCode(Class clasz, String prefix) throws Exception{
        int serno = 1;
        String head = prefix + new SimpleDateFormat("yyyyMM").format(new Date());
        Object code = ActiveRecordBase.maximum(clasz, "code", "code like ?", new Object[]{head + "%"});
        if (code != null){
            serno = Integer.parseInt(code.toString().substring(head.length())) + 1;
        }
        return head + new DecimalFormat("0000").format(serno);
    }
	
	public static void main(String ss[])throws Exception {
		
		List<Byrow> allrow=Byrow.findAll(Byrow.class,"1=1 group by class_id",new Object[]{});
		for(Byrow b:allrow){
			System.out.println(b.getClass_id());
		}
		

	}

}
