package com.kook.boardProject.controller;

import com.kook.boardProject.command.Action;
import com.kook.boardProject.command.BoardCheckPassAction;
import com.kook.boardProject.command.BoardCheckPassFormAction;
import com.kook.boardProject.command.BoardDeleteAction;
import com.kook.boardProject.command.BoardListAction;
import com.kook.boardProject.command.BoardUpdateAction;
import com.kook.boardProject.command.BoardUpdateFormAction;
import com.kook.boardProject.command.BoardViewAction;
import com.kook.boardProject.command.BoardWriteAction;
import com.kook.boardProject.command.BoardWriteFormAction;

public class ActionFactory {

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	// 외부에서 ActionFactory객체 instance를 얻을수 있는 메서드	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	//요청한 command별로 실행할 업무처리패키지 command의 클래스 반환
	//Action은 command의 인터페이스이고 모든 command처리 클래스는 Action을 구현 처리
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory에서 받은 요청 내역 확인 : " + command);
		/* 추가된 부분 */
		if (command.equals("board_list")) {
			action = new BoardListAction();
		}		
		else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} 
		
		else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} 
		
		else if (command.equals("board_view")) {
			action = new BoardViewAction();
		} 
		
		else if (command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();
		} 
		
		else if (command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();
		} 
		else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} 
		else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		}
		else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}
		return action;
	}
}
