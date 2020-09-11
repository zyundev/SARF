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

import com.sarf.service.Fst_BoardServiceImpl;
import com.sarf.vo.ARF_BoardVO;

@Controller
@RequestMapping("/festival/*")
public class FestivalController {
	private static final Logger logger = LoggerFactory.getLogger(FestivalController.class);

	@Inject
	Fst_BoardServiceImpl service;
	
	// 게시?�� 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("~~~get list~~~");
		
		model.addAttribute("gangdonglist", service.list1());
		model.addAttribute("gangseolist", service.list2());
		model.addAttribute("gangnamlist", service.list3());
		model.addAttribute("gangbuklist", service.list4());
		
		return "/festival/fst_list";
	}

	// 게시?�� �? ?��?�� ?���?
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String writeView() throws Exception{
		logger.info("~~~get 명소 writeView~~~");
		
		return "/festival/fst_writeView";
	}
	
	// 게시?�� �? ?��?��
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String write(ARF_BoardVO boardVO, MultipartHttpServletRequest mtf) throws Exception {
		logger.info("~~~명소 게시?�� write~~~");
		
		Iterator<String> files = mtf.getFileNames();
		
		//?��?�� 기본경로
		String dftFilePath = mtf.getSession().getServletContext().getRealPath("/");
		System.out.println("@@@@@?��?�� 기본경로" + dftFilePath);
		
		// ?��로드 ?��?��?�� ???��?�� 경로 
		String filePath = dftFilePath + "resources" + File.separator + "fileupload" + File.separator;
		System.out.println("?��로드 ?��?�� ???��경로" + filePath);
		
		// ?��진을 ?��로드?���? ?��?��?�� ?�� default ?��미�?
		boardVO.setImg1("/resources/fileupload/bg.jpg");
		boardVO.setImg2("/resources/fileupload/bg.jpg");
		boardVO.setImg3("/resources/fileupload/bg.jpg");
		
		while (files.hasNext()) {
			String fileTag = (String)files.next();
			System.out.println(fileTag);
			// ?��?�� ?���? 
			MultipartFile file = mtf.getFile(fileTag);
			String fileName = file.getOriginalFilename(); 
			System.out.println("fileName@@@@ : " + fileName);
			
			// ?��?�� ?��?�� 
			try { 
				file.transferTo(new File(filePath + fileName)); 
			} catch(Exception e) { 
				System.out.println("?��로드 ?���?"); 
				e.printStackTrace();
			}
			
			// input file?�� 개수만큼 vo?�� set
			String img;
			
			if(fileTag.equals("file") && !(fileName.equals(""))) {
				System.out.println("1번탔?��");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg1(img);
			}
			if(fileTag.equals("file2") && !(fileName.equals(""))) {
				System.out.println("2번탔?��");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg2(img);
			}
			if(fileTag.equals("file3") && !(fileName.equals(""))) {
				System.out.println("3번탔?��");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg3(img);
			}
		}
		
		service.write(boardVO);
				
		return "redirect:/festival/list";
	}

	// 게시�? ?��?���?(강동)
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(ARF_BoardVO boardVO, Model model) throws Exception{
		logger.info("~~~get updateView~~~");

		model.addAttribute("update", service.updateview(boardVO.getBno()));
		return "festival/fst_updateView";
	}
		
	// 게시�? ?��?��
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ARF_BoardVO boardVO, @RequestParam String newkey) throws Exception{
		logger.info("~~~post updateView~~~");
		// key�? ?��로운 key�? �?�?
		boardVO.setKey(newkey);
		service.update(boardVO);
			
		return "redirect:/festival/list";
	}

	// 게시�? ?��?��
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(ARF_BoardVO boardVO) throws Exception{
		logger.info("?��리트");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/festival/list";
	}
}
