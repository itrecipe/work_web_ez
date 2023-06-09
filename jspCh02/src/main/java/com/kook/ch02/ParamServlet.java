package com.kook.ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParamServlet
 */

@WebServlet("/ps")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	public ParamServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		/* String getParaneter(String name)
		 * name변수는 form의 name속성의 값
		 * 반환값은 String(문자열)로 반환
		 * 반환값이 하나일때 사용한다.
		*/
		
		int age = Integer.parseInt(request.getParameter("age"));
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보다.<br>");
		out.println("아이디 : ");
		out.println(id);
		out.println("<br> 나이 : ");
		out.println(age);
		//자바스크립트로 이전 페이지로 이동하는 링크를 생성
		out.println("<br><a href='javascript:history.go(-1)'>refresh</a>");
		out.print("</body></html>");
		//출력 내용을 요청한 경로로 된 주소창을 갖는 페이지에 출력한다.
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		/* 클라이언트에서 오는 문자셋을 UTF-8로 간주하여 처리한다.
		 * getPrameter()이전에 설정 해야 한다.
		*/
		doGet(request, response);
	}
}