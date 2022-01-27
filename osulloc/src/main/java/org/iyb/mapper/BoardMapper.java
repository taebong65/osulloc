package org.iyb.mapper;

import java.util.ArrayList;
import org.iyb.domain.BoardDTO;
import org.iyb.domain.Criteria;

public interface BoardMapper {
	
	//�Խ��� �۾���� ���õǾ��ִ� DB�۾��� ���� ����
	public void write(BoardDTO board);
	
	//�Խ��� ���Ͽ� ���õǾ��ִ� DB�۾��� ���� ����
	public void insertSelectKey(BoardDTO board);
	
	//�Խ��� ��ϸ���Ʈ�� ���õǾ��ִ� DB�۾��� ���� ����
	public ArrayList<BoardDTO> noticeBoard(Criteria cri);

	//�Խ��� ��ϸ���Ʈ���� ������ Ŭ������ �� ������ ������ ���������� ���õǾ��ִ� DB�۾��� ���� ����
	public BoardDTO detail(BoardDTO board);
	
	//�Խ��� ��ϸ���Ʈ���� ������ Ŭ������ �� ��ȸ�� +1 �� �� �� �ִ� DB�۾��� ���� ����
	public void cntupdate(BoardDTO board);
	
	//�Խ��� �ۼ����� ���õǾ��ִ� DB�۾��� ���� ����
	public void modify(BoardDTO board);
	
	//�Խ��� �ۻ����� ���õǾ��ִ� DB�۾��� ���� ����
	public void remove(BoardDTO board);
	
	//�Խ��� ����¡�� ���� ��ü �Ǽ��� ���õǾ��ִ� DB�۾��� ���� ����
	public int getTotalCount(Criteria cri);
}