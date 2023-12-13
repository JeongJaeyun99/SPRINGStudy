package com.multi.chat;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig extends AbstractWebSocketMessageBrokerConfigurer{

	@Override
	public void configureMessageBroker(MessageBrokerRegistry config) {
		config.enableSimpleBroker("/topic");
		config.setApplicationDestinationPrefixes("/app");
	}
	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		registry.addEndpoint("/chat"); // 자바 웹소켓 통신 주소
		registry.addEndpoint("/chat").withSockJS(); // 자바 스크립트 웹 소켓 통신 주소
		
		//챗봇용
		registry.addEndpoint("/chat2"); // 자바 웹소켓 통신 주소
		registry.addEndpoint("/chat2").withSockJS(); // 자바 스크립트 웹 소켓 통신 주소

		// 고객센터 챗봇
		registry.addEndpoint("/chat3"); // 자바 웹소켓 통신 주소
		registry.addEndpoint("/chat3").withSockJS(); // 자바 스크립트 웹 소켓 통신 주소
	}
}
