/* 회원 가입 유효성 검사 */
let isCheckIdExist = false;
let isCheckNickNameExist = false;


/* 아이디 유효성 검사 */
function checkIdAuth() {
	const value = document.getElementById('sign-up-userId').value.trim();
	// 영문 또는 숫자로 구성된 최소 길이(영문 3자) ~ 최대 길이(영문 30자)의 문자열
	const regExp = /^[a-zA-Z0-9][a-zA-Z0-9_]{3,30}$/g;
	
	return regExp.test(value);
}

/* 아이디 중복 확인 비동기 요청 */
function checkId() {
	const userId = document.getElementById('sign-up-userId').value.trim();
	const button = document.getElementById('check-id-btn');
	
	if(!userId) {
		showToast('아이디를 입력해주세요.', button);
		return;
	}
	
	fetch('checkId', {
		method: 'POST',
		headers: { 
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		body: `userId=${encodeURIComponent(userId)}`
	})
	.then(res => res.text())
	.then(data => {
		const result = Number(data);
		if(result > 0) {
			showToast("이미 사용중인 아이디입니다.", button);
			isCheckIdExist = false;
		} else {
			showToast("사용 가능한 아이디입니다.", button);
			isCheckIdExist = true;
		}
	})
	.catch(() => {
		showToast('', button)
	}); 
};

/* 비밀번호 유효성 검사 */
function checkPassword() {
	const value = document.getElementById('sign-up-userPwd').value.trim();
	const checkValue = document.getElementById('sign-up-pwdCheck').value.trim();
	
	if(value === "" || checkValue === "") {
		showToast('비밀번호를 입력해주세요.');
		return false;
	}
	
	// 비밀번호 최소 8자 ~ 최대 30
	// 한글, 공백 제외 모든 문자(특수문자, 숫자 포함) 가능
	  
	const regExp = /[ㄱ-ㅎㅏ-ㅣ가-힣]/g;
	
	if(regExp.test(value)) { // 한글을 포함하고 있으면 false 반환 
		return false;
	} else {
		if(value.length >= 8 && value.length <= 30) { // 한글을 포함하지 않는 문자 중 8자 이 30자 이하면 true
			return true;
		} else {
			return false;
		}
	};
}

/* 닉네임 유효성 검사 */
function checkNickName() {
	const value = document.getElementById('sign-up-nickname').value.trim();
	const regExp = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]+$/;
	
	console.log ("userNickName Check:" + value);
	
	return regExp.test(value);
}

/* 닉네임 중복 확인 비동기 요청 */
function checkNickNameExist() {
	const userNickName = document.getElementById('sign-up-nickname').value.trim();
	const button = document.getElementById('check-nickName-btn');
	
	console.log ("userNickName Exist:" + userNickName);
	
	if(!userNickName) {
		showToast('닉네임을 입력해주세요.', button);
		return;
	}
	
	fetch('checkNickName', {
		method: 'POST',
		headers: { 
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		body: `userNickName=${encodeURIComponent(userNickName)}`
	})
	.then(res => res.text())
	.then(data => {
		const result = Number(data);
		if(result > 0) {
			showToast("이미 사용중인 닉네임입니다.", button);
			isCheckNickNameExist = false;			
		} else {
			showToast("사용 가능한 닉네임입니다.", button);
			isCheckNickNameExist = true;
		}
	})
	.catch(() => {
		showToast('', button)
	}); 
};

function submitSignUp() {
	// 아이디 유효성 검사
	const isCheckIdAuth = checkIdAuth();
	if(!isCheckIdAuth) {
		showToast("아이디 형식을 확인해주세요.");
		return false;
	}
	
	// 아이디 중복 검사 : isCheckId
	
	// 비밀번호 유효성 검사
	const isCheckPassword = checkPassword();
	if(!isCheckPassword) {
		showToast("비밀번호를 확인해주세요.");
		return false;
	}
	
	// 닉네임 유효성 검사
	const isCheckNickName = checkNickName();
	if(!isCheckNickName) {
		showToast("닉네임을 확인해주세요.");
		return false;
	}
	
	// 닉네임 중복 검사 : isCheckNinkNameExist
	
	// NOTI: 위 5개 상태 모두 true 여야 submit 요청 가능
	return  isCheckIdAuth && isCheckIdExist && isCheckPassword && isCheckNickName && isCheckNickNameExist;
}