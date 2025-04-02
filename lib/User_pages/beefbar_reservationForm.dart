// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class ReservationForm extends StatefulWidget {
//   final int guests;
//   final String time;
//   final DateTime date;

//   ReservationForm({required this.guests, required this.time, required this.date});

//   @override
//   _ReservationFormState createState() => _ReservationFormState();
// }

// class _ReservationFormState extends State<ReservationForm> {
//   final _formKey = GlobalKey<FormState>();
//   String name = "";
//   String email = "";
//   String phone = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Confirm Reservation"), backgroundColor: Colors.brown),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Display Selected Reservation Details
//             Text(
//               "Reservation Details",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text("Guests: ${widget.guests}", style: TextStyle(fontSize: 16)),
//             Text("Time: ${widget.time}", style: TextStyle(fontSize: 16)),
//             Text("Date: ${DateFormat('EEEE, MMM d').format(widget.date)}", style: TextStyle(fontSize: 16)),
            

//             SizedBox(height: 20),

//             // Reservation Form Fields
//             Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(labelText: "Name", border: OutlineInputBorder()),
//                     validator: (value) => value!.isEmpty ? "Enter your name" : null,
//                     onSaved: (value) => name = value!,
//                   ),
//                   SizedBox(height: 10),
//                   TextFormField(
//                     decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder()),
//                     keyboardType: TextInputType.emailAddress,
//                     validator: (value) => value!.isEmpty || !value.contains('@') ? "Enter a valid email" : null,
//                     onSaved: (value) => email = value!,
//                   ),
//                   SizedBox(height: 10),
//                   TextFormField(
//                     decoration: InputDecoration(labelText: "Phone Number", border: OutlineInputBorder()),
//                     keyboardType: TextInputType.phone,
//                     validator: (value) => value!.isEmpty || value.length < 10 ? "Enter a valid phone number" : null,
//                     onSaved: (value) => phone = value!,
//                   ),
//                   SizedBox(height: 20),

//                   // Confirm Reservation Button
//                   SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.brown,
//                         padding: EdgeInsets.symmetric(vertical: 15),
//                       ),
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           _formKey.currentState!.save();
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text("Reservation Confirmed for $name")),
//                           );
//                           Navigator.pop(context);
//                         }
//                       },
//                       child: Text("Confirm Reservation", style: TextStyle(fontSize: 18, color: Colors.white)),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservationForm extends StatefulWidget {
  final int guests;
  final String time;
  final DateTime date;

  ReservationForm({required this.guests, required this.time, required this.date});

  @override
  _ReservationFormState createState() => _ReservationFormState();
}

class _ReservationFormState extends State<ReservationForm> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  String email = "";
  String phone = "";

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    return emailRegex.hasMatch(email);
  }

  bool isValidPhoneNumber(String phone) {
    final phoneRegex = RegExp(r'^\d{10}$'); // Ensures only 10-digit numbers
    return phoneRegex.hasMatch(phone);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Reservation"), backgroundColor: Colors.brown),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display Selected Reservation Details
            Text(
              "Reservation Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Guests: ${widget.guests}", style: TextStyle(fontSize: 16)),
            Text("Time: ${widget.time}", style: TextStyle(fontSize: 16)),
            Text("Date: ${DateFormat('EEEE, MMM d').format(widget.date)}", style: TextStyle(fontSize: 16)),

            SizedBox(height: 20),

            // Reservation Form Fields
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: "Name", border: OutlineInputBorder()),
                    validator: (value) => value!.isEmpty ? "Enter your name" : null,
                    onSaved: (value) => name = value!,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder()),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid email";
                      } else if (!isValidEmail(value)) {
                        return "Enter a valid email address";
                      }
                      return null;
                    },
                    onSaved: (value) => email = value!,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(labelText: "Phone Number", border: OutlineInputBorder()),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid phone number";
                      } else if (!isValidPhoneNumber(value)) {
                        return "Phone number must be 10 digits";
                      }
                      return null;
                    },
                    onSaved: (value) => phone = value!,
                  ),
                  SizedBox(height: 20),

                  // Confirm Reservation Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Reservation Confirmed for $name")),
                          );
                          Navigator.pop(context);
                        }
                      },
                      child: Text("Confirm Reservation", style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
