/**
 * 2023.4.12 by h(feat.kook)
 */
 
function boardCheck(){
	if(document.frm.name.value.length == 0){
		alert("작성자를 입력하세요");
		return false;
	}
	if(document.frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요");
		return false;
	}
	if(document.frm.title.value.length == 0){
		alert("제목을 입력하세요");
		return false;
	}
	return true;
}