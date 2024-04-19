<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>
<?php
    if(!isset($_SERVER['HTTP_REFERER'])) {
        echo "<script> window.location.href= '".APPURL."'</script>"; 
        exit;
    }

?>
    <div class="container" style="margin-top: 100px">  
                    <!-- Replace "test" with your own sandbox Business account app client ID -->
                    <script src="https://www.paypal.com/sdk/js?client-id=AXuKqGRgWgkO7NkljK1fELC2lmmMIcJEBBVirqmBUNhSLRlu5g16r-h8CKEybSZC4zsIn30ZpNdLmLpP&currency=USD"></script>
                    <!-- Set up a container element for the button -->
                    <div id="paypal-button-container"></div>
                    <script>
                        paypal.Buttons({
                        // Sets up the transaction when a payment button is clicked
                        createOrder: (data, actions) => {
                            return actions.order.create({
                            purchase_units: [{
                                amount: {
                                value: '<?php echo $_SESSION['price'];?>' // Can also reference a variable or function
                                }
                            }]
                            });
                        },
                        // Finalize the transaction after payer approval
                        onApprove: (data, actions) => {
                            return actions.order.capture().then(function(orderData) {
                          
                             window.location.href='http://localhost/hotel-booking';
                            });
                        }
                        }).render('#paypal-button-container');
                    </script>
                  
                </div> 
        <?php require "../includes/footer.php"; ?>