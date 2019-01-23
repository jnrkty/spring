package kr.green.springtest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.springtest.dao.AccountDao;
import kr.green.springtest.vo.AccountVo;

@Service
public class AccountServiceImp implements AccountService {
	
	@Autowired
	AccountDao accountDao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public AccountVo signin(AccountVo loginInfo) {
		AccountVo user = accountDao.getAccount(loginInfo.getId()); //패스워드는 암호화돼서
		if(user != null && passwordEncoder.matches(loginInfo.getPw(),
				user.getPw()))
			return user;
		return null;
	}

	@Override
	public boolean signup(AccountVo userInfo) {
		if(accountDao.getAccount(userInfo.getId()) != null) //아이디가 있으면 가입 x
			return false;
		String encPw = passwordEncoder.encode(userInfo.getPw());
		userInfo.setPw(encPw);
		accountDao.setAccount(userInfo);
		return true;
	}

	@Override
	public boolean isDuplicated(String id) {
		if(accountDao.getAccount(id) != null)
			return true;
		return false;
	}

}
