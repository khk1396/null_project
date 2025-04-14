function addElementList(listData, callbackAddItem) {
	let elementList = ``;

	for(let i = 0; i < listData.length; i++) {
		const elementData = listData[i];
		if(elementData != null) {
			elementList += callbackAddItem(elementData);
		}
	}
	
	return elementList;
}

function addProductItem(product) {
	const productImg = product.productImg;
	const productName = product.productName;
	const productDescription = product.productDescription;

	return ` 
		<span class="prod-item-container card box-shadow" >
			<span class="prod-item card img-container" >
				<img class="prod-item card img" src="${productImg}" />
			</span>
			<span class="prod-item card info-container" >
				<div class="prod-item card title" >
					${productName}
				</div>
				<div class="prod-item card des" >
					${productDescription}
				</div>
			</span>
		</span>
	`;
}

function addBoxItem(box) {
	const boxName = box.boxName;
	const boxImg = box.boxImg;
	const boxPrice = box.boxPrice;
	
	return ` 
		<span class="box-item-container card box-shadow" >
			<a class="box-item-link" href="/semi_box/shop/details?boxType=${boxName}" >
				<span class="box-item card img-container" >
					<img class="box-item card img" src="${boxImg}" />
				</span>
				<span class="box-item card info-container" >
					<div class="box-item card title">
						${boxName.toUpperCase()}
					</div>
					<div class="box-item card price">
						${boxPrice}원
					</div>
				</span>
			</a>
		</span>
	`;
}

window.onload = function() {
	fetch('/semi_box/main', {
		method: 'GET',
		headers: { 
			'Content-Type': 'application/json'
		}
	})
	.then(res => {
		return res.text();
	})
	.then(data => {
		data = JSON.parse(data);
		return data;
	})
	.then((data) => {
		const mainBoxListData = data.mainBoxList;
		const mainProductListData = data.mainProductList;
		
		// ADD BOX LIST
		// "main-page box-item-list"
		const mainBoxItemListSection = document.getElementById('main-box-item-section');
		const mainBoxItemListElement = document.createElement('div');
		
		// add class
		mainBoxItemListElement.classList.add("main-page");
		mainBoxItemListElement.classList.add("box-item-list");
		mainBoxItemListElement.innerHTML = addElementList(mainBoxListData, addBoxItem);
		
		mainBoxItemListSection.append(mainBoxItemListElement);
		
		// ADD PRODUCT LIST
		// "main-product-item-list"
		const mainProductItemListElement = document.createElement('div');
		const mainProductItemListSection = document.getElementById('main-product-item-list');
		
		mainProductItemListElement.classList.add('main-page');
		mainProductItemListElement.classList.add('box-item-list');
		mainProductItemListElement.innerHTML = addElementList(mainProductListData, addProductItem);
		
		mainProductItemListSection.append(mainProductItemListElement);
	})
	.catch(() => {
		console.log('서버 통신 에러');
	});
}