// 공통 토스트 div 생성 함수
function showToast(message, targetButton = null) {
    const toast = document.getElementById("toast");

    toast.innerText = message;
    toast.style.opacity = "1";
    toast.style.transform = "translateX(-50%) translateY(20px)";

    if (targetButton) {
        targetButton.disabled = true;
    }

    setTimeout(() => {
        toast.style.opacity = "0";
        toast.style.transform = "translateX(-50%) translateY(-100%)";

        if (targetButton) {
            targetButton.disabled = false;
        }
    }, 2500);
}

function byteCount(str) {
  let count = 0;
  for (let i = 0; i < str.length; i++) {
    let charCode = str.charCodeAt(i);
    if (charCode <= 0x7f) {
      count += 1;
    } else if (charCode <= 0x7ff) {
      count += 2;
    } else if (charCode <= 0xffff) {
      count += 3;
    } else {
      count += 4;
    }
  }
  return count;
}