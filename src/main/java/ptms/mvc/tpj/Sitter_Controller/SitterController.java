package ptms.mvc.tpj.Sitter_Controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ptms.mvc.tpj.Sitter_Service.SitterServiceImpl;

@RequestMapping("/sitter")
@Controller
public class SitterController {
	
	 private static final Logger log = LoggerFactory.getLogger(SitterController.class);

	 @Autowired
	 SitterServiceImpl sitterSer;
	 
	 //(찾기 버튼 누르기 전 조건 입력)시터 찾기 페이지
	 @RequestMapping("sitter")
	   public String sitter(HttpServletRequest req, Model model) {
	      log.info("url ==> sitter");
	      
	      return "customer/sitter/sitter";
	   }   
	   
	// (찾기 버튼 누른 후)시터 목록 페이지
	 @RequestMapping("sitterMatching")
	 public String sitterMatching(HttpServletRequest req, Model model) {
		 log.info("url ==> sitterMatching");
      
		 return "customer/sitter/sitterMatching";
	 } 
	 
	 //이용후기
	 
	 //요금 안내
	 @RequestMapping("feeInfo")
	 public String feeInfo(HttpServletRequest req, Model model) {
		 log.info("url ==> feeInfo");
      
		 sitterSer.priceInfo(req, model);
		 return "customer/sitter/feeInfo";
	 } 	 
	 
	 //펫시터 지원
	 @RequestMapping("applySitter")
	 public String applySitter(HttpServletRequest req, Model model) {
		 log.info("url ==> applySitter");
      
		 return "customer/sitter/applySitter";
	 } 		 
	 
	 //활동 등록
	 
	 
	 //나에게 온 의뢰
	 
	 
}
