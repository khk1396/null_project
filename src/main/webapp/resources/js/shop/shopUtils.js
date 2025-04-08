
// TODO 수량 조절 메서드 수정해야 함
function countProductQuantity() {
	let pricePerItem = 9900;
	let quantity = 2;

	function updateTotalPrice() {
		let totalPrice = pricePerItem * quantity;
		$("#totalPrice").text(totalPrice.toLocaleString());
		$("#quantity").text(quantity);
		$("#decreaseBtn").prop("disabled", quantity <= 1);
	}

	$("#increaseBtn").click(function() {
		quantity++;
		updateTotalPrice();
	});

	$("#decreaseBtn").click(function() {
		if (quantity > 1) {
			quantity--;
			updateTotalPrice();
		}
	});

	updateTotalPrice();
	
};