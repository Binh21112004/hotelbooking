<?php
require('admin/inc/db_config.php');
require('admin/inc/essentials.php');
require('vnpay_php/config.php');

date_default_timezone_set("Asia/Ho_Chi_Minh");
session_start();

if (!(isset($_SESSION['login']) && $_SESSION['login'] == true)) {
  redirect('index.php');
}

if (isset($_POST['pay_now'])) {
  $ORDER_ID = 'VNP_' . $_SESSION['uId'] . random_int(10000, 9999999);
  $CUST_ID = $_SESSION['uId'];
  $TXN_AMOUNT = $_SESSION['room']['payment'];

  $frm_data = filteration($_POST);

  insert("INSERT INTO `booking_order`(`user_id`, `room_id`, `check_in`, `check_out`, `order_id`) 
          VALUES (?, ?, ?, ?, ?)",
    [$CUST_ID, $_SESSION['room']['id'], $frm_data['checkin'], $frm_data['checkout'], $ORDER_ID],
    'issss');

  $booking_id = mysqli_insert_id($con);

  insert("INSERT INTO `booking_details`(`booking_id`, `room_name`, `price`, `total_pay`,
          `user_name`, `phonenum`, `address`) 
          VALUES (?, ?, ?, ?, ?, ?, ?)",
    [$booking_id, $_SESSION['room']['name'], $_SESSION['room']['price'], $TXN_AMOUNT,
      $frm_data['name'], $frm_data['phonenum'], $frm_data['address']],
    'issssss');

  // Redirect to VNPAY
  $vnp_TxnRef = $ORDER_ID;
  $vnp_Amount = $TXN_AMOUNT * 100;
  $vnp_OrderInfo = "Thanh toán đặt phòng";
  $vnp_Locale = "vn";
  $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
  $vnp_CreateDate = date('YmdHis');
  $vnp_ExpireDate = date('YmdHis', strtotime('+15 minutes'));

  $inputData = [
    "vnp_Version" => "2.1.0",
    "vnp_Command" => "pay",
    "vnp_TmnCode" => $vnp_TmnCode,
    "vnp_Amount" => $vnp_Amount,
    "vnp_CurrCode" => "VND",
    "vnp_TxnRef" => $vnp_TxnRef,
    "vnp_OrderInfo" => $vnp_OrderInfo,
    "vnp_OrderType" => "billpayment",
    "vnp_Locale" => $vnp_Locale,
    "vnp_ReturnUrl" => $vnp_Returnurl,
    "vnp_IpAddr" => $vnp_IpAddr,
    "vnp_CreateDate" => $vnp_CreateDate,
    "vnp_ExpireDate" => $vnp_ExpireDate
  ];

  ksort($inputData);
  $hashdata = '';
  $flag = false;
  foreach ($inputData as $key => $value) {
    if ($flag) {
        $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
    } else {
        $hashdata .= urlencode($key) . "=" . urlencode($value);
        $flag = true;
    }
}
  $secureHash = hash_hmac('sha512', $hashdata, $vnp_HashSecret);
  $inputData['vnp_SecureHash'] = $secureHash;

  $redirectUrl = $vnp_Url . '?' . http_build_query($inputData);
  header("Location: $redirectUrl");
  exit;
}
?>