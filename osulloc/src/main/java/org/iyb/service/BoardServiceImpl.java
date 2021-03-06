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

@Service // 서비스 역활 부여
public class BoardServiceImpl implements BoardService{ 
	@Autowired
	private BoardMapper bmapper;
	@Autowired
	private AttachMapper amapper;
	
	//게시판 글쓰기 설계된 것 구현
	@Transactional
	public void write(BoardDTO board) {
		bmapper.insertSelectKey(board);
		board.getAttachList().forEach(attach->{
			attach.setBno(board.getBno());
			amapper.insert(attach);
		});
	}
	
	//게시판 목록리스트 설계된 것 구현
	public ArrayList<BoardDTO> noticeBoard(Criteria cri) {
		return bmapper.noticeBoard(cri);
	}
	@Transactional
	//게시판 목록리스트에서 제목을 클릭했을 때 내용이 나오는 상세페이지 설계된 것을 구현
	public BoardDTO detail(BoardDTO board) {
		//board테이블에 조회수 속성에 +1
		bmapper.cntupdate(board);
		return bmapper.detail(board);
	}
	
	//게시판 글수정 설계된 것 구현
	public void modify(BoardDTO board) {
		bmapper.modify(board);
	}
	
	//게시판 글삭제 설계된 것 구현
	public void remove(BoardDTO board) {
		bmapper.remove(board);
	}
	
	//게사판 페이징에 쓰일 데이터건수
	public int getTotalCount(Criteria cri) {
		return bmapper.getTotalCount(cri);
	}
	
	//게시판 상세페이지에 파일업로드된 이미지 출력하는 것을 구현
	public ArrayList<AttachFileDTO> fileList(int bno){
		return amapper.fileList(bno);
	}
		
}
