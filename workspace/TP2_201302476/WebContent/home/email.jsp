<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Proxy Assign</title>
</head>
<body>
	<%	
	try {
		String Nickname = request.getParameter("Nickname").toString();
		String Battletag = request.getParameter("Battletag").toString();
		String Email = request.getParameter("Email").toString();
		String Hero = request.getParameter("Hero").toString();
		String Msg = request.getParameter("Msg").toString();
		String ID = request.getParameter("Id").toString();
		System.out.println(Email+"/");
		String sbj = "인증을 진행해주세요.";
		String src = request.getParameter("Password").toString();; // 보내는사람 email주소
		if (Hero.equals("0")){
			Hero = "굴단";
		}else if (Hero.equals("1")){
			Hero = "렉사르";
		}else if (Hero.equals("2")){
			Hero = "말퓨리온";
		}else if (Hero.equals("3")){
			Hero = "발리라";
		}else if (Hero.equals("4")){
			Hero = "스랄";
		}else if (Hero.equals("5")){
			Hero = "안두인";
		}else if (Hero.equals("6")){
			Hero = "우서";
		}else if (Hero.equals("7")){
			Hero = "제이나";
		}else if (Hero.equals("8")){
			Hero = "헬스크림";
		}else
			Hero = "모든 캐릭터";
		String msg = "<div><p>" + Nickname + Battletag + " 플레이어가 요청하였습니다.</p><br>";
		msg += "<div><p>" + Hero + " 캐릭터로 요청하였습니다.</p><br>";
		msg += "<div><p>" + ID + " : " + Msg + "</p><br>";
				
		Properties pro = new Properties();
		pro.put("mail.smtp.user", Email);
		pro.put("mail.smtp.host", "smtp.gmail.com");
		pro.put("mail.smtp.port", "465");
		pro.put("mail.smtp.starttls.enable", "true");
		pro.put("mail.smtp.auth", "true");
		pro.put("mail.smtp.debug", "true");
		pro.put("mail.smtp.socketFactory.port", "465");
		pro.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		pro.put("mail.smtp.socketFactory.fallback", "false"); // SMTP 서버에 접속하기 위한 정보들
			try {
				Session mailSession = Session.getInstance(pro, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						String GmailID = request.getParameter("Email").toString();
						String GmailPW = request.getParameter("Password").toString();
						return new PasswordAuthentication(GmailID, GmailPW); // gmail 메일 ID / PWD 
					}
				});
				mailSession.setDebug(true); // Create a default MimeMessage object.
				Message message = new MimeMessage(mailSession); // Set From: header field of the header. 
				message.setFrom(new InternetAddress(src)); // Set To: header field of the header. 
				message.addRecipient(Message.RecipientType.TO, new InternetAddress("tjdqo007@gmail.com")); // Set Subject: header field
				message.setSubject(sbj); // Now set the actual message 
				message.setContent(msg, "text/html; charset=UTF-8"); // 내용과 인코딩 // Send message 
				Transport.send(message); // System.out.println("Sent message successfully...."); // sResult = "Sent message successfully...."; 
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("Error: unable to send message...." + e.toString());
			}
		} catch (Exception err) {
			System.out.println("Email 전송 실패: " + err.toString());
		}
	%>
</body>
</html>