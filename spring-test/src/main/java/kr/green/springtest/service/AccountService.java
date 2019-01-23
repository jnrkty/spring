package kr.green.springtest.service;

import kr.green.springtest.vo.AccountVo;

public interface AccountService {
	public AccountVo signin(AccountVo loginInfo);

	public boolean signup(AccountVo userInfo);

}
