package com.gogo.withgo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/school")
public class SchoolNameController {

	@RequestMapping("/list")
	public void schoolList(HttpServletResponse response, @RequestParam("type") String type) throws IOException{
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		if(type.equals("seoul")){
			out.println("<option value='B1'>선택</option>"); 
			out.println("<option value='B2'>KC대학교</option>"); 
			out.println("<option value='B3'>가톨릭대학교(성신교정)</option>"); 
			out.println("<option value='B4'>가톨릭대학교(성의교정)</option>"); 
			out.println("<option value='B5'>감리교신학대학교</option>"); 
			out.println("<option value='B6'>건국대학교</option>"); 
			out.println("<option value='B7'>경기대학교(서울캠)</option>"); 
			out.println("<option value='B8'>경희대학교</option>"); 
			out.println("<option value='B9'>경희사이버대학교</option>"); 
			out.println("<option value='C1'>고려대학교</option>"); 
			out.println("<option value='C2'>고려사이버대학교</option>"); 
			out.println("<option value='C3'>광운대학교</option>"); 
			out.println("<option value='C4'>국민대학교</option>"); 
			out.println("<option value='C5'>덕성여자대학교</option>"); 
			out.println("<option value='C6'>덕성여대(종로캠)</option>"); 
			out.println("<option value='C7'>동국대학교</option>"); 
			out.println("<option value='C8'>동덕여대</option>"); 
			out.println("<option value='C9'>디지털서울문화예술대학</option>"); 
			out.println("<option value='D1'>명지대학교</option>"); 
			out.println("<option value='D2'>사이버한국외국어대학교</option>"); 
			out.println("<option value='D3'>삼육대학교</option>"); 
			out.println("<option value='D4'>상명대학교</option>"); 
			out.println("<option value='D5'>서강대학교</option>"); 
			out.println("<option value='D6'>서경대학교</option>"); 
			out.println("<option value='D7'>서울과학기술대학교</option>"); 
			out.println("<option value='D8'>서울교육대학교</option>"); 
			out.println("<option value='D9'>서울기독대학교</option>"); 
			out.println("<option value='E1'>서울시립대학교</option>"); 
			out.println("<option value='E2'>서울여자대학교</option>"); 
			out.println("<option value='E3'>서울여대(대학로캠)</option>"); 
			out.println("<option value='E4'>서울대학교</option>");
			out.println("<option value='E5'>서울대(연건캠)</option>"); 
			out.println("<option value='E6'>서울디지털대학교</option>"); 
			out.println("<option value='E7'>서울사이비대학교</option>"); 
			out.println("<option value='E8'>성공회대학교</option>"); 
			out.println("<option value='E9'>성균관대학교</option>"); 
			out.println("<option value='F1'>성신여대학교</option>"); 
			out.println("<option value='F2'>성신여대(미아운정그린캠)</option>"); 
			out.println("<option value='F3'>세종대학교</option>"); 
			out.println("<option value='F4'>세종사이버대학교</option>"); 
			out.println("<option value='F5'>숙명여대학교</option>"); 
			out.println("<option value='F6'>숭실대학교</option>"); 
			out.println("<option value='F7'>숭실사이버대학교</option>"); 
			out.println("<option value='F8'>연세대학교</option>"); 
			out.println("<option value='F9'>열린사이버대학교</option>"); 
			out.println("<option value='G1'>육군사관학교</option>"); 
			out.println("<option value='G2'>이화여대학교</option>");
			out.println("<option value='G3'>인제대(서울캠)</option>"); 
			out.println("<option value='G4'>장로회신학대학교</option>"); 
			out.println("<option value='G5'>중앙대학교</option>"); 
			out.println("<option value='G6'>총신대학교</option>"); 
			out.println("<option value='G7'>추계예술대학교</option>"); 
			out.println("<option value='G8'>한국과학기술원(서울캠)</option>"); 
			out.println("<option value='G9'>한국얘술종합학교</option>"); 
			out.println("<option value='H1'>한국얘술종합학교(서초동캠)</option>"); 
			out.println("<option value='H2'>한국방송통신대학교</option>"); 
			out.println("<option value='H3'>한국방송통신대(서울지역대학)</option>"); 
			out.println("<option value='H4'>한국성서대학교</option>"); 
			out.println("<option value='H5'>한국외국어대학교</option>"); 
			out.println("<option value='H6'>한국체육대학교</option>"); 
			out.println("<option value='H7'>한성대학교</option>"); 
			out.println("<option value='H8'>한양대학교</option>"); 
			out.println("<option value='H9'>한양사이버대학교</option>");
			out.println("<option value='I1'>한영신학대학교</option>"); 
			out.println("<option value='I2'>홍익대학교</option>"); 
		
		
		}else if(type.equals("rhkd")){
			out.println("<option value=''>선택</option>"); 
			out.println("<option value='B1'>UNIST</option>"); 
			out.println("<option value='B2'>가천대(메디컬캠)</option>"); 
			out.println("<option value='B3'>건양대(대전메디켈캠)</option>"); 
			out.println("<option value='B4'>건양사이버대학교</option>"); 
			out.println("<option value='B5'>경북대학교</option>"); 
			out.println("<option value='B6'>경성대학교</option>"); 
			out.println("<option value='B7'>경인교육대학교(서울캠)</option>"); 
			out.println("<option value='B8'>계명대학교</option>"); 
			out.println("<option value='B9'>계명대(대명캠)</option>"); 
			out.println("<option value='C1'>고려대(세종캠)</option>"); 
			out.println("<option value='C2'>고신대학교</option>"); 
			out.println("<option value='C3'>고신대(송도캠)</option>"); 
			out.println("<option value='C4'>광신대학교</option>"); 
			out.println("<option value='C5'>광주과학기술원</option>"); 
			out.println("<option value='C6'>광주교육대학교</option>"); 
			out.println("<option value='C7'>광주대학교</option>"); 
			out.println("<option value='C8'>대구가톨릭대(수성캠)</option>"); 
			out.println("<option value='C9'>대전가톨릭대학교</option>"); 
			out.println("<option value='D1'>대전대학교</option>"); 
			out.println("<option value='D2'>대전신학대학교</option>"); 
			out.println("<option value='D3'>동명대학교</option>"); 
			out.println("<option value='D4'>동서대학교</option>"); 
			out.println("<option value='D5'>동아대학교</option>"); 
			out.println("<option value='D6'>동아대(구덕캠)</option>"); 
			out.println("<option value='D7'>동아대(부민캠)</option>"); 
			out.println("<option value='D8'>동의대학교</option>"); 
			out.println("<option value='D9'>동의대(양정캠)</option>"); 
			out.println("<option value='E1'>목원대학교</option>"); 
			out.println("<option value='E2'>배재대학교</option>"); 
			out.println("<option value='E3'>부경대학교</option>"); 
			out.println("<option value='E4'>부경대(용당캠)</option>");
			out.println("<option value='E5'>부산가톨릭대학교</option>"); 
			out.println("<option value='E6'>부산가톨릭대(메리놀교정)</option>"); 
			out.println("<option value='E7'>부산가톨릭대(신학교정)</option>"); 
			out.println("<option value='E8'>부산교육대학교</option>"); 
			out.println("<option value='E9'>부산대학교</option>"); 
			out.println("<option value='F1'>부산디지털대학교</option>"); 
			out.println("<option value='F2'>부산외국어대학교</option>"); 
			out.println("<option value='F3'>숭원대학교</option>"); 
			out.println("<option value='F4'>신라대학교</option>"); 
			out.println("<option value='F5'>안양대(강화캠)</option>"); 
			out.println("<option value='F6'>연세대(국제캠)</option>"); 
			out.println("<option value='F7'>연남대(대구캠)</option>"); 
			out.println("<option value='F8'>연상대(해운대캠)</option>"); 
			out.println("<option value='F9'>우송대학교</option>"); 
			out.println("<option value='G1'>울산대학교</option>"); 
			out.println("<option value='G2'>을지대학교</option>");
			out.println("<option value='G3'>인제대(부산캠)</option>"); 
			out.println("<option value='G4'>인천가톨릭대학교</option>"); 
			out.println("<option value='G5'>인도가톨릭대(송도캠)</option>"); 
			out.println("<option value='G6'>인천대학교</option>"); 
			out.println("<option value='G7'>인천대(미추홀캠)</option>"); 
			out.println("<option value='G8'>인천대(제물포캠)</option>"); 
			out.println("<option value='G9'>인하대학교</option>"); 
			out.println("<option value='H1'>전남대학교</option>"); 
			out.println("<option value='H2'>제주국제대학교</option>"); 
			out.println("<option value='H3'>제주대학교</option>"); 
			out.println("<option value='H4'>제주대(사라캠)</option>"); 
			out.println("<option value='H5'>조선대학교</option>"); 
			out.println("<option value='H6'>청운대(인천캠)</option>"); 
			out.println("<option value='H7'>충남대학교</option>"); 
			out.println("<option value='H8'>충남대(보운캠)</option>"); 
			out.println("<option value='H9'>참례신학대학교</option>");
			out.println("<option value='I1'>한국과학기술원</option>"); 
			out.println("<option value='I2'>한국과학기술원(문지캠)</option>");
			out.println("<option value='G4'>인천가톨릭대학교</option>"); 
			out.println("<option value='G5'>인도가톨릭대(송도캠)</option>"); 
			out.println("<option value='G6'>인천대학교</option>"); 
			out.println("<option value='G7'>인천대(미추홀캠)</option>"); 
			out.println("<option value='G8'>인천대(제물포캠)</option>"); 
			out.println("<option value='G9'>인하대학교</option>"); 
			out.println("<option value='H1'>전남대학교</option>"); 
			out.println("<option value='H2'>제주국제대학교</option>"); 
			out.println("<option value='H3'>제주대학교</option>"); 
			out.println("<option value='H4'>제주대(사라캠)</option>"); 
			out.println("<option value='H5'>조선대학교</option>"); 
			out.println("<option value='H6'>청운대(인천캠)</option>"); 
			out.println("<option value='H7'>충남대학교</option>"); 
			out.println("<option value='H8'>충남대(보운캠)</option>"); 
			out.println("<option value='H9'>참례신학대학교</option>");
			out.println("<option value='I1'>한국과학기술원</option>"); 
			out.println("<option value='I2'>한국과학기술원(문지캠)</option>"); 	
			out.println("<option value='G4'>한국해양대학교</option>"); 
			out.println("<option value='G5'>한남대학교</option>"); 
			out.println("<option value='G6'>한밭대학교</option>"); 
			out.println("<option value='G7'>한밭대(대덕산학융합캠)</option>"); 
			out.println("<option value='G8'>호남대학교</option>"); 
			out.println("<option value='G9'>호남신학대학교</option>"); 
			out.println("<option value='H1'>홍익대(세종캠)</option>"); 
			out.println("<option value='H2'>화신사이버대학교</option>"); 
		
		
			
		}else if(type.equals("kyung")){
			out.println("<option value=''>선택</option>");  
			out.println("<option value='B1'>가천대학교</option>"); 
			out.println("<option value='B2'>가톨릭대학교</option>"); 
			out.println("<option value='B3'>강남대학교</option>"); 
			out.println("<option value='B4'>경기대학교</option>"); 
			out.println("<option value='B5'>경동대(Metropol캠)</option>"); 
			out.println("<option value='B6'>경인교육대(경기캠)</option>"); 
			out.println("<option value='B7'>경찰대학</option>"); 
			out.println("<option value='B8'>경희대(국제캠)</option>"); 
			out.println("<option value='B9'>국방대학교</option>"); 
			out.println("<option value='C1'>국제사이버대학교</option>"); 
			out.println("<option value='C2'>단국대학교</option>"); 
			out.println("<option value='C3'>대진대학교</option>"); 
			out.println("<option value='C4'>동국대(바이오메디캠)</option>"); 
			out.println("<option value='C5'>루터대학교</option>"); 
			out.println("<option value='C6'>명지대(자연캠)</option>"); 
			out.println("<option value='C7'>서울신학대학교</option>"); 
			out.println("<option value='C8'>서울장신대학교</option>"); 
			out.println("<option value='C9'>성결대학교</option>"); 
			out.println("<option value='D1'>성균관대(자연과학캠)</option>"); 
			out.println("<option value='D2'>수원가톨릭대학교</option>"); 
			out.println("<option value='D3'>수원대학교</option>"); 
			out.println("<option value='D4'>신경대학교</option>"); 
			out.println("<option value='D5'>신한대학교</option>"); 
			out.println("<option value='D6'>신한대학교제2캠</option>"); 
			out.println("<option value='D7'>아세아연합신학대학교</option>"); 
			out.println("<option value='D8'>아주대학교</option>"); 
			out.println("<option value='D9'>안양대학교</option>"); 
			out.println("<option value='E1'>예원예술대(양주캠)</option>"); 
			out.println("<option value='E2'>용인대학교</option>"); 
			out.println("<option value='E3'>을지대(성남캠)</option>"); 
			out.println("<option value='E4'>중부대(고양캠)</option>");
			out.println("<option value='E5'>중앙대(안성캠)</option>"); 
			out.println("<option value='E6'>중앙승가대학교</option>"); 
			out.println("<option value='E7'>차의과학대학교</option>"); 
			out.println("<option value='E8'>총신대(양지캠)</option>"); 
			out.println("<option value='E9'>칼빈대학교</option>"); 
			out.println("<option value='F1'>평택대학교</option>"); 
			out.println("<option value='F2'>한경대학교</option>"); 
			out.println("<option value='F3'>한국교통대(의왕캠)</option>"); 
			out.println("<option value='F4'>한국산업기술대학교</option>"); 
			out.println("<option value='F5'>한국외국어대(글로벌캠)</option>"); 
			out.println("<option value='F6'>한국항공대학교</option>"); 
			out.println("<option value='F7'>한세대학교</option>");
			out.println("<option value='F8'>한신대학교</option>"); 
			out.println("<option value='F9'>한양대(ERICA캠)</option>"); 
			out.println("<option value='G1'>협성대학교</option>"); 
			
		}else if(type.equals("kang")){
			out.println("<option value=''>선택</option>");  
			out.println("<option value='B1'>가톨릭관동대학교</option>"); 
			out.println("<option value='B2'>강릉대학교</option>"); 
			out.println("<option value='B3'>강릉원주대(원주캠)</option>"); 
			out.println("<option value='B4'>강원대학교</option>"); 
			out.println("<option value='B5'>강원대(도계캠)</option>"); 
			out.println("<option value='B6'>강원대(삼척캠)</option>"); 
			out.println("<option value='B7'>경동대학교</option>"); 
			out.println("<option value='B8'>경동대(Medical캠)</option>"); 
			out.println("<option value='B9'>경동대학교설악제2캠</option>"); 
			out.println("<option value='C1'>상지대학교</option>"); 
			out.println("<option value='C2'>서울대(평창캠)</option>"); 
			out.println("<option value='C3'>연세대(원주캠)</option>"); 
			out.println("<option value='C4'>춘천교육대학교</option>"); 
			out.println("<option value='C5'>한국방송통신대(강원지역대학)</option>"); 
			out.println("<option value='C6'>한라대학교</option>"); 
			out.println("<option value='C7'>한림대학교</option>"); 
			out.println("<option value='C8'>한줌대학교</option>"); 
			
		}else if(type.equals("chung")){
			out.println("<option value=''>선택</option>"); 
			out.println("<option value='B1'>건국대(글로벌캠)</option>"); 
			out.println("<option value='B2'>건양대학교</option>"); 
			out.println("<option value='B3'>고려대(세종캠)</option>"); 
			out.println("<option value='B4'>고신대(천안캠)</option>"); 
			out.println("<option value='B5'>공군사관학교</option>"); 
			out.println("<option value='B6'>공주교육대학교</option>"); 
			out.println("<option value='B7'>공주대학교</option>"); 
			out.println("<option value='B8'>공주대(예산캠)</option>"); 
			out.println("<option value='B9'>공주대(천안캠)</option>"); 
			out.println("<option value='C1'>극동대학교</option>"); 
			out.println("<option value='C2'>글로벌사이버대학교</option>"); 
			out.println("<option value='C3'>금강대학교</option>"); 
			out.println("<option value='C4'>꽃동네대학교</option>"); 
			out.println("<option value='C5'>나사렛대학교</option>"); 
			out.println("<option value='C6'>남서울대학교</option>"); 
			out.println("<option value='C7'>단국대(천안캠)</option>"); 
			out.println("<option value='C8'>대전가톨릭대학교</option>"); 
			out.println("<option value='C9'>백석대학교</option>"); 
			out.println("<option value='D1'>상명대(천안캠)</option>"); 
			out.println("<option value='D2'>서남대(아산캠)</option>"); 
			out.println("<option value='D3'>서원대학교</option>"); 
			out.println("<option value='D4'>선문대학교</option>"); 
			out.println("<option value='D5'>선문대(천안캠)</option>"); 
			out.println("<option value='D6'>세명대학교</option>"); 
			out.println("<option value='D7'>세한대(당진캠)</option>"); 
			out.println("<option value='D8'>순천향대학교</option>"); 
			out.println("<option value='D9'>영동대학교</option>"); 
			out.println("<option value='E1'>우석대(진천캠)</option>"); 
			out.println("<option value='E2'>중부대학교</option>"); 
			out.println("<option value='E3'>중원대학교</option>"); 
			out.println("<option value='E4'>청운대학교</option>");
			out.println("<option value='E5'>청주교육대학교</option>"); 
			out.println("<option value='E6'>청주대학교</option>"); 
			out.println("<option value='E7'>충북대학교</option>"); 
			out.println("<option value='E8'>한국교원대학교</option>"); 
			out.println("<option value='E9'>한국교통대학교</option>"); 
			out.println("<option value='F1'>한국교통대(증평캠)</option>"); 
			out.println("<option value='F2'>한국기술교육대학교</option>"); 
			out.println("<option value='F3'>한국기술교육대(제2캠)</option>"); 
			out.println("<option value='F4'>한국방송통신대(충북지역대학)</option>"); 
			out.println("<option value='F5'>한국전통문화대학교</option>"); 
			out.println("<option value='F6'>한서대학교</option>"); 
			out.println("<option value='F7'>한서대(태안캠)</option>"); 
			out.println("<option value='F8'>호서대학교</option>"); 
			out.println("<option value='F9'>호서대(천안캠)</option>"); 
			out.println("<option value='G1'>홍익대(세종캠)</option>"); 
			
			
		}else if(type.equals("jeon")){
			out.println("<option value=''>선택</option>"); 
			out.println("<option value='B1'>광주가톨릭대학교</option>"); 
			out.println("<option value='B2'>군산대학교</option>"); 
			out.println("<option value='B3'>동신대학교</option>"); 
			out.println("<option value='B4'>목포가톨릭대학교</option>"); 
			out.println("<option value='B5'>목포대학교</option>"); 
			out.println("<option value='B6'>목포대(목포캠)</option>"); 
			out.println("<option value='B7'>목포해양대학교</option>"); 
			out.println("<option value='B8'>서남대학교</option>"); 
			out.println("<option value='B9'>세한대학교</option>"); 
			out.println("<option value='C1'>순천대학교</option>"); 
			out.println("<option value='C2'>영산선학대학교</option>"); 
			out.println("<option value='C3'>예수대학교</option>"); 
			out.println("<option value='C4'>예원예술대학교</option>"); 
			out.println("<option value='C5'>우석대학교</option>"); 
			out.println("<option value='C6'>원광대학교</option>"); 
			out.println("<option value='C7'>원광디지털대학교</option>"); 
			out.println("<option value='C8'>전남대(여수캠)</option>"); 
			out.println("<option value='C9'>전북대학교</option>"); 
			out.println("<option value='D1'>전북대(고창캠)</option>"); 
			out.println("<option value='D2'>전북대(특성화캠)</option>"); 
			out.println("<option value='D3'>전주교육대학교</option>"); 
			out.println("<option value='D4'>전주대학교</option>"); 
			out.println("<option value='D5'>초당대학교</option>"); 
			out.println("<option value='D6'>한국방송통신대학교</option>"); 
			out.println("<option value='D7'>한려대학교</option>"); 
			out.println("<option value='D8'>한실장신대학교</option>"); 
			out.println("<option value='D9'>호원대학교</option>"); 
			
		}else if(type.equals("kyusang")){
			out.println("<option value=''>선택</option>"); 
			out.println("<option value='B1'>가야대학교</option>"); 
			out.println("<option value='B2'>가야대(고령캠)</option>"); 
			out.println("<option value='B3'>경남과학기술대학교</option>"); 
			out.println("<option value='B4'>경남대학교</option>"); 
			out.println("<option value='B5'>경북대(상주캠)</option>"); 
			out.println("<option value='B6'>경상대학교</option>"); 
			out.println("<option value='B7'>경상대(칠암캠)</option>"); 
			out.println("<option value='B8'>경상대(통영캠)</option>"); 
			out.println("<option value='B9'>경운대학교</option>"); 
			out.println("<option value='C1'>경일대학교</option>"); 
			out.println("<option value='C2'>경주대학교</option>"); 
			out.println("<option value='C3'>금오공과대학교</option>"); 
			out.println("<option value='C4'>김천대학교</option>"); 
			out.println("<option value='C5'>대구가톨릭대학교</option>"); 
			out.println("<option value='C6'>대구대학교</option>"); 
			out.println("<option value='C7'>대구사이버대학교</option>"); 
			out.println("<option value='C8'>대구예술대학교</option>"); 
			out.println("<option value='C9'>대구외국어대학교</option>"); 
			out.println("<option value='D1'>대구한의대학교</option>"); 
			out.println("<option value='D2'>대구한의대(오성캠)</option>"); 
			out.println("<option value='D3'>대신대학교</option>"); 
			out.println("<option value='D4'>동국대(경주캠)</option>"); 
			out.println("<option value='D5'>동양대학교</option>"); 
			out.println("<option value='D6'>부산대(밀양캠)</option>"); 
			out.println("<option value='D7'>부산대(양산캠)</option>"); 
			out.println("<option value='D8'>부산장신대학교</option>"); 
			out.println("<option value='D9'>안동대학교</option>"); 
			out.println("<option value='C6'>영남대학교</option>"); 
			out.println("<option value='C7'>영남신학대학교</option>"); 
			out.println("<option value='C8'>영산대학교</option>"); 
			out.println("<option value='C9'>위덕대학교</option>"); 
			out.println("<option value='D1'>육군3사관학교</option>"); 
			out.println("<option value='D2'>인제대학교</option>"); 
			out.println("<option value='D3'>진주교육대학교</option>"); 
			out.println("<option value='D4'>창신대학교</option>"); 
			out.println("<option value='D5'>창원대학교</option>"); 
			out.println("<option value='D6'>포항공과대학교</option>"); 
			out.println("<option value='D7'>한국국제대학교</option>"); 
			out.println("<option value='D8'>한국방송통신대학교</option>"); 
			out.println("<option value='D9'>한동대학교</option>");
			out.println("<option value='D9'>해군사환학교</option>");
			
		}else if(type.equals("jeju")){
			out.println("<option value=''>선택</option>"); 
			out.println("<option value='B1'>제주국제대학교</option>"); 
			out.println("<option value='B2'>제주대학교</option>"); 
			out.println("<option value='B3'>제주대(사라캠)</option>"); 
			out.println("<option value='B4'>한국방송통신대학교</option>"); 
			
			
			
		}
		out.close();
	}
}
