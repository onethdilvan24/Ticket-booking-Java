<%-- 
    Document   : Select_seat
    Created on : Nov 30, 2024, 10:05:24 AM
    Author     : mudithmilinda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Select Seat</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="./css/select_seat.css">
        <link rel="stylesheet" href="./css/header.css">
        <link rel="stylesheet" href="./css/footer.css">

    </head>
    <body>


        <!--    Navbar-->

        <%@include file="./components/header.jsp" %>

        <!-- page-header -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-caption">
                            <h1 class="page-title">SELECT SEATS</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- movie name  -->


        <div class="card-section">
            <div class="container">
                <div class="card-block mb30">
                    <div class="row">
                        <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
                            <!-- section-title -->
                            <div class="section-title mb-0">
                                <h2>VENOM: THE LAST DANCE</h2>
                                <select name="pets" id="pet-select">
                                    <option value="">Select Theater</option>
                                    <option value="dog">LIBERTY BY SCOPE CINEMAS - Colpetty</option>
                                    <option value="cat">SCOPE CINEMAS MULTIPLEX - Colombo City Centre</option>
                                    <option value="hamster">LIBERTY BY SCOPE CINEMAS - Kiribathgoda</option>
                                    <option value="parrot">SCOPE CINEMAS MULTIPLEX - Havelock City Mall</option>
                                    <option value="spider">PVR One Galle Face Mall</option>
                                </select>

                                <select name="pets" id="pet-select" class="mt-4">
                                    <option value="">Select time</option>
                                    <option value="dog">11:00 AM</option>
                                    <option value="cat">01:30 PM</option>
                                    <option value="hamster">04:00 PM</option>
                                    <option value="parrot">10:00 PM</option>

                                </select>

                            </div>
                            <!-- /.section-title -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- seat -->

    <div class="container py-5">
        <h1 class="text-center mb-4">Movie Seat Booking</h1>

        <!-- Screen Section -->
        <div class="screen mx-auto">SCREEN</div>

        <!-- Seat Layout -->
        <div class="d-flex justify-content-center flex-wrap">
            <!-- Example row of seats -->
            <div class="seat available" data-status="available">A1</div>
            <div class="seat available" data-status="available">A2</div>
            <div class="seat available" data-status="available">A3</div>
            <div class="seat available" data-status="available">A4</div>
            <div class="seat available" data-status="available">A5</div>
            <div class="seat available" data-status="available">A6</div>
            <div class="seat available" data-status="available">A7</div>
            <div class="seat available" data-status="available">A8</div>
            <!-- Repeat rows as needed -->
        </div>

        <div class="d-flex justify-content-center flex-wrap">
            <!-- Example row of seats -->
            <div class="seat available" data-status="available">B1</div>
            <div class="seat reserved" data-status="reserved">B2</div>
            <div class="seat available" data-status="available">B3</div>
            <div class="seat available" data-status="available">B4</div>
            <div class="seat available" data-status="available">B5</div>
            <div class="seat available" data-status="available">B6</div>
            <div class="seat available" data-status="available">B7</div>
            <div class="seat unavailable" data-status="unavailable">B8</div>
            <!-- Repeat rows as needed -->
        </div>


        <div class="d-flex justify-content-center flex-wrap">
            <!-- Example row of seats -->
            <div class="seat available" data-status="available">D1</div>
            <div class="seat available" data-status="available">D2</div>
            <div class="seat available" data-status="available">D3</div>
            <div class="seat available" data-status="available">D4</div>
            <div class="seat available" data-status="available">D5</div>
            <div class="seat reserved" data-status="reserved">D6</div>
            <div class="seat reserved" data-status="reserved">D7</div>
            <div class="seat available" data-status="available">D8</div>
            <!-- Repeat rows as needed -->
        </div>

        <div class="d-flex justify-content-center flex-wrap">
            <!-- Example row of seats -->
            <div class="seat reserved" data-status="reserved">E1</div>
            <div class="seat reserved" data-status="reserved">E2</div>
            <div class="seat reserved" data-status="reserved">E3</div>
            <div class="seat reserved" data-status="reserved">E4</div>
            <div class="seat available" data-status="available">E5</div>
            <div class="seat available" data-status="available">E6</div>
            <div class="seat available" data-status="available">E7</div>
            <div class="seat available" data-status="available">E8</div>
            <!-- Repeat rows as needed -->
        </div>

        <div class="d-flex justify-content-center flex-wrap">
            <!-- Example row of seats -->
            <div class="seat available" data-status="available">F1</div>
            <div class="seat reserved" data-status="reserved">F2</div>
            <div class="seat available" data-status="available">F3</div>
            <div class="seat available" data-status="available">F4</div>
            <div class="seat available" data-status="available">F5</div>
            <div class="seat available" data-status="available">F6</div>
            <div class="seat available" data-status="available">F7</div>
            <div class="seat available" data-status="available">F8</div>
            <!-- Repeat rows as needed -->
        </div>



        <!-- Legend -->
        <div class="legend d-flex justify-content-center mt-4">
            <div class="legend-item">
                <span class="bg-primary"></span> Selected
            </div>
            <div class="legend-item">
                <span class="bg-light"></span> Available
            </div>
            <div class="legend-item">
                <span class="bg-secondary"></span> Reserved
            </div>
            <div class="legend-item">
                <span class="bg-success"></span> Unavailable
            </div>
        </div>
    </div>


    <!-- Seat Count and Total Section -->

    <div class="d-flex justify-content-center mt-5 h-100">
        <div class="d-flex align-items-center align-self-center card p-3 text-center cookies">
            <!-- Ticket Price and Total Calculation -->
            <div class="mt-4">
                <h3>Selected Seats: <span id="selectedSeats"></span></h3>
                <h3>Total Tickets: <span id="seatCount">0</span></h3>
                <h3>Ticket Price: <span id="ticketPrice">500</span> LKR</h3>
                <h3>Total Price: <span id="totalPrice">0</span> LKR</h3>
            </div>

            <!-- Form to send data -->
            <form id="ticketForm" action="payment.jsp" method="POST">
    <input type="hidden" name="adultCount" id="hiddenAdultCount" value="1">
    <input type="hidden" name="childCount" id="hiddenChildCount" value="0">
    <input type="hidden" name="totalPrice" id="hiddenTotalPrice" value="3575">
    <button type="submit" class="btn btn-primary mt-3">Proceed</button>
</form>
        </div>
    </div>      



    <%@include file="./components/footer.jsp" %>



    <script>


       // JavaScript for seat selection and total price calculation
    const seats = document.querySelectorAll('.seat.available');
    const selectedSeatsElement = document.getElementById('selectedSeats');
    const seatCountElement = document.getElementById('seatCount');
    const ticketPriceElement = document.getElementById('ticketPrice');
    const totalPriceElement = document.getElementById('totalPrice');
    const hiddenSelectedSeats = document.getElementById('hiddenSelectedSeats');
    const hiddenTotalPrice = document.getElementById('hiddenTotalPrice');
    const ticketPrice = parseInt(ticketPriceElement.textContent);

    seats.forEach(seat => {
        seat.addEventListener('click', () => {
            seat.classList.toggle('selected');

            // Get all selected seats
            const selectedSeats = document.querySelectorAll('.seat.selected');
            const selectedSeatNumbers = Array.from(selectedSeats).map(seat => seat.textContent);

            // Calculate total price
            const totalSeats = selectedSeatNumbers.length;
            const totalPrice = totalSeats * ticketPrice;

            // Update DOM and hidden inputs
            seatCountElement.textContent = totalSeats;
            selectedSeatsElement.textContent = selectedSeatNumbers.join(', ');
            totalPriceElement.textContent = totalPrice;
            hiddenSelectedSeats.value = selectedSeatNumbers.join(',');
            hiddenTotalPrice.value = totalPrice;
        });
    });



    </script>

    <link rel="stylesheet" href="select_seat.js">


</body>
</html>
