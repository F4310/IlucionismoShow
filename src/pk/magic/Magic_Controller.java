package pk.magic;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;


import pk.entidade.Entidade_Magica;

@WebServlet("/Magic_Controller")
public class Magic_Controller extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
	
	//variavel globald a soma magica
	int somaMagica = 0;
	
	public Magic_Controller() {
		super();
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		
		Entidade_Magica Ent_Magica = new Entidade_Magica();
		request.getSession().setAttribute("Magica", Ent_Magica); //cria uma session com nome Magica
		
		if(request.getParameter("btn_try1")!= null){
		
			
			//captura variaveis (numeros) dos radios do JSP (HTML)
			int radio = Integer.parseInt(request.getParameter("radio01"));
			radio = Integer.parseInt(request.getParameter("radio02")) + radio;
			
			somaMagica = radio;
	
			//redireciona para segunda Pagina
			response.sendRedirect("try2.jsp");
	
		}else if(request.getParameter("btn_try2")!= null){

			//captura variaveis (numeros) dos radios do JSP (HTML)
			int radio = Integer.parseInt(request.getParameter("radio03"));
			radio = Integer.parseInt(request.getParameter("radio04")) + radio;
			
			//soma os resultados na variavel
			somaMagica = somaMagica + radio;
		

			//redireciona para segunda Pagina
			response.sendRedirect("try3.jsp");
		}
		
		else{
		

			//captura variaveis (numeros) dos radios do JSP (HTML)
			int radio = Integer.parseInt(request.getParameter("radio05"));
			radio = Integer.parseInt(request.getParameter("radio06")) + radio;
			
			//soma os resultados na variavel
			somaMagica = somaMagica + radio;
			
			System.out.println(somaMagica);
			
			//envia o resultado para Entidade para que a pagina grandFinale dêu get
			// exiba o resultado
			Ent_Magica.setSoma_Magica(somaMagica);
			
			//redireciona para segunda Pagina
			response.sendRedirect("grandFinale.jsp");
		}
		
	
		

	}

}
