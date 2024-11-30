@WebServlet("/success")
public class SuccessController extends HttpServlet {
    private PayPalConfig payPalConfig = new PayPalConfig();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");

        try {
            APIContext apiContext = payPalConfig.getApiContext();

            Payment payment = Payment.get(apiContext, paymentId);
            PaymentExecution paymentExecution = new PaymentExecution();
            paymentExecution.setPayerId(payerId);

            Payment executedPayment = payment.execute(apiContext, paymentExecution);
            response.getWriter().write("Payment success! Transaction ID: " + executedPayment.getId());
        } catch (PayPalRESTException e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}
