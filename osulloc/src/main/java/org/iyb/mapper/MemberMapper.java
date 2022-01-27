package org.iyb.mapper;

import org.iyb.domain.MemberDTO;

public interface MemberMapper {

	//�쉶�썝媛��엯 �꽕怨�
	public void insert(MemberDTO mdto);
	//濡쒓렇�씤 �꽕怨�
	public MemberDTO login(MemberDTO mdto);
}
