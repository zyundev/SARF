package com.sarf.web;


import java.io.File;
import java.util.Iterator;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sarf.service.Att_BoardServiceImpl;
import com.sarf.vo.ARF_BoardVO;

@Controller
@RequestMapping("/attraction/*")
public class AttractionController {
	private static final Logger logger = LoggerFactory.getLogger(AttractionController.class);

	@Inject
	Att_BoardServiceImpl service;
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("~~~get list~~~");
		
		model.addAttribute("gangdonglist", service.list1());
		model.addAttribute("gangseolist", service.list2());
		model.addAttribute("gangnamlist", service.list3());
		model.addAttribute("gangbuklist", service.list4());
		
		return "/attraction/att_list";
	}

	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String writeView() throws Exception{
		logger.info("~~~get 명소 writeView~~~");
		
		return "/attraction/att_writeView";
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String write(ARF_BoardVO boardVO, MultipartHttpServletRequest mtf) throws Exception {
		logger.info("~~~명소 게시판 write~~~");
		
		Iterator<String> files = mtf.getFileNames();
		
		//파일 기본경로
		String dftFilePath = mtf.getSession().getServletContext().getRealPath("/");
		System.out.println("@@@@@파일 기본경로" + dftFilePath);
		
		// 업로드 파일이 저장될 경로 
		String filePath = dftFilePath + "resources" + File.separator + "fileupload" + File.separator;
		System.out.println("업로드 파일 저장경로" + filePath);
		
		// 사진을 업로드하지 않았을 때 default 이미지
		boardVO.setImg1("/resources/fileupload/bg.jpg");
		boardVO.setImg2("/resources/fileupload/bg.jpg");
		boardVO.setImg3("/resources/fileupload/bg.jpg");
		
		while (files.hasNext()) {
			String fileTag = (String)files.next();
			System.out.println(fileTag);
			// 파일 이름 
			MultipartFile file = mtf.getFile(fileTag);
			String fileName = file.getOriginalFilename(); 
			System.out.println("fileName@@@@ : " + fileName);
			
			// 파일 전송 
			try { 
				file.transferTo(new File(filePath + fileName)); 
			} catch(Exception e) { 
				System.out.println("업로드 오류"); 
				e.printStackTrace();
			}
			
			// input file의 개수만큼 vo에 set
			String img;
			
			if(fileTag.equals("file") && !(fileName.equals(""))) {
				System.out.println("1번탔어");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg1(img);
			}
			if(fileTag.equals("file2") && !(fileName.equals(""))) {
				System.out.println("2번탔어");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg2(img);
			}
			if(fileTag.equals("file3") && !(fileName.equals(""))) {
				System.out.println("3번탔어");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg3(img);
			}
		}
		
		service.write(boardVO);
				
		return "redirect:/attraction/list";
	}

	// 게시물 수정뷰(강동)
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(ARF_BoardVO boardVO, Model model) throws Exception{
		logger.info("~~~get updateView~~~");

		model.addAttribute("update", service.updateview(boardVO.getBno()));
		return "attraction/att_updateView";
	}
		
	// 게시물 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ARF_BoardVO boardVO, @RequestParam String newkey) throws Exception{
		logger.info("~~~post updateView~~~");
		// key값 새로운 key로 변경
		boardVO.setKey(newkey);
		service.update(boardVO);
			
		return "redirect:/attraction/list";
	}

	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(ARF_BoardVO boardVO) throws Exception{
		logger.info("딜리트");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/attraction/list";
	}
}
