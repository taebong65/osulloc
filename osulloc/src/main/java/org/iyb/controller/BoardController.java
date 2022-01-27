package org.iyb.controller;

import java.util.ArrayList;

import org.iyb.domain.AttachFileDTO;
import org.iyb.domain.BoardDTO;
import org.iyb.domain.Criteria;
import org.iyb.domain.PageDTO;
import org.iyb.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("board")
public class BoardController {
	@Autowired
	private BoardService service;
	
	//�۾��� ȭ������
	@GetMapping("write")
	public void write() {}
	
	//�۾��� ��ư�� Ŭ���ϸ�
	@PostMapping("write")
	public String writePost(BoardDTO board) {
		service.write(board);
		return "redirect:/board/detail?bno="+board.getBno();
	}
	
	@GetMapping("noticeBoard")
	public void noticeBoard(Model model, Criteria cri) {
		model.addAttribute("list", service.noticeBoard(cri));
		int total = service.getTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, service.getTotalCount(cri)));
	}
	
	//�Խ��� ��� ����Ʈ���� ������ Ŭ���ϸ�
	@GetMapping("detail")
	public void detail(BoardDTO board, Model model) {
		model.addAttribute("detail", service.detail(board));
	}
	
	//�Խ��� ������������ �̹����� ����ϱ� ���� select�� ����� javascript��
	@GetMapping(value="/fileList/{bno}",produces= MediaType.APPLICATION_JSON_UTF8_VALUE)//ajax
	public ResponseEntity<ArrayList<AttachFileDTO>> fileList(@PathVariable int bno){
		//System.out.println("fileList");
		return new ResponseEntity<>(service.fileList(bno),HttpStatus.OK);
	}
	//�� ���� ȭ������
	@GetMapping("modify")
	public void modify(BoardDTO board, Model model) {
		model.addAttribute("detail", service.detail(board));
	}
	
	//�ۼ��� ��ư�� Ŭ���ϸ�
	@PostMapping("modify")
	public String modifyPost(BoardDTO board, RedirectAttributes rttr) {
		service.modify(board);
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/detail";
	}
	
	//�ۻ��� ��ư�� Ŭ���ϸ�
	@GetMapping("remove")
	public String remove(BoardDTO board) {
		//delete
		service.remove(board);
		return "redirect:/board/noticeBoard";
	}
}