

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.iph.Online_Voting.Dao.RegisterDao;
import com.iph.Online_Voting.model.StudentBean;

/**
 * Servlet implementation class ContactServlet
 */
public class ContactServlet extends HttpServlet {
	String first_name,last_name,email,department,password,confirmpass,dateofbirth,prn,gender;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
/*	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ContactBean c=new ContactBean();
		boolean a;
		RegisterDao rd= new RegisterDao();
		
		
		if(request.getParameter("submit")!=null) {
		
		
			first_name=request.getParameter("firstname");
			s.setFirst_name(first_name);
			
			last_name=request.getParameter("lastname");
			s.setLast_name(last_name);
			
			dateofbirth=request.getParameter("dateofbirth");
			s.setDateofbirth(dateofbirth);
			
			
			email=request.getParameter("email");
			s.setEmail(email);
			
	}*/

}
