
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

import com.iph.Online_Voting.model.CandidateBean;
import com.iph.Online_Voting.model.StudentBean;
import com.iph.Online_Voting.Dao.RegisterDao;

/**
 * Servlet implementation class RegisterServlet
 */
public class CanregServlet extends HttpServlet {
	String first_name,last_name,email,department,password,dateofbirth,prn,gender,photo;
	
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CanregServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CandidateBean s=new CandidateBean();
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
			
			password=request.getParameter("password");
			s.setPassword(password);
			
		
			
			department=request.getParameter("department");
			s.setDepartment(department);
			
			prn=request.getParameter("prn");
			s.setPrn(prn);
			
			gender=request.getParameter("gender");
			s.setGender(gender);
			
			photo=request.getParameter("photo");
			s.setGender(photo);
			
			a=rd.candidateRegister(s);
			if(a) {
				request.setAttribute("msg", "registration of student successfully done" );
				RequestDispatcher obj = request.getRequestDispatcher("canlogin.jsp");
				obj.forward(request, response);
			}
			else {
				request.setAttribute("msg", "registration of student not done successfully" );
				RequestDispatcher obj = request.getRequestDispatcher("canreg.jsp");
				obj.include(request, response);
			}
			
		}else {
			System.out.println("hii");
		}
		
	}

}
