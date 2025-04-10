// 공통 토스트 함수
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