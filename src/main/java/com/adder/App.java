package com.adder;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class App extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public App() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
			cfg.addAnnotatedClass(com.adder.AddingInfo.class);
			StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder()
					.applySettings(cfg.getProperties());

			SessionFactory factory = cfg.buildSessionFactory(builder.build());

			Session session = factory.openSession();

			Transaction tx = session.beginTransaction();

			AddingInfo af = new AddingInfo();

			String pName = request.getParameter("ProductName");
			af.setProductName(pName);

			String descr = request.getParameter("Description");
			af.setDescription(descr);

			int pri = Integer.parseInt(request.getParameter("Price"));
			af.setPrice(pri);

			session.save(af);

			tx.commit();

			session.close();

			RequestDispatcher rd = request.getRequestDispatcher("sucess.jsp");
			rd.forward(request, response);

		} catch (Exception ex) {
			ex.printStackTrace();

			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
	}
}
