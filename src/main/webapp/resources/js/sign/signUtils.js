// html head에 script 추가하면 jQuery 사용 가능 

/* 회원 가입 유효성 검사 */
function onChangeCheckAuthId(target) {
	let isAuthValue = true;
	const value = target.value;
	
	// 최소 길이(영문 3자) ~ 최대 길이(영문 30자)
	if(value.length < 3 || value.length > 30) {
		isAuthValue = false;
	}
	
	// 한글, 특수문자 입력 방지
	const regExp = 	/^[a-zA-Z0-9]$/;
	isAuthValue = regExp.test(value);
	
	return isAuthValue;
}

/* 아이디 중복 확인 비동기 요청 */
function checkId() {
	const userId = document.getElementById('sign-up-userId').value.trim();
	const button = document.getElementById('check-id-btn');
	
	if(!userId) {
		showToast('아이디를 입력하세요.', button);
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
		showToast(data, button);
	})
	.catch(() => {
		showToast('', button)
	}); 
	
};


/* 닉네임 중복 확인 비동기 요청 */
/* 아이디 중복 확인 비동기 요청 */
function checkNickName() {
	const userNickName = document.getElementById('sign-up-nickname').value.trim();
	const button = document.getElementById('check-nickName-btn');
	
	if(!userNickName) {
		showToast('닉네임을 입력하세요.', button);
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
		showToast(data, button);
	})
	.catch(() => {
		showToast('', button)
	}); 
};