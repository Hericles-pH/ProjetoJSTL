function upload(){
	
	var target = $("#teste");
	
	var file =("#input");
	
	var reader = new FileReader();
	
	reader.onloadend = function(){
		
		target.src = reader.result;
		//Upload Imagem via ajax
		$.ajax({
			method : "POST",
			url : "/Upload",	
			data : { fielUpload: reader.result }	
		}).done	(function(response) {
			alert("Sucesso");
		}).fail(function(xhr, status, erroThrown) {
			alert("Erro: "+xhr.responseText);
		})
	}
	
	

}