import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(PaymentApp());
}

class PaymentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  // Validation Functions
  String? validateCardHolder(String? value) {
    if (value == null || value.isEmpty) {
      return "Cardholder's name is required";
    }
    return null;
  }

  String? validateCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Card number is required";
    } else if (value.length != 16) {
      return "Card number must be 16 digits";
    }
    return null;
  }

  String? validateExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return "Expiry date is required";
    }
    return null;
  }

  String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return "CVV is required";
    } else if (value.length != 3) {
      return "CVV must be 3 digits";
    }
    return null;
  }

  void _submitPayment() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Payment Successful!")),
      );
    }
  }

  Future<void> _selectExpiryDate(BuildContext context) async {
    DateTime now = DateTime.now();
    DateTime firstDate = DateTime(now.year, now.month);
    DateTime lastDate = DateTime(now.year + 10, 12); // Allow selection up to 10 years ahead

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.green,
            colorScheme: ColorScheme.light(primary: Colors.green),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != firstDate) {
      setState(() {
        _expiryDateController.text = DateFormat('MM/yy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 217, 229),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            width: 550,
            height: 500,
            
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.lock, size: 30, color: Colors.blue),
                  Text("Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: _cardHolderController,
                    decoration: InputDecoration(
                      labelText: "Cardholder's Name",
                      border: OutlineInputBorder(),
                    ),
                    validator: validateCardHolder,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _cardNumberController,
                    decoration: InputDecoration(
                      labelText: "Card Number",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.credit_card),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 16,
                    validator: validateCardNumber,
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _expiryDateController,
                      decoration: InputDecoration(
                        labelText: "Expiry Date (MM/YY)",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () => _selectExpiryDate(context),
                        ),
                      ),
                      readOnly: true,
                      validator: validateExpiryDate,
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _cvvController,
                      decoration: InputDecoration(
                        labelText: "CVV",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      maxLength: 3,
                      validator: validateCVV,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitPayment,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Pay Now", style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

