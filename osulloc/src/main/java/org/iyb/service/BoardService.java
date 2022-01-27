package org.iyb.service;

import java.util.ArrayList;

import org.iyb.domain.AttachFileDTO;
import org.iyb.domain.BoardDTO;
import org.iyb.domain.Criteria;

public interface BoardService { 
	//�Խ��� �۾���
	public void write(BoardDTO board);
	
	//�Խ��� ��ϸ���Ʈ
	public ArrayList<BoardDTO> noticeBoard(Criteria cri);
	
	//�Խ��� ��ϸ���Ʈ���� ������ Ŭ������ �� ������ ������ ��������
	public BoardDTO detail(BoardDTO board);
	
	//�Խ��� ����������
	public void modify(BoardDTO board);
	
	//�Խ��� ����������
	public void remove(BoardDTO board);
	
	//�Ի��� ����¡�� ���� �����ͰǼ�
	public int getTotalCount(Criteria cri);
	
	//�Խ��� ���������� ���Ͼ��ε�� �̹��� ���
	public ArrayList<AttachFileDTO> fileList(int bno);
}