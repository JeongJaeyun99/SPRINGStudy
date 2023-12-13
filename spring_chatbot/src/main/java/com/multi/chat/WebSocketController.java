package com.multi.chat;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {
	
	@MessageMapping("/chat")
	@SendTo("/topic/messages")
	public Message send(Message message) {
		Date date = new Date();
		message.setDate(date.getHours() + "시" + date.getMinutes() + "분");
		return message;
	}
	@MessageMapping("/chat2")
	@SendTo("/topic/messages2")
	public Message2 send(Message2 message2) {
		String menu = "";
		switch (message2.getText()) {
		case "1":
			menu = "챗 봇>>  10) 운동화		11) 모자			12) 가방";
			break;
		case "2":
			menu = "챗 봇>>  20) 배송조회	21) 주문완료상품조회";
			break;
		case "20":
			menu = "챗 봇>> DB에서 가지고 온 배송 상황 목록 \n" +
						"상품명: 르꼬뿌		배송상황: 물건 준비중";
			break;
		case "10":
			menu = "챗 봇>>  100) 나이커	    200) 르꼬뿌			300) 라코스또";
			break;
		case "100":
			menu = "챗 봇>>  1000) 나이커 운동화 세부 메뉴	1) 다시 처음 메뉴";
			break;
		case "1000":
			menu = "챗 봇>>  1001)나이커빨강(1만원)	1002)나이커파랑(2만원)	1003)나이커보라(3만원)	100)이전 메뉴로";
			break;
		default:
			menu = "챗 봇>>선택한 번호는 없는 메뉴입니다. 다시 입력해주세요.";
			break;
		}
		message2.setMenu(menu);
		Date date = new Date();
		message2.setDate(date.getHours() + "시" + date.getMinutes() + "분");
		return message2;
	}
	@MessageMapping("/chat3")
	@SendTo("/topic/messages3")
	public Message3 send(Message3 message3) {
		String menu = "";
		switch (message3.getText()) {
		case "1":
			menu = "챗 봇>>  자주 묻는 게시판으로 이동해드리겠습니다. \n"+ 
					"처음으로 이동하시려면 4를 입력해주세요";
			break;
		case "2":
			menu = "챗 봇>>  	문의 하기 게시판으로 이동해드리겠습니다. \n"+ 
					"처음으로 이동하시려면 4를 입력해주세요";
			break;
		case "3":
			menu = "챗 봇>>  건의 하기 게시판으로 이동해드리겠습니다. \n" + 
					"처음으로 이동하시려면 4를 입력해주세요";
			break;
		case "4":
			menu = "챗 봇>>선택한 번호는 없는 메뉴입니다. 1,2,3중 다시 입력해주세요.";
			break;
		}
		message3.setMenu(menu);
		Date date = new Date();
		message3.setDate(date.getHours() + "시" + date.getMinutes() + "분");
		return message3;
	}
}
