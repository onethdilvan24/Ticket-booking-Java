import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/pay")
public class PaymentController extends HttpServlet {
    private PayPalConfig payPalConfig = new PayPalConfig();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String total = request.getParameter("amount");
        String currency = "USD";

        Amount amount = new Amount();
        amount.setCurrency(currency);
        amount.setTotal(total);

        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        transaction.setDescription("Baila 24 Concert Ticket");

        List<Transaction> transactions = new ArrayList<>();
        transactions.add(transaction);

        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");

        Payment payment = new Payment();
        payment.setIntent("sale");
        payment.setPayer(payer);
        payment.setTransactions(transactions);
        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl("http://localhost:8080/cancel");
        redirectUrls.setReturnUrl("http://localhost:8080/success");
        payment.setRedirectUrls(redirectUrls);

        try {
            APIContext apiContext = payPalConfig.getApiContext();
            Payment createdPayment = payment.create(apiContext);
            for (Links link : createdPayment.getLinks()) {
                if (link.getRel().equals("approval_url")) {
                    response.sendRedirect(link.getHref());
                    return;
                }
            }
        } catch (PayPalRESTException e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}
