package Inicio;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/perfil/foto")
public class DownloadFileServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        File arquivo = new File("C:\\notas.rar");
        String nome = arquivo.getName();
        int tamanho = (int) arquivo.length();
        Path path = arquivo.toPath();

        response.setContentType("text/html"); // tipo do conteúdo
        response.setContentLength(tamanho);  // opcional
        response.setHeader("Content-Disposition", "attachment; filename=\"" + nome + "\"");

        OutputStream output = response.getOutputStream();
		Files.copy(path , output);
    }
}