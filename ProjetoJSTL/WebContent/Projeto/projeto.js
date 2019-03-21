
function updateImagem(imagem) {
	let imagemPrevia = document.getElementById("imagemPrev");
	let base64 = document.querySelector("input[name='img']");
	let leitor = new FileReader();

	leitor.onload = function(imagem) {
		let resultado = imagem.target.result; // <--- base64
		imagemPrevia.src = resultado;
		base64.value = resultado;
	}

	leitor.readAsDataURL(imagem.files[0])

}