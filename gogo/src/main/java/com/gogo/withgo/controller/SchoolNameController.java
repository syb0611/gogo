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
			out.println("<option value='선택'>선택</option>"); 
			out.println("<option value='KC대학교'>KC대학교</option>"); 
			out.println("<option value='가톨릭대학성신교정'>가톨릭대학교(성신교정)</option>"); 
			out.println("<option value='가톨릭대학교성의교정'>가톨릭대학교(성의교정)</option>"); 
			out.println("<option value='감리교신학대학교'>감리교신학대학교</option>"); 
			out.println("<option value='건국대학교'>건국대학교</option>"); 
			out.println("<option value='경기대학교서울캠'>경기대학교(서울캠)</option>"); 
			out.println("<option value='경희대학교'>경희대학교</option>"); 
			out.println("<option value='경희사이버대학교'>경희사이버대학교</option>"); 
			out.println("<option value='고려대학교'>고려대학교</option>"); 
			out.println("<option value='고려사이버대학교'>고려사이버대학교</option>"); 
			out.println("<option value='광운대학교'>광운대학교</option>"); 
			out.println("<option value='국민대학교'>국민대학교</option>"); 
			out.println("<option value='덕성여자대학교'>덕성여자대학교</option>"); 
			out.println("<option value='덕성여대(종로캠'>덕성여대(종로캠)</option>"); 
			out.println("<option value='동국대학교'>동국대학교</option>"); 
			out.println("<option value='동덕여대'>동덕여대</option>"); 
			out.println("<option value='디지털서울문화예술대학'>디지털서울문화예술대학</option>"); 
			out.println("<option value='명지대학교'>명지대학교</option>"); 
			out.println("<option value='사이버한국외국어대학교'>사이버한국외국어대학교</option>"); 
			out.println("<option value='삼육대학교'>삼육대학교</option>"); 
			out.println("<option value='상명대학교'>상명대학교</option>"); 
			out.println("<option value='서강대학교'>서강대학교</option>"); 
			out.println("<option value='서경대학교'>서경대학교</option>"); 
			out.println("<option value='서울과학기술대학교'>서울과학기술대학교</option>"); 
			out.println("<option value='서울교육대학교'>서울교육대학교</option>"); 
			out.println("<option value='서울기독대학교'>서울기독대학교</option>"); 
			out.println("<option value='서울시립대학교'>서울시립대학교</option>"); 
			out.println("<option value='서울여자대학교'>서울여자대학교</option>"); 
			out.println("<option value='서울여대'>서울여대(대학로캠)</option>"); 
			out.println("<option value='서울대학교'>서울대학교</option>");
			out.println("<option value='서울대'>서울대(연건캠)</option>"); 
			out.println("<option value='서울디지털대학교'>서울디지털대학교</option>"); 
			out.println("<option value='서울사이비대학교'>서울사이비대학교</option>"); 
			out.println("<option value='성공회대학교'>성공회대학교</option>"); 
			out.println("<option value='성균관대학교'>성균관대학교</option>"); 
			out.println("<option value='성신여대학교'>성신여대학교</option>"); 
			out.println("<option value='성신여대'>성신여대(미아운정그린캠)</option>"); 
			out.println("<option value='세종대학교'>세종대학교</option>"); 
			out.println("<option value='세종사이버대학교'>세종사이버대학교</option>"); 
			out.println("<option value='숙명여대학교'>숙명여대학교</option>"); 
			out.println("<option value='숭실대학교'>숭실대학교</option>"); 
			out.println("<option value='숭실사이버대학교'>숭실사이버대학교</option>"); 
			out.println("<option value='연세대학교'>연세대학교</option>"); 
			out.println("<option value='열린사이버대학교'>열린사이버대학교</option>"); 
			out.println("<option value='육군사관학교'>육군사관학교</option>"); 
			out.println("<option value='이화여대학교'>이화여대학교</option>");
			out.println("<option value='인제대'>인제대(서울캠)</option>"); 
			out.println("<option value='장로회신학대학교'>장로회신학대학교</option>"); 
			out.println("<option value='중앙대학교'>중앙대학교</option>"); 
			out.println("<option value='총신대학교'>총신대학교</option>"); 
			out.println("<option value='추계예술대학교'>추계예술대학교</option>"); 
			out.println("<option value='한국과학기술원'>한국과학기술원(서울캠)</option>"); 
			out.println("<option value='한국예술종합학교'>한국예술종합학교</option>"); 
			out.println("<option value='한국예술종합학교서초캠'>한국예술종합학교(서초동캠)</option>"); 
			out.println("<option value='한국방송통신대학교'>한국방송통신대학교</option>"); 
			out.println("<option value='한국방송통신대학교'>한국방송통신대(서울지역대학)</option>"); 
			out.println("<option value='한국성서대학교'>한국성서대학교</option>"); 
			out.println("<option value='한국외국어대학교'>한국외국어대학교</option>"); 
			out.println("<option value='한국체육대학교'>한국체육대학교</option>"); 
			out.println("<option value='한성대학교'>한성대학교</option>"); 
			out.println("<option value='한양대학교'>한양대학교</option>"); 
			out.println("<option value='한양사이버대학교'>한양사이버대학교</option>");
			out.println("<option value='한영신학대학교'>한영신학대학교</option>"); 
			out.println("<option value='홍익대학교'>홍익대학교</option>"); 
		
		
		}else if(type.equals("rhkd")){
			out.println("<option value='선택선'>선택</option>"); 
			out.println("<option value='유니스트'>UNIST</option>"); 
			out.println("<option value='가천대'>가천대(메디컬캠)</option>"); 
			out.println("<option value='건양대'>건양대(대전메디켈캠)</option>"); 
			out.println("<option value='건양사이버대학교'>건양사이버대학교</option>"); 
			out.println("<option value='경북대학교'>경북대학교</option>"); 
			out.println("<option value='경성대학교'>경성대학교</option>"); 
			out.println("<option value='경인교육대학교'>경인교육대학교(서울캠)</option>"); 
			out.println("<option value='계명대학교'>계명대학교</option>"); 
			out.println("<option value='계명대'>계명대(대명캠)</option>"); 
			out.println("<option value='고려대'>고려대(세종캠)</option>"); 
			out.println("<option value='고신대학교'>고신대학교</option>"); 
			out.println("<option value='고신대'>고신대(송도캠)</option>"); 
			out.println("<option value='광신대학교'>광신대학교</option>"); 
			out.println("<option value='광주과학기술원'>광주과학기술원</option>"); 
			out.println("<option value='광주교육대학교'>광주교육대학교</option>"); 
			out.println("<option value='광주대학교'>광주대학교</option>"); 
			out.println("<option value='대구가톨릭대'>대구가톨릭대(수성캠)</option>"); 
			out.println("<option value='대전가톨릭대학교'>대전가톨릭대학교</option>"); 
			out.println("<option value='대전대학교'>대전대학교</option>"); 
			out.println("<option value='대전신학대학교'>대전신학대학교</option>"); 
			out.println("<option value='동명대학교'>동명대학교</option>"); 
			out.println("<option value='동서대학교'>동서대학교</option>"); 
			out.println("<option value='동아대학교'>동아대학교</option>"); 
			out.println("<option value='동아대'>동아대(구덕캠)</option>"); 
			out.println("<option value='동아대부민'>동아대(부민캠)</option>"); 
			out.println("<option value='동의대학교'>동의대학교</option>"); 
			out.println("<option value='동의대양정'>동의대(양정캠)</option>"); 
			out.println("<option value='목원대학교'>목원대학교</option>"); 
			out.println("<option value='배재대학교'>배재대학교</option>"); 
			out.println("<option value='부경대학교'>부경대학교</option>"); 
			out.println("<option value='부경대'>부경대(용당캠)</option>");
			out.println("<option value='부산가톨릭대학교'>부산가톨릭대학교</option>"); 
			out.println("<option value='부산가톨릭대'>부산가톨릭대(메리놀교정)</option>"); 
			out.println("<option value='부산가톨릭대신학'>부산가톨릭대(신학교정)</option>"); 
			out.println("<option value='부산교육대학교'>부산교육대학교</option>"); 
			out.println("<option value='부산대학교'>부산대학교</option>"); 
			out.println("<option value='부산디지털대학교'>부산디지털대학교</option>"); 
			out.println("<option value='부산외국어대학교'>부산외국어대학교</option>"); 
			out.println("<option value='숭원대학교'>숭원대학교</option>"); 
			out.println("<option value='신라대학교'>신라대학교</option>"); 
			out.println("<option value='안양대'>안양대(강화캠)</option>"); 
			out.println("<option value='연세대'>연세대(국제캠)</option>"); 
			out.println("<option value='연남대'>연남대(대구캠)</option>"); 
			out.println("<option value='연상대'>연상대(해운대캠)</option>"); 
			out.println("<option value='우송대학교'>우송대학교</option>"); 
			out.println("<option value='울산대학교'>울산대학교</option>"); 
			out.println("<option value='을지대학교'>을지대학교</option>");
			out.println("<option value='인제대'>인제대(부산캠)</option>"); 
			out.println("<option value='인천가톨릭대학교'>인천가톨릭대학교</option>"); 
			out.println("<option value='인도가톨릭대'>인도가톨릭대(송도캠)</option>"); 
			out.println("<option value='인천대학교'>인천대학교</option>"); 
			out.println("<option value='인천대미추홀'>인천대(미추홀캠)</option>"); 
			out.println("<option value='인천대제물포'>인천대(제물포캠)</option>"); 
			out.println("<option value='인하대학교'>인하대학교</option>"); 
			out.println("<option value='전남대학교'>전남대학교</option>"); 
			out.println("<option value='제주국제대학교'>제주국제대학교</option>"); 
			out.println("<option value='제주대학교'>제주대학교</option>"); 
			out.println("<option value='제주대'>제주대(사라캠)</option>"); 
			out.println("<option value='조선대학교'>조선대학교</option>"); 
			out.println("<option value='청운대인천'>청운대(인천캠)</option>"); 
			out.println("<option value='충남대학교'>충남대학교</option>"); 
			out.println("<option value='충남대보운'>충남대(보운캠)</option>"); 
			out.println("<option value='참례신학대학교'>참례신학대학교</option>");
			out.println("<option value='한국과학기술원'>한국과학기술원</option>"); 
			out.println("<option value='한국과학기술원문지'>한국과학기술원(문지캠)</option>");
			out.println("<option value='인천가톨릭대학교'>인천가톨릭대학교</option>"); 
			out.println("<option value='인도가톨릭대송도'>인도가톨릭대(송도캠)</option>"); 
			out.println("<option value='인천대학교'>인천대학교</option>"); 
			out.println("<option value='한국해양대학교'>한국해양대학교</option>"); 
			out.println("<option value='한남대학교'>한남대학교</option>"); 
			out.println("<option value='한밭대학교'>한밭대학교</option>"); 
			out.println("<option value='한밭대대덕'>한밭대(대덕산학융합캠)</option>"); 
			out.println("<option value='호남대학교'>호남대학교</option>"); 
			out.println("<option value='호남신학대학교'>호남신학대학교</option>"); 
			out.println("<option value='홍익대세종'>홍익대(세종캠)</option>"); 
			out.println("<option value='화신사이버대학교'>화신사이버대학교</option>"); 
		
		
			
		}else if(type.equals("kyung")){
			out.println("<option value='선택선택'>선택</option>");  
			out.println("<option value='가천대학교'>가천대학교</option>"); 
			out.println("<option value='가톨릭대학교'>가톨릭대학교</option>"); 
			out.println("<option value='강남대학교'>강남대학교</option>"); 
			out.println("<option value='경기대학교'>경기대학교</option>"); 
			out.println("<option value='경동대메트'>경동대(Metropol캠)</option>"); 
			out.println("<option value='경인교육대경기'>경인교육대(경기캠)</option>"); 
			out.println("<option value='경찰대학'>경찰대학</option>"); 
			out.println("<option value='경희대국제'>경희대(국제캠)</option>"); 
			out.println("<option value='국방대학교'>국방대학교</option>"); 
			out.println("<option value='국제사이버대학교'>국제사이버대학교</option>"); 
			out.println("<option value='단국대학교'>단국대학교</option>"); 
			out.println("<option value='대진대학교'>대진대학교</option>"); 
			out.println("<option value='동국대바이오'>동국대(바이오메디캠)</option>"); 
			out.println("<option value='루터대학교'>루터대학교</option>"); 
			out.println("<option value='명지대자연'>명지대(자연캠)</option>"); 
			out.println("<option value='서울신학대학교'>서울신학대학교</option>"); 
			out.println("<option value='서울장신대학교'>서울장신대학교</option>"); 
			out.println("<option value='성결대학교'>성결대학교</option>"); 
			out.println("<option value='성균관대자연'>성균관대(자연과학캠)</option>"); 
			out.println("<option value='수원가톨릭대학교'>수원가톨릭대학교</option>"); 
			out.println("<option value='수원대학교'>수원대학교</option>"); 
			out.println("<option value='신경대학교'>신경대학교</option>"); 
			out.println("<option value='신한대학교'>신한대학교</option>"); 
			out.println("<option value='신한대학교제이캠'>신한대학교제2캠</option>"); 
			out.println("<option value='아세아연합신학대학교'>아세아연합신학대학교</option>"); 
			out.println("<option value='아주대학교'>아주대학교</option>"); 
			out.println("<option value='안양대학교'>안양대학교</option>"); 
			out.println("<option value='예원예술대양주'>예원예술대(양주캠)</option>"); 
			out.println("<option value='용인대학교'>용인대학교</option>"); 
			out.println("<option value='을지대서안'>을지대(성남캠)</option>"); 
			out.println("<option value='중부대고양'>중부대(고양캠)</option>");
			out.println("<option value='중앙대안성'>중앙대(안성캠)</option>"); 
			out.println("<option value='중앙승가대학교'>중앙승가대학교</option>"); 
			out.println("<option value='차의과학대학교'>차의과학대학교</option>"); 
			out.println("<option value='총신대양지'>총신대(양지캠)</option>"); 
			out.println("<option value='칼빈대학교'>칼빈대학교</option>"); 
			out.println("<option value='평택대학교'>평택대학교</option>"); 
			out.println("<option value='한경대학교'>한경대학교</option>"); 
			out.println("<option value='한국교통대의왕'>한국교통대(의왕캠)</option>"); 
			out.println("<option value='한국산업기술대학교'>한국산업기술대학교</option>"); 
			out.println("<option value='한국외국어대글로벌'>한국외국어대(글로벌캠)</option>"); 
			out.println("<option value='한국항공대학교'>한국항공대학교</option>"); 
			out.println("<option value='한세대학교'>한세대학교</option>");
			out.println("<option value='한신대학교'>한신대학교</option>"); 
			out.println("<option value='한양대캠'>한양대(ERICA캠)</option>"); 
			out.println("<option value='협성대학교'>협성대학교</option>"); 
			
		}else if(type.equals("kang")){
			out.println("<option value='선택택'>선택</option>");  
			out.println("<option value='가톨릭관동대학교'>가톨릭관동대학교</option>"); 
			out.println("<option value='강릉대학교'>강릉대학교</option>"); 
			out.println("<option value='강릉원주대원주'>강릉원주대(원주캠)</option>"); 
			out.println("<option value='강원대학교'>강원대학교</option>"); 
			out.println("<option value='강원대도계'>강원대(도계캠)</option>"); 
			out.println("<option value='강원대삼척'>강원대(삼척캠)</option>"); 
			out.println("<option value='경동대학교'>경동대학교</option>"); 
			out.println("<option value='경동대메디컬'>경동대(Medical캠)</option>"); 
			out.println("<option value='경동대학교설악제'>경동대학교설악제2캠</option>"); 
			out.println("<option value='상지대학교'>상지대학교</option>"); 
			out.println("<option value='서울대평창'>서울대(평창캠)</option>"); 
			out.println("<option value='연세대원주'>연세대(원주캠)</option>"); 
			out.println("<option value='춘천교육대학교'>춘천교육대학교</option>"); 
			out.println("<option value='한국방송통신대'>한국방송통신대(강원지역대학)</option>"); 
			out.println("<option value='한라대학교'>한라대학교</option>"); 
			out.println("<option value='한림대학교'>한림대학교</option>"); 
			out.println("<option value='한림대학교'>한림대학교</option>"); 
			
		}else if(type.equals("chung")){
			out.println("<option value='택'>선택</option>"); 
			out.println("<option value='건국대글로'>건국대(글로벌캠)</option>"); 
			out.println("<option value='건양대학교'>건양대학교</option>"); 
			out.println("<option value='고려대ㅔ세조'>고려대(세종캠)</option>"); 
			out.println("<option value='고신대천안'>고신대(천안캠)</option>"); 
			out.println("<option value='공군사관학교'>공군사관학교</option>"); 
			out.println("<option value='공주교육대학교'>공주교육대학교</option>"); 
			out.println("<option value='공주대학교'>공주대학교</option>"); 
			out.println("<option value='공주대예산'>공주대(예산캠)</option>"); 
			out.println("<option value='공주대천안'>공주대(천안캠)</option>"); 
			out.println("<option value='극동대학교'>극동대학교</option>"); 
			out.println("<option value='글로벌사이버대학교'>글로벌사이버대학교</option>"); 
			out.println("<option value='금강대학교'>금강대학교</option>"); 
			out.println("<option value='꽃동네대학교'>꽃동네대학교</option>"); 
			out.println("<option value='나사렛대학교'>나사렛대학교</option>"); 
			out.println("<option value='남서울대학교'>남서울대학교</option>"); 
			out.println("<option value='단국대천안'>단국대(천안캠)</option>"); 
			out.println("<option value='대전가톨릭대학교'>대전가톨릭대학교</option>"); 
			out.println("<option value='백석대학교'>백석대학교</option>"); 
			out.println("<option value='상명대천안'>상명대(천안캠)</option>"); 
			out.println("<option value='서남대아산'>서남대(아산캠)</option>"); 
			out.println("<option value='서원대학교'>서원대학교</option>"); 
			out.println("<option value='선문대학교'>선문대학교</option>"); 
			out.println("<option value='선문대천안'>선문대(천안캠)</option>"); 
			out.println("<option value='세명대학교'>세명대학교</option>"); 
			out.println("<option value='세한대당진'>세한대(당진캠)</option>"); 
			out.println("<option value='순천향대학교'>순천향대학교</option>"); 
			out.println("<option value='영동대학교'>영동대학교</option>"); 
			out.println("<option value='우석대진천'>우석대(진천캠)</option>"); 
			out.println("<option value='중부대학교'>중부대학교</option>"); 
			out.println("<option value='중원대학교'>중원대학교</option>"); 
			out.println("<option value='청운대학교'>청운대학교</option>");
			out.println("<option value='청주교육대학교'>청주교육대학교</option>"); 
			out.println("<option value='청주대학교'>청주대학교</option>"); 
			out.println("<option value='충북대학교'>충북대학교</option>"); 
			out.println("<option value='한국교원대학교'>한국교원대학교</option>"); 
			out.println("<option value='한국교통대학교'>한국교통대학교</option>"); 
			out.println("<option value='한국교통대증평'>한국교통대(증평캠)</option>"); 
			out.println("<option value='한국기술교육대학교'>한국기술교육대학교</option>"); 
			out.println("<option value='한국기술교육대제'>한국기술교육대(제2캠)</option>"); 
			out.println("<option value='한국방송통신대충'>한국방송통신대(충북지역대학)</option>"); 
			out.println("<option value='한국전통문화대학교'>한국전통문화대학교</option>"); 
			out.println("<option value='한서대학교'>한서대학교</option>"); 
			out.println("<option value='한서대태안'>한서대(태안캠)</option>"); 
			out.println("<option value='호서대학교'>호서대학교</option>"); 
			out.println("<option value='호서대천'>호서대(천안캠)</option>"); 
			out.println("<option value='홍익대종'>홍익대(세종캠)</option>"); 
			
			
		}else if(type.equals("jeon")){
			out.println("<option value='탣택'>선택</option>"); 
			out.println("<option value='광주가톨릭대학교'>광주가톨릭대학교</option>"); 
			out.println("<option value='군산대학교'>군산대학교</option>"); 
			out.println("<option value='동신대학교'>동신대학교</option>"); 
			out.println("<option value='목포가톨릭대학교'>목포가톨릭대학교</option>"); 
			out.println("<option value='목포대학교'>목포대학교</option>"); 
			out.println("<option value='목포대캠'>목포대(목포캠)</option>"); 
			out.println("<option value='목포해양대학교'>목포해양대학교</option>"); 
			out.println("<option value='서남대학교'>서남대학교</option>"); 
			out.println("<option value='세한대학교'>세한대학교</option>"); 
			out.println("<option value='순천대학교'>순천대학교</option>"); 
			out.println("<option value='영산선학대학교'>영산선학대학교</option>"); 
			out.println("<option value='예수대학교'>예수대학교</option>"); 
			out.println("<option value='예원예술대학교'>예원예술대학교</option>"); 
			out.println("<option value='우석대학교'>우석대학교</option>"); 
			out.println("<option value='원광대학교'>원광대학교</option>"); 
			out.println("<option value='원광디지털대학교'>원광디지털대학교</option>"); 
			out.println("<option value='전남대여수'>전남대(여수캠)</option>"); 
			out.println("<option value='전북대학교'>전북대학교</option>"); 
			out.println("<option value='전북대고창'>전북대(고창캠)</option>"); 
			out.println("<option value='전북대특성'>전북대(특성화캠)</option>"); 
			out.println("<option value='전주교육대학교'>전주교육대학교</option>"); 
			out.println("<option value='전주대학교'>전주대학교</option>"); 
			out.println("<option value='초당대학교'>초당대학교</option>"); 
			out.println("<option value='한국방송통신대학교'>한국방송통신대학교</option>"); 
			out.println("<option value='한려대학교'>한려대학교</option>"); 
			out.println("<option value='한실장신대학교'>한실장신대학교</option>"); 
			out.println("<option value='호원대학교'>호원대학교</option>"); 
			
		}else if(type.equals("kyusang")){
			out.println("<option value='탯선'>선택</option>"); 
			out.println("<option value='가야대학교'>가야대학교</option>"); 
			out.println("<option value='가야대캠'>가야대(고령캠)</option>"); 
			out.println("<option value='경남과학기술대학교'>경남과학기술대학교</option>"); 
			out.println("<option value='경남대학교'>경남대학교</option>"); 
			out.println("<option value='경북대상주'>경북대(상주캠)</option>"); 
			out.println("<option value='경상대학교'>경상대학교</option>"); 
			out.println("<option value='경상대칠암'>경상대(칠암캠)</option>"); 
			out.println("<option value='경상대통영'>경상대(통영캠)</option>"); 
			out.println("<option value='경운대학교'>경운대학교</option>"); 
			out.println("<option value='경일대학교'>경일대학교</option>"); 
			out.println("<option value='경주대학교'>경주대학교</option>"); 
			out.println("<option value='금오공과대학교'>금오공과대학교</option>"); 
			out.println("<option value='김천대학교'>김천대학교</option>"); 
			out.println("<option value='대구가톨릭대학교'>대구가톨릭대학교</option>"); 
			out.println("<option value='대구대학교'>대구대학교</option>"); 
			out.println("<option value='대구사이버대학교'>대구사이버대학교</option>"); 
			out.println("<option value='대구예술대학교'>대구예술대학교</option>"); 
			out.println("<option value='대구외국어대학교'>대구외국어대학교</option>"); 
			out.println("<option value='대구한의대학교'>대구한의대학교</option>"); 
			out.println("<option value='대구한의대오성'>대구한의대(오성캠)</option>"); 
			out.println("<option value='대신대학교'>대신대학교</option>"); 
			out.println("<option value='동국대경주'>동국대(경주캠)</option>"); 
			out.println("<option value='동양대학교'>동양대학교</option>"); 
			out.println("<option value='부산대밀양'>부산대(밀양캠)</option>"); 
			out.println("<option value='부산대양산'>부산대(양산캠)</option>"); 
			out.println("<option value='부산장신대학교'>부산장신대학교</option>"); 
			out.println("<option value='안동대학교'>안동대학교</option>"); 
			out.println("<option value='영남대학교'>영남대학교</option>"); 
			out.println("<option value='영남신학대학교'>영남신학대학교</option>"); 
			out.println("<option value='영산대학교'>영산대학교</option>"); 
			out.println("<option value='위덕대학교'>위덕대학교</option>"); 
			out.println("<option value='육군3사관학'>육군3사관학교</option>"); 
			out.println("<option value='인제대학교'>인제대학교</option>"); 
			out.println("<option value='진주교육대학교'>진주교육대학교</option>"); 
			out.println("<option value='창신대학교'>창신대학교</option>"); 
			out.println("<option value='창원대학교'>창원대학교</option>"); 
			out.println("<option value='포항공과대학교'>포항공과대학교</option>"); 
			out.println("<option value='한국국제대학교'>한국국제대학교</option>"); 
			out.println("<option value='한국방송통신대학교'>한국방송통신대학교</option>"); 
			out.println("<option value='한동대학교'>한동대학교</option>");
			out.println("<option value='해군사환학교'>해군사환학교</option>");
			
		}else if(type.equals("jeju")){
			out.println("<option value='선택선택선택'>선택</option>"); 
			out.println("<option value='제주국제대학교'>제주국제대학교</option>"); 
			out.println("<option value='제주대학교'>제주대학교</option>"); 
			out.println("<option value='제주대아'>제주대(사라캠)</option>"); 
			out.println("<option value='한국방송통신대학교'>한국방송통신대학교</option>"); 
			
			
			
		}
		out.close();
	}
}
