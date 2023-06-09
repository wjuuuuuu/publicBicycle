package bikeweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bikeWeb.vo.MemberVo;

import bikeweb.dao.UserDao;

@Service
public class UserService {
	@Autowired(required = false)
	private UserDao dao;
	
	public void signup(MemberVo ins) {
		if(ins.getWeight()==0) ins.setWeight(65);
		dao.signup(ins);
	}
	
	public int invalidId(String id) {
		return dao.invalidId(id);
	}
	public int login(MemberVo login) {
		return dao.login(login);
	}
	public MemberVo getId(String id) {
		return dao.getId(id);
	}
	public void uptInfo(MemberVo upt) {
		 dao.uptInfo(upt);
	}
	public void delInfo(String id) {
		dao.delInfo(id);
	}
	public String getAuth(String id) {
		return dao.getAuth(id);
	};
}
