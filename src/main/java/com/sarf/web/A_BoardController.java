package com.sarf.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sarf.service.A_BoardService;
import com.sarf.service.A_ReplyService;
import com.sarf.vo.A_BoardVO;
import com.sarf.vo.A_ReplyVO;
import com.sarf.vo.MemberVO;
import com.sarf.vo.PageMaker;
import com.sarf.vo.PhotoVO;
import com.sarf.vo.SearchCriteria;

@Controller
@RequestMapping("/a_board/*")
public class A_BoardController {

	private static final Logger logger = LoggerFactory.getLogger(A_BoardController.class);

	@Inject
	A_BoardService service;
	
	@Inject
	A_ReplyService replyService;

	// 게시판 목록 조회
	@RequestMapping(value = "/a_list", method = RequestMethod.GET)

	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("정성학");

		model.addAttribute("list",service.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/a_board/a_list";
	}

	// 게시판 글 작성 화면
	@RequestMapping(value = "/a_board/a_writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("작성화면");	
	}
	
	// 게시판 글 작성
	@RequestMapping(value="/a_board/a_write", method = RequestMethod.POST)
	public String write(A_BoardVO boardVO, HttpSession session) throws Exception {
		logger.info("작성완료");

		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String boardId = memberVO.getId();
		boardVO.setName(boardId);

		service.write(boardVO);
		return "redirect:/a_board/a_list";
	}
		
	// 게시물 조회
	@RequestMapping(value = "/a_view", method = RequestMethod.GET)
	public String read(A_BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("뷰");
			
		model.addAttribute("read", service.read(boardVO.getBno()));
		model.addAttribute("scri", scri);
		
		List<A_ReplyVO> replyList = replyService.readReply(boardVO.getBno());
		model.addAttribute("replyList", replyList);
		
		return "a_board/a_view";
	}
	
	// 게시물 수정뷰
	@RequestMapping(value = "/a_updateView", method = RequestMethod.GET)
	public String updateView(A_BoardVO boardVO, Model model) throws Exception{
		logger.info("없데이트뷰");
			
		model.addAttribute("update", service.read(boardVO.getBno()));
			
		return "a_board/a_updateView";
	}
		
	// 게시물 수정
	@RequestMapping(value = "/a_update", method = RequestMethod.POST)
	public String update(A_BoardVO boardVO) throws Exception{
		logger.info("없데이트");
			
		service.update(boardVO);
			
		return "redirect:/a_board/a_view?bno=" + boardVO.getBno();
	}

	// 게시물 삭제
	@RequestMapping(value = "/a_delete", method = RequestMethod.POST)
	public String delete(A_BoardVO boardVO) throws Exception{
		logger.info("딜리트");
			
		service.delete(boardVO.getBno());
			
		return "redirect:/a_board/a_list";
	}
	
	// 싱글파일업로드
	@RequestMapping("/singleupload")
	public String photoUpload(HttpServletRequest request, PhotoVO vo) {
		System.out.println("싱글탔어~~~~~~");
		String callback = vo.getCallback();
		String callback_func = vo.getCallback_func();
		String file_result = "";
		try {
			if (vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null
					&& !vo.getFiledata().getOriginalFilename().equals("")) {
				// 파일이 존재하면
				String original_name = vo.getFiledata().getOriginalFilename();
				String ext = original_name.substring(original_name.lastIndexOf(".") + 1);
				// 파일 기본경로
				String defaultPath = request.getSession().getServletContext().getRealPath("/");
				// 파일 기본경로 _ 상세경로
				String path = defaultPath + "resources" + File.separator + "photo_upload" + File.separator;
				File file = new File(path);
				System.out.println("path:" + path);
				// 디렉토리 존재하지 않을경우 디렉토리 생성
				if (!file.exists()) {
					file.mkdirs();
				}
				// 서버에 업로드 할 파일명(한글문제로 인해 원본파일은 올리지 않는것이 좋음)
				String realname = UUID.randomUUID().toString() + "." + ext;
				///////////////// 서버에 파일쓰기 /////////////////
				vo.getFiledata().transferTo(new File(path + realname));
				file_result += "&bNewLine=true&sFileName=" + original_name + "&sFileURL=/resources/photo_upload/"
						+ realname;
			} else {
				file_result += "&errstr=error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:" + callback + "?callback_func=" + callback_func + file_result;
	}

	@RequestMapping("/multiupload")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("다중탔어~~~~~~");
			// 파일정보
			String sFileInfo = "";
			// 파일명을 받는다 - 일반 원본파일명
			String filename = request.getHeader("file-name");
			// 파일 확장자
			String filename_ext = filename.substring(filename.lastIndexOf(".") + 1);
			// 확장자를소문자로 변경
			filename_ext = filename_ext.toLowerCase();
			// 파일 기본경로
			String dftFilePath = request.getSession().getServletContext().getRealPath("/");
			System.out.println("@@@@@파일 기본경로" + dftFilePath);
			// 파일 기본경로 _ 상세경로
			String filePath = dftFilePath + "resources" + File.separator + "photo_upload" + File.separator;
			System.out.println("@@@@@파일 상세경로" + filePath);
			File file = new File(filePath);
			if (!file.exists()) {
				file.mkdirs();
			}
			String realFileNm = "";
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			String today = formatter.format(new java.util.Date());
			realFileNm = today + UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
			String rlFileNm = filePath + realFileNm;
			System.out.println("@@@@@파일 경로, 파일명" + rlFileNm);
			///////////////// 서버에 파일쓰기 /////////////////
			InputStream is = request.getInputStream();
			OutputStream os = new FileOutputStream(rlFileNm);
			int numRead;
			byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			while ((numRead = is.read(b, 0, b.length)) != -1) {
				os.write(b, 0, numRead);
			}
			if (is != null) {
				is.close();
			}
			os.flush();
			os.close();
			///////////////// 서버에 파일쓰기 /////////////////
			// 정보 출력
			sFileInfo += "&bNewLine=true";
			// img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
			sFileInfo += "&sFileName=" + filename;
			;
			sFileInfo += "&sFileURL=" + "/resources/photo_upload/" + realFileNm;
			PrintWriter print = response.getWriter();
			print.print(sFileInfo);
			print.flush();
			print.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
