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

import com.sarf.service.Rst_BoardService;
import com.sarf.vo.Rst_BoardVO;

@Controller
@RequestMapping("/restaurant/*")
public class RestaurantController {
	private static final Logger logger = LoggerFactory.getLogger(RestaurantController.class);

	@Inject
	Rst_BoardService service;
	
	// ê²Œì‹œ?Œ ëª©ë¡ ì¡°íšŒ
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("~~~get list~~~");
		
		model.addAttribute("gangdonglist", service.list1());
		model.addAttribute("gangseolist", service.list2());
		model.addAttribute("gangnamlist", service.list3());
		model.addAttribute("gangbuklist", service.list4());
		
		return "/restaurant/rst_list";
	}

	// ê²Œì‹œ?Œ ê¸? ?‘?„± ?™”ë©?
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String writeView() throws Exception{
		logger.info("~~~get ëª…ì†Œ writeView~~~");
		
		return "/restaurant/rst_writeView";
	}
	
	// ê²Œì‹œ?Œ ê¸? ?‘?„±
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String write(Rst_BoardVO boardVO, MultipartHttpServletRequest mtf) throws Exception {
		logger.info("~~~ëª…ì†Œ ê²Œì‹œ?Œ write~~~");
		
		Iterator<String> files = mtf.getFileNames();
		
		//?ŒŒ?¼ ê¸°ë³¸ê²½ë¡œ
		String dftFilePath = mtf.getSession().getServletContext().getRealPath("/");
		System.out.println("@@@@@?ŒŒ?¼ ê¸°ë³¸ê²½ë¡œ" + dftFilePath);
		
		// ?—…ë¡œë“œ ?ŒŒ?¼?´ ???¥?  ê²½ë¡œ 
		String filePath = dftFilePath + "resources" + File.separator + "fileupload" + File.separator;
		System.out.println("?—…ë¡œë“œ ?ŒŒ?¼ ???¥ê²½ë¡œ" + filePath);
		
		// ?‚¬ì§„ì„ ?—…ë¡œë“œ?•˜ì§? ?•Š?•˜?„ ?•Œ default ?´ë¯¸ì?
		boardVO.setImg1("/resources/fileupload/bg.jpg");
		boardVO.setImg2("/resources/fileupload/bg.jpg");
		boardVO.setImg3("/resources/fileupload/bg.jpg");
		
		while (files.hasNext()) {
			String fileTag = (String)files.next();
			System.out.println(fileTag);
			// ?ŒŒ?¼ ?´ë¦? 
			MultipartFile file = mtf.getFile(fileTag);
			String fileName = file.getOriginalFilename(); 
			System.out.println("fileName@@@@ : " + fileName);
			
			// ?ŒŒ?¼ ? „?†¡ 
			try { 
				file.transferTo(new File(filePath + fileName)); 
			} catch(Exception e) { 
				System.out.println("?—…ë¡œë“œ ?˜¤ë¥?"); 
				e.printStackTrace();
			}
			
			// input file?˜ ê°œìˆ˜ë§Œí¼ vo?— set
			String img;
			
			if(fileTag.equals("file") && !(fileName.equals(""))) {
				System.out.println("1ë²ˆíƒ”?–´");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg1(img);
			}
			if(fileTag.equals("file2") && !(fileName.equals(""))) {
				System.out.println("2ë²ˆíƒ”?–´");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg2(img);
			}
			if(fileTag.equals("file3") && !(fileName.equals(""))) {
				System.out.println("3ë²ˆíƒ”?–´");
				img = "/resources/fileupload/" + fileName;
				boardVO.setImg3(img);
			}
		}
		
		service.write(boardVO);
				
		return "redirect:/restaurant/list";
	}

	// ê²Œì‹œë¬? ?ˆ˜? •ë·?(ê°•ë™)
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(Rst_BoardVO boardVO, Model model) throws Exception{
		logger.info("~~~get updateView~~~");

		model.addAttribute("update", service.updateview(boardVO.getBno()));
		return "restaurant/rst_updateView";
	}
		
	// ê²Œì‹œë¬? ?ˆ˜? •
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Rst_BoardVO boardVO, @RequestParam String newkey) throws Exception{
		logger.info("~~~post updateView~~~");
		// keyê°? ?ƒˆë¡œìš´ keyë¡? ë³?ê²?
		boardVO.setKey(newkey);
		service.update(boardVO);
			
		return "redirect:/restaurant/list";
	}

	// ê²Œì‹œë¬? ?‚­? œ
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Rst_BoardVO boardVO) throws Exception{
		logger.info("?”œë¦¬íŠ¸");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/restaurant/list";
	}
}
