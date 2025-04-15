let isCheckNickNameExist = false  // 중복 체크 여부
let isProcessing = false;         // 중복 클릭 방지

/* 닉네임 유효성 검사 */
function checkNickName() {
	const value = document.getElementById('sign-up-nickname').value.trim();
	const regExp = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]+$/;
	
	return regExp.test(value);
}

/* 닉네임 중복 확인 비동기 요청 */
function checkNickNameExist() {
	const userNickName = document.getElementById('sign-up-nickname').value.trim();
	const orgNickName = document.getElementById('sign-up-orgNickName').value.trim();	
	const button = document.getElementById('check-nickName-btn');
	
	console.log ("userNickName Exist:" + userNickName);
	if (userNickName === orgNickName) { // 본인거는 가능해야
		showToast("사용 가능한 닉네임입니다.", button);
		isCheckNickNameExist = true;
		return;
	}
	if(!userNickName) {
		showToast('닉네임을 입력해주세요.', button);
		return;
	}
	// 경로 문제를 체크해야 할거 같다. 
	fetch('/semi_box/checkNickName', {
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

function changeMemberInfo() {
	if (isProcessing) return;
	isProcessing = true;
	const userId = document.getElementById('sign-up-userId').value.trim();
	const userNickName = document.getElementById('sign-up-nickname').value.trim();
	const address = document.getElementById('sign-up-address').value.trim();
	const button = document.getElementById('change-member-info-btn');
	
	const regExp = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]+$/;

	console.log(userId);        // 아이디
	console.log(userNickName);  // 닉네임
	console.log(address);       // 배송지
	
	if(userNickName === "") {
		showToast('닉네임을 입력하세요.', button);
		isProcessing = false;
		return false;
	}	
	if(address === "") {
		showToast('배송지를 입력하세요.', button);
		isProcessing = false;
		return false;
	}

	if(!isCheckNickNameExist) {
		showToast('닉네임 중복검사를 하세요.', button);
		isProcessing = false;
		return false;
	}

	if(!regExp.test(userNickName)) {
		showToast('닉네임을 확인하세요.\n(특수문자 제외 한글/영문)');	
		isProcessing = false;
		return false;
	} 
	else {
			// 버튼 비활성화
			button.disabled = true;
	
			fetch(`${contextPath}/ChangeMemberInfo`, {
			    method: 'POST',
			    headers: {
			        'Content-Type': 'application/x-www-form-urlencoded'
			    },
				body: `sign-up-userId=${encodeURIComponent(userId)}&sign-up-nickname=${encodeURIComponent(userNickName)}&sign-up-address=${encodeURIComponent(address)}`
			})
			.then(res => res.text())
			.then(data => {
			    const result = Number(data);
			    if (result > 0) {
					showToast('회원 정보 변경 완료 되었습니다.', button);
			        setTimeout(() => {
			            location.href = `${contextPath}`;
			        }, 1500);
			    } else {
			        showToast("회원 정보 변경에 싶래하였습니다.", button);
			    }
			})
			.catch(err => {
			    console.error("회원 정보 변경중 에러 발생:", err);
			    showToast("잠시 후 다시 시도해주세요.", button);
			})
			.finally(() => {
			    button.disabled = false;
			    isProcessing = false;
			});
		};
}

/* 비밀번호 유효성 검사 및 변경 */
function changePassword() {
	if (isProcessing) return;
	isProcessing = true;
	const userId = document.getElementById('userId').value.trim();
	const currentPwd = document.getElementById('current-pwd').value.trim();
	const changePwd = document.getElementById('change-pwd').value.trim();
	const changePwdCheck = document.getElementById('change-pwd-check').value.trim();
	const button = document.getElementById('change-password-btn');

	console.log(userId);         // 아이디
	console.log(currentPwd);     // 현재 비밀번호
	console.log(changePwd);      // 변경할 비밀번호
	console.log(changePwdCheck); // 변경할 비밀번호 확인
	
	if(currentPwd === "" || changePwd === "" || changePwdCheck === "") {
		showToast('비밀번호를 입력해주세요.', button);
		isProcessing = false;
		return false;
	}	
	
	if(changePwd !== changePwdCheck) {
		showToast('변경할 비밀번호와 비밀번호 확인이 다릅니다.', button);
		isProcessing = false;
		return false;
	}

	// 비밀번호 최소 8자 ~ 최대 30
	// 한글, 공백 제외 모든 문자(특수문자, 숫자 포함) 가능
	const regExp = /[ㄱ-ㅎㅏ-ㅣ가-힣]/g;
	if(regExp.test(changePwd)) { // 한글을 포함하고 있으면 false 반환
		showToast('변경할 비밀번호 입력을 확인하세요\n(최소 8자 ~ 최대 30자 특수문자, 숫자 포함 가능 공백(x))', button);
		isProcessing = false;
		return false;
	} else {
		if(changePwd.length >= 8 && changePwd.length <= 30) { // 한글을 포함하지 않는 문자 중 8자 이 30자 이하면 true
		} else { // 변경할 비밀번호 규칙에 어긋난 경우 
			showToast('변경할 비밀번호 입력을 확인하세요\n(최소 8자 ~ 최대 30자 특수문자, 숫자 포함 가능 공백(x))', button);
			isProcessing = false;
			return false;
		}
	};
	
	// 버튼 비활성화
	button.disabled = true;

	fetch(`${contextPath}/ChangePassword`, {
	    method: 'POST',
	    headers: {
	        'Content-Type': 'application/x-www-form-urlencoded'
	    },
		body: `userId=${encodeURIComponent(userId)}&current-pwd=${encodeURIComponent(currentPwd)}&change-pwd=${encodeURIComponent(changePwd)}`
	})
	.then(res => res.text())
	.then(data => {
		console.log("fetch data"); //
		
	    const result = Number(data);
	    if (result > 0) {
			showToast('비밀번호 변경 완료 되었습니다.\n재 로그인 하세요.', button);
	        setTimeout(() => {
	            location.href = `${contextPath}`;
	        }, 1500);
	    } else {
	        showToast("비밀번호 변경에 실패했습니다. 현재 비밀번호를 확인하세요.", button);
	    }
	})
	.catch(err => {
	    console.error("비밀번호 확인 중 에러 발생:", err);
	    showToast("잠시 후 다시 시도해주세요.", button);
	})
	.finally(() => {
	    button.disabled = false;
	    isProcessing = false;
	});	
}

function checkPasswordAndWithdraw() {
    if (isProcessing) return;
    isProcessing = true;

    const userPassword = document.getElementById('current-pwd').value.trim();
    const userId = document.getElementById('user-id').value.trim();
    const button = document.getElementById('check-password-btn');

    if (!userPassword) {
        showToast("비밀번호를 입력해주세요.", button);
        isProcessing = false;
        return;
    }

    // 버튼 비활성화
    button.disabled = true;

    fetch(`${contextPath}/checkPassword`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: `userId=${encodeURIComponent(userId)}&userPassword=${encodeURIComponent(userPassword)}`
		
    })
    .then(res => res.text())
    .then(data => {
        const result = Number(data);

        if (result > 0) {
            showToast("회원 탈퇴가 완료되었습니다. 그동안 감사합니다.", button);
            setTimeout(() => {
                location.href = `${contextPath}`;
            }, 1500);
        } else {
            showToast("비밀번호가 일치하지 않습니다.", button);
        }
    })
    .catch(err => {
        console.error("비밀번호 확인 중 에러 발생:", err);
        showToast("잠시 후 다시 시도해주세요.", button);
    })
    .finally(() => {
        button.disabled = false;
        isProcessing = false;
    });
}

