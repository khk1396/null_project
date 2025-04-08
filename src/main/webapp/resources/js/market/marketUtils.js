function onClickRegisteredItem(target) {
	// TODO: ajax를 사용하여 비동기 통신으로 데이터를 가져온다		
	const expanded = target.getAttribute('aria-expanded');
	const tradeList = document.getElementById(target.getAttribute('aria-controls'));

	if(expanded === 'true') {
		target.setAttribute('aria-expanded', 'false');
		tradeList.classList.remove('open');			
		setTimeout(function () {
			tradeList.setAttribute('display', 'none');
		}, 100);
	} else {
		target.setAttribute('aria-expanded', 'true');
		tradeList.setAttribute('display', 'block');			
		setTimeout(function () {
			tradeList.classList.add('open');
		}, 100);
	}
}