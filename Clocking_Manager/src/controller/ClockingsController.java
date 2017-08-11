package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Clockings;

/**
 * Servlet implementation class ClockingsController
 */
@WebServlet("/ClockingsController")
public class ClockingsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClockingsController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Clockings clockings = new Clockings();
		clockings.setWeek1day1in1(request.getParameter("week1day1in1"));
		clockings.setWeek1day2in1(request.getParameter("week1day2in1"));
		clockings.setWeek1day3in1(request.getParameter("week1day3in1"));
		clockings.setWeek1day4in1(request.getParameter("week1day4in1"));
		clockings.setWeek1day5in1(request.getParameter("week1day5in1"));
		clockings.setWeek1day6in1(request.getParameter("week1day6in1"));
		clockings.setWeek1day7in1(request.getParameter("week1day7in1"));
		clockings.setWeek1day1out1(request.getParameter("week1day1out1"));
		clockings.setWeek1day2out1(request.getParameter("week1day2out1"));
		clockings.setWeek1day3out1(request.getParameter("week1day3out1"));
		clockings.setWeek1day4out1(request.getParameter("week1day4out1"));
		clockings.setWeek1day5out1(request.getParameter("week1day5out1"));
		clockings.setWeek1day6out1(request.getParameter("week1day6out1"));
		clockings.setWeek1day7out1(request.getParameter("week1day7out1"));
		clockings.setWeek1day1in2(request.getParameter("week1day1in2"));
		clockings.setWeek1day2in2(request.getParameter("week1day2in2"));
		clockings.setWeek1day3in2(request.getParameter("week1day3in2"));
		clockings.setWeek1day4in2(request.getParameter("week1day4in2"));
		clockings.setWeek1day5in2(request.getParameter("week1day5in2"));
		clockings.setWeek1day6in2(request.getParameter("week1day6in2"));
		clockings.setWeek1day7in2(request.getParameter("week1day7in2"));
		clockings.setWeek1day1out2(request.getParameter("week1day1out2"));
		clockings.setWeek1day2out2(request.getParameter("week1day2out2"));
		clockings.setWeek1day3out2(request.getParameter("week1day3out2"));
		clockings.setWeek1day4out2(request.getParameter("week1day4out2"));
		clockings.setWeek1day5out2(request.getParameter("week1day5out2"));
		clockings.setWeek1day6out2(request.getParameter("week1day6out2"));
		clockings.setWeek1day7out2(request.getParameter("week1day7out2"));
		clockings.setWeek2day1in1(request.getParameter("week2day1in1"));
		clockings.setWeek2day2in1(request.getParameter("week2day2in1"));
		clockings.setWeek2day3in1(request.getParameter("week2day3in1"));
		clockings.setWeek2day4in1(request.getParameter("week2day4in1"));
		clockings.setWeek2day5in1(request.getParameter("week2day5in1"));
		clockings.setWeek2day6in1(request.getParameter("week2day6in1"));
		clockings.setWeek2day7in1(request.getParameter("week2day7in1"));
		clockings.setWeek2day1out1(request.getParameter("week2day1out1"));
		clockings.setWeek2day2out1(request.getParameter("week2day2out1"));
		clockings.setWeek2day3out1(request.getParameter("week2day3out1"));
		clockings.setWeek2day4out1(request.getParameter("week2day4out1"));
		clockings.setWeek2day5out1(request.getParameter("week2day5out1"));
		clockings.setWeek2day6out1(request.getParameter("week2day6out1"));
		clockings.setWeek2day7out1(request.getParameter("week2day7out1"));
		clockings.setWeek2day1in2(request.getParameter("week2day1in2"));
		clockings.setWeek2day2in2(request.getParameter("week2day2in2"));
		clockings.setWeek2day3in2(request.getParameter("week2day3in2"));
		clockings.setWeek2day4in2(request.getParameter("week2day4in2"));
		clockings.setWeek2day5in2(request.getParameter("week2day5in2"));
		clockings.setWeek2day6in2(request.getParameter("week2day6in2"));
		clockings.setWeek2day7in2(request.getParameter("week2day7in2"));
		clockings.setWeek2day1out2(request.getParameter("week2day1out2"));
		clockings.setWeek2day2out2(request.getParameter("week2day2out2"));
		clockings.setWeek2day3out2(request.getParameter("week2day3out2"));
		clockings.setWeek2day4out2(request.getParameter("week2day4out2"));
		clockings.setWeek2day5out2(request.getParameter("week2day5out2"));
		clockings.setWeek2day6out2(request.getParameter("week2day6out2"));
		clockings.setWeek2day7out2(request.getParameter("week2day7out2"));
		clockings.setWeek3day1in1(request.getParameter("week3day1in1"));
		clockings.setWeek3day2in1(request.getParameter("week3day2in1"));
		clockings.setWeek3day3in1(request.getParameter("week3day3in1"));
		clockings.setWeek3day4in1(request.getParameter("week3day4in1"));
		clockings.setWeek3day5in1(request.getParameter("week3day5in1"));
		clockings.setWeek3day6in1(request.getParameter("week3day6in1"));
		clockings.setWeek3day7in1(request.getParameter("week3day7in1"));
		clockings.setWeek3day1out1(request.getParameter("week3day1out1"));
		clockings.setWeek3day2out1(request.getParameter("week3day2out1"));
		clockings.setWeek3day3out1(request.getParameter("week3day3out1"));
		clockings.setWeek3day4out1(request.getParameter("week3day4out1"));
		clockings.setWeek3day5out1(request.getParameter("week3day5out1"));
		clockings.setWeek3day6out1(request.getParameter("week3day6out1"));
		clockings.setWeek3day7out1(request.getParameter("week3day7out1"));
		clockings.setWeek3day1in2(request.getParameter("week3day1in2"));
		clockings.setWeek3day2in2(request.getParameter("week3day2in2"));
		clockings.setWeek3day3in2(request.getParameter("week3day3in2"));
		clockings.setWeek3day4in2(request.getParameter("week3day4in2"));
		clockings.setWeek3day5in2(request.getParameter("week3day5in2"));
		clockings.setWeek3day6in2(request.getParameter("week3day6in2"));
		clockings.setWeek3day7in2(request.getParameter("week3day7in2"));
		clockings.setWeek3day1out2(request.getParameter("week3day1out2"));
		clockings.setWeek3day2out2(request.getParameter("week3day2out2"));
		clockings.setWeek3day3out2(request.getParameter("week3day3out2"));
		clockings.setWeek3day4out2(request.getParameter("week3day4out2"));
		clockings.setWeek3day5out2(request.getParameter("week3day5out2"));
		clockings.setWeek3day6out2(request.getParameter("week3day6out2"));
		clockings.setWeek3day7out2(request.getParameter("week3day7out2"));
		clockings.setWeek4day1in1(request.getParameter("week4day1in1"));
		clockings.setWeek4day2in1(request.getParameter("week4day2in1"));
		clockings.setWeek4day3in1(request.getParameter("week4day3in1"));
		clockings.setWeek4day4in1(request.getParameter("week4day4in1"));
		clockings.setWeek4day5in1(request.getParameter("week4day5in1"));
		clockings.setWeek4day6in1(request.getParameter("week4day6in1"));
		clockings.setWeek4day7in1(request.getParameter("week4day7in1"));
		clockings.setWeek4day1out1(request.getParameter("week4day1out1"));
		clockings.setWeek4day2out1(request.getParameter("week4day2out1"));
		clockings.setWeek4day3out1(request.getParameter("week4day3out1"));
		clockings.setWeek4day4out1(request.getParameter("week4day4out1"));
		clockings.setWeek4day5out1(request.getParameter("week4day5out1"));
		clockings.setWeek4day6out1(request.getParameter("week4day6out1"));
		clockings.setWeek4day7out1(request.getParameter("week4day7out1"));
		clockings.setWeek4day1in2(request.getParameter("week4day1in2"));
		clockings.setWeek4day2in2(request.getParameter("week4day2in2"));
		clockings.setWeek4day3in2(request.getParameter("week4day3in2"));
		clockings.setWeek4day4in2(request.getParameter("week4day4in2"));
		clockings.setWeek4day5in2(request.getParameter("week4day5in2"));
		clockings.setWeek4day6in2(request.getParameter("week4day6in2"));
		clockings.setWeek4day7in2(request.getParameter("week4day7in2"));
		clockings.setWeek4day1out2(request.getParameter("week4day1out2"));
		clockings.setWeek4day2out2(request.getParameter("week4day2out2"));
		clockings.setWeek4day3out2(request.getParameter("week4day3out2"));
		clockings.setWeek4day4out2(request.getParameter("week4day4out2"));
		clockings.setWeek4day5out2(request.getParameter("week4day5out2"));
		clockings.setWeek4day6out2(request.getParameter("week4day6out2"));
		clockings.setWeek4day7out2(request.getParameter("week4day7out2"));
		
		request.setAttribute("week1day1in1", clockings.getWeek1day1in1());
	
		request.getRequestDispatcher("/mainpage.jsp").forward(request, response);
	}

}
