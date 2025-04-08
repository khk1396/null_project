/* INPUT 기능 관련 함수 모음 */


/**
 * 
 * @param inputContainerIdentifier String #id 또는 .class
 */

function onFocusShrinkInput(inputContainerIdentifier) {
	const inputContainer = document.querySelector(inputContainerIdentifier + '.input-container');
	inputContainer.classList.add('focus');
}