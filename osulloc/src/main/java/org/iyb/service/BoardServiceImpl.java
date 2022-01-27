package org.iyb.service;

import java.util.ArrayList;

import org.iyb.domain.AttachFileDTO;
import org.iyb.domain.BoardDTO;
import org.iyb.domain.Criteria;
import org.iyb.mapper.AttachMapper;
import org.iyb.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service // ���� ��Ȱ �ο�
public class BoardServiceImpl implements BoardService{ 
	@Autowired
	private BoardMapper bmapper;
	@Autowired
	private AttachMapper amapper;
	
	//�Խ��� �۾��� ����� �� ����
	@Transactional
	public void write(BoardDTO board) {
		bmapper.insertSelectKey(board);
		board.getAttachList().forEach(attach->{
			attach.setBno(board.getBno());
			amapper.insert(attach);
		});
	}
	
	//�Խ��� ��ϸ���Ʈ ����� �� ����
	public ArrayList<BoardDTO> noticeBoard(Criteria cri) {
		return bmapper.noticeBoard(cri);
	}
	@Transactional
	//�Խ��� ��ϸ���Ʈ���� ������ Ŭ������ �� ������ ������ �������� ����� ���� ����
	public BoardDTO detail(BoardDTO board) {
		//board���̺��� ��ȸ�� �Ӽ��� +1
		bmapper.cntupdate(board);
		return bmapper.detail(board);
	}
	
	//�Խ��� �ۼ��� ����� �� ����
	public void modify(BoardDTO board) {
		bmapper.modify(board);
	}
	
	//�Խ��� �ۻ��� ����� �� ����
	public void remove(BoardDTO board) {
		bmapper.remove(board);
	}
	
	//�Ի��� ����¡�� ���� �����ͰǼ�
	public int getTotalCount(Criteria cri) {
		return bmapper.getTotalCount(cri);
	}
	
	//�Խ��� ���������� ���Ͼ��ε�� �̹��� ����ϴ� ���� ����
	public ArrayList<AttachFileDTO> fileList(int bno){
		return amapper.fileList(bno);
	}
		
}