

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

import com.iph.Online_Voting.Dao.RegisterDao;
import com.iph.Online_Voting.model.StudentBean;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private String first_name,last_name,email,password,confirm_password, address,standard, date_of_birth ,gender ;
       
       private String student_mobile_no;
	private String parents_mobile_no;
       
       boolean a;
          /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
		StudentBean stud = new StudentBean();
		RegisterDao obj = new RegisterDao(); 
		System.out.println("Hello");
	if(request.getParameter("submit") !=null)
	{
		first_name=request.getParameter("first_name");
		stud.setFirst_name(first_name);
		
		System.out.println(standard);
		last_name=request.getParameter("last_name");
		stud.setLast_name(last_name);
		
		date_of_birth=request.getParameter("date_of_birth");
		stud.setDate_of_birth(date_of_birth);
		
		email=request.getParameter("email");
		stud.setEmail(email);
		
		password=request.getParameter("password");
		stud.setPassword(password);
		
		confirm_password=request.getParameter("confirm_password");
		stud.setConfirm_password(confirm_password);
		
		student_mobile_no=request.getParameter("student_mobile_no");
		stud.setStudent_mobile_no(student_mobile_no);
		
		parents_mobile_no=request.getParameter("parents_mobile_no");
		stud.setParents_mobile_no(parents_mobile_no);
		
		address=request.getParameter("address");
		stud.setAddress(address);
		
		standard=request.getParameter("standard");
		stud.setStandard(standard);
		
		System.out.println(standard);
		gender=request.getParameter("gender");
		stud.setGender(gender);
		
		a=obj.studentRegister(stud);
		if(a)
		{
			request.setAttribute("msg", "Registration successfully done");
			RequestDispatcher rd =request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			System.out.println("Sanika");
			
		}
		else
		{
			request.setAttribute("msg", "Registration not successfully done");
			RequestDispatcher rd =request.getRequestDispatcher("registration.jsp");
			rd.include(request, response);
			System.out.println("Chavan");
		}
	}
	else
	{
		System.out.println("hii");
	}
	

	}
}
