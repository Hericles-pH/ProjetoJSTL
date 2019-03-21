package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bd.dao.AvaliacaoDAO;
import Bean.AvaliacaoBean;

/**
 * Servlet implementation class UploadImagem
 */
@WebServlet(name="DownloadServlet", urlPatterns="/DownloadServlet.html")
@MultipartConfig(fileSizeThreshold=1024*1024, maxFileSize=1024*1024*5, maxRequestSize=1024*1024*5*5)
public class DownloadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static AvaliacaoDAO dao = new AvaliacaoDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println(request.getParameter("idProva"));
			dao.update(new AvaliacaoBean(request.getParameter("idProva"), request.getParameter("img")));
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("Projeto/view.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("").forward(request, response);
	}
	
}