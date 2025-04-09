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

/* 중복 확인 요청 */
async function onClickCheckExistId(id) {
	let isExist = false;
	// TODO: url 주소 설정
	// 비동기 요청 처리 
	// fetch 헤더 데이터 설정
	// 가능하면 fetch api로
	isExist = await fetch('/sign/checkExistId', {
		method: "GET",
		headers: {
		  "Content-Type": "application/json",
		},
		body: {
			// 요청한 데이터가 어떻게 들어오는지 확인
		},
	});

	return result; 
};