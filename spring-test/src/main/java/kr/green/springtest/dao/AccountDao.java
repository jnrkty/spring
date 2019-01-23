package kr.green.springtest.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.springtest.vo.AccountVo;

public interface AccountDao {

	public AccountVo getAccount(@Param("id")String id);

}
