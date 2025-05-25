<?php

            require_once("config.php");
            $vnp_SecureHash = $_GET['vnp_SecureHash'];
            $inputData = array();
            foreach ($_GET as $key => $value) {
                if (substr($key, 0, 4) == "vnp_") {
                    $inputData[$key] = $value;
                }
            }
            
            unset($inputData['vnp_SecureHash']);
            ksort($inputData);
            $i = 0;
            $hashData = "";
            foreach ($inputData as $key => $value) {
                if ($i == 1) {
                    $hashData = $hashData . '&' . urlencode($key) . "=" . urlencode($value);
                } else {
                    $hashData = $hashData . urlencode($key) . "=" . urlencode($value);
                    $i = 1;
                }
            }
    
            $secureHash = hash_hmac('sha512', $hashData, $vnp_HashSecret);
            // if ($secureHash == $vnp_SecureHash) {
            //     if ($_GET['vnp_ResponseCode'] == '00') {
            //         echo "GD Thanh cong";
            //     } 
            //     else {
            //         echo "GD Khong thanh cong";
            //         }
            // } else {
            //     echo "Chu ky khong hop le";
            //     }
            
            if ($secureHash == $vnp_SecureHash) {
              require_once("../admin/inc/db_config.php");

              $orderId = $_GET['vnp_TxnRef'];
              $transId = $_GET['vnp_TransactionNo'];
              $amount = $_GET['vnp_Amount'] / 100;
              $status = $_GET['vnp_ResponseCode'];

              if ($status == '00') {
                  $update_sql = "UPDATE booking_order SET 
                    booking_status='booked',
                    trans_id='$transId',
                    trans_amt='$amount',
                    trans_status='TXN_SUCCESS',
                    trans_resp_msg='Thanh toán VNPAY thành công'
                    WHERE order_id='$orderId'";
              } 
              else {
                $update_sql = "UPDATE booking_order SET 
                  booking_status='payment failed',
                  trans_id='$transId',
                  trans_amt='$amount',
                  trans_status='FAILED',
                  trans_resp_msg='Thanh toán thất bại hoặc bị hủy'
                  WHERE order_id='$orderId'";
              }

                mysqli_query($con, $update_sql);
            } 
            else {
                echo "Chu ký không hợp lệ";
            }
    
            


?>

<html>
  <head>
    <title>Processing</title>
  </head>
  <body>

<!-- Success Payment Popup -->
<div id="successModal" style="
  display: none;
  position: fixed;
  z-index: 9999;
  left: 0; top: 0; width: 100vw; height: 100vh;
  background: rgba(0, 0, 0, 0.6);
  display: flex; justify-content: center; align-items: center;
  font-family: 'Poppins', sans-serif;
">
  <div style="
    background: #fff;
    padding: 40px 50px;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    max-width: 420px;
    width: 90%;
    animation: fadeInScale 0.3s ease-out;
    border-top: 4px solid #000;
  ">
    <h2 style="margin-bottom: 10px; font-family: 'Patrick Hand', cursive; font-size: 28px; color: #000;">
      Booking Successful!
    </h2>
    <p style="margin-bottom: 25px; color: #444; font-size: 15px;">
      Your booking has been processed successfully.
    </p>
    <button id="closeBtn" style="
      padding: 10px 24px;
      border: none;
      background: #000;
      color: white;
      border-radius: 6px;
      font-size: 15px;
      cursor: pointer;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: background 0.3s;
    " onmouseover="this.style.background='#333'" onmouseout="this.style.background='#000'">
      Close
    </button>
  </div>
</div>

<style>
@import url('https://fonts.googleapis.com/css2?family=Patrick+Hand&family=Poppins:wght@400;500&display=swap');

@keyframes fadeInScale {
  0% {
    opacity: 0;
    transform: scale(0.9);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}
</style>



<script>
// Show the popup after payment (simulate success)
window.onload = function() {
  document.getElementById('successModal').style.display = 'flex';
  document.getElementById('closeBtn').onclick = function() {
    window.location.href = '../index.php';
  };
};
</script>

		

  </body>
</html>