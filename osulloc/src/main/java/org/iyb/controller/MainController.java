package org.iyb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("page")
public class MainController {
	@GetMapping("mainpage")
	public void mainpage() {
	}
	
	@GetMapping("subpage")
	public void subpage() {
	}
}
