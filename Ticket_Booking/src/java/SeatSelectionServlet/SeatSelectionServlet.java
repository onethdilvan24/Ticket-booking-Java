/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package SeatSelectionServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SeatSelectionServlet")
public class SeatSelectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String selectedSeats = request.getParameter("selectedSeats");
        String totalPrice = request.getParameter("totalPrice");

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        out.println("<h1>Seat Selection Confirmation</h1>");
        if (selectedSeats != null && !selectedSeats.isEmpty()) {
            out.println("<p>Selected Seats: " + selectedSeats + "</p>");
            out.println("<p>Total Price: " + totalPrice + " LKR</p>");
        } else {
            out.println("<p>No seats selected.</p>");
        }
        out.println("<a href='select_seat.jsp'>Go Back</a>");
        out.println("</body></html>");
    }
}

