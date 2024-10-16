// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   Stripe.publishableKey = "pk_test_1234567890abcdefg";

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Stripe Payment',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stripe Payment Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _makePayment,
//           child: const Text('Pay with Card'),
//         ),
//       ),
//     );
//   }

//   Future<void> _makePayment() async {
//     try {
//       // 1. Create Payment Intent on the backend
//       final paymentIntent = await _createPaymentIntent('5000', 'usd');

//       // 2. Initialize the payment sheet
//       await Stripe.instance.initPaymentSheet(
//         paymentSheetParameters: SetupPaymentSheetParameters(
//           paymentIntentClientSecret: paymentIntent['client_secret'],
//           merchantDisplayName: 'Your Merchant Name',
//         ),
//       );
//       await Stripe.instance.presentPaymentSheet();

//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Payment Successful')),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Payment failed: $e')),
//       );
//     }
//   }

//   Future<Map<String, dynamic>> _createPaymentIntent(
//       String amount, String currency) async {
//     try {
//       final response = await http.post(
//         Uri.parse('https://abc123.ngrok.io/create-payment-intent'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: json.encode({
//           'amount': amount,
//           'currency': currency,
//         }),
//       );
//       return json.decode(response.body);
//     } catch (err) {
//       throw Exception('Failed to create payment intent: $err');
//     }
//   }
// }
