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
	
	// 게시물 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("~~~get list~~~");
		
		model.addAttribute("gangdonglist", service.list1());
		model.addAttribute("gangseolist", service.list2());
		model.addAttribute("gangnamlist", service.list3());
		model.addAttribute("gangbuklist", service.list4());
		
		return "/festival/fst_list";
	}

	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String writeView() throws Exception{
		logger.info("~~~get 명소 writeView~~~");
		
		return "/festival/fst_writeView";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String write(ARF_BoardVO boardVO, MultipartHttpServletRequest mtf) throws Exception {
		logger.info("~~~명소 게시?�� write~~~");
		
		Iterator<String> files = mtf.getFileNames();
		
		String dftFilePath = mtf.getSession().getServletContext().getRealPath("/");
		
		String filePath = dftFilePath + "resources" + File.separator + "fileupload" + File.separator;


		boardVO.setImg1("/resources/fileupload/bg.jpg");
		boardVO.setImg2("/resources/fileupload/bg.jpg");
		boardVO.setImg3("/resources/fileupload/bg.jpg");
		
		while (files.hasNext()) {
			String fileTag = (String)files.next();
			System.out.println(fileTag);

			MultipartFile file = mtf.getFile(fileTag);
			String fileName = file.getOriginalFilename(); 
			System.out.println("fileName@@@@ : " + fileName);
			

			try { 
				file.transferTo(new File(filePath + fileName)); 
			} catch(Exception e) { 
				e.printStackTrace();
			}
			
			String img;
			
			if(fileTag.equals("file") && !(fileName.equals(""))) {
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg1(img);
			}
			if(fileTag.equals("file2") && !(fileName.equals(""))) {
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg2(img);
			}
			if(fileTag.equals("file3") && !(fileName.equals(""))) {
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg3(img);
			}
		}
		
		service.write(boardVO);
				
		return "redirect:/festival/list";
	}

	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(ARF_BoardVO boardVO, Model model) throws Exception{
		logger.info("~~~get updateView~~~");

		model.addAttribute("update", service.updateview(boardVO.getBno()));
		return "festival/fst_updateView";
	}
		
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ARF_BoardVO boardVO, @RequestParam String newkey) throws Exception{
		logger.info("~~~post updateView~~~");
		boardVO.setKey(newkey);
		service.update(boardVO);
			
		return "redirect:/festival/list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(ARF_BoardVO boardVO) throws Exception{
		logger.info("get delete");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/festival/list";
	}
}
