/**
 * member.js
 */
 function idCheck() {
	if(document.frm.userid.value == ""){
		alert('아이디를 입력해 주세요!');
		document.frm.userid.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blank_1",
	"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
	//서버의 idCheck.do로 userid를 get방식으로 보내 그 결과를 팝업창에 보여준다.
}