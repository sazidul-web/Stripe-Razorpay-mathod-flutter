// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Razorpay payment',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Razorpay payment Mathod'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Pay with Razorpay',
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Razorpay razorpay = Razorpay();
//                   // Nicher 2 line condition for Convarted cents to dollar.
//                   double subtotal = 100.00;
//                   double discount = 10.00;
//                   double tax = 4.99;
//                   double shipping = 5.00;
//                   double Total = subtotal - discount + tax + shipping;
//                   int amountInCents = (Total * 100).toInt();
//                   var options = {
//                     'key': 'rzp_live_ILgsfZCZoFIKMb',
//                     'amount': amountInCents,
//                     'currency': 'USD',
//                     'name': 'Sazidul Islam',
//                     'description': 'English Course',
//                     'image':
//                         'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/company-logo-design-template-e089327a5c476ce5c70c74f7359c5898_screen.jpg?ts=1672291305',
//                     // 'timeout':
//                     //     300, // Transaction timeout in seconds (optional, 5 minutes here)
//                     'theme': {
//                       'color': '#F37254',
//                     },
//                     'prefill': {
//                       'contact': '01999076918',
//                       'email': 'rabbiking00@gmail.com',
//                       'name': 'Sazidul Islam',
//                       'method': {
//                         'netbanking': true,
//                         'card': true,
//                         'upi': true,
//                         'wallet': true,
//                         'emi': true,
//                         'paypal': true,
//                         'googlepay': true,
//                         'applepay': true,
//                         'klarna': true,
//                         'ideal': true,
//                         'sofort': true,
//                       },
//                     },
//                     'notes': {
//                       'booking_id': '12345',
//                       'course': 'English Intermediate',
//                     },
//                     'modal': {
//                       'confirm_close': true,
//                       'animation': true,
//                     },
//                   };
//                   razorpay.on(
//                       Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
//                   razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
//                       handlePaymentSuccessResponse);
//                   razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET,
//                       handleExternalWalletSelected);
//                   razorpay.open(options);
//                 },
//                 child: const Text("Pay with Razorpay")),
//           ],
//         ),
//       ),
//     );
//   }

//   void handlePaymentErrorResponse(PaymentFailureResponse response) {
//     showAlertDialog(context, "Payment Failed",
//         "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
//   }

//   void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
//     showAlertDialog(
//         context, "Payment Successful", "Payment ID: ${response.paymentId}");
//   }

//   void handleExternalWalletSelected(ExternalWalletResponse response) {
//     showAlertDialog(
//         context, "External Wallet Selected", "${response.walletName}");
//   }

//   void showAlertDialog(BuildContext context, String title, String message) {
//     Widget continueButton = ElevatedButton(
//       child: Text("Continue"),
//       onPressed: () {},
//     );
//   }
// }
