// import 'package:flutter/material.dart';

// void main() {
//   runApp(DinandReservation());
// }

// class DinandReservation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ReservationScreen(),
//     );
//   }
// }

// class ReservationScreen extends StatefulWidget {
//   @override
//   _ReservationScreenState createState() => _ReservationScreenState();
// }

// class _ReservationScreenState extends State<ReservationScreen> {
//   int selectedGuests = 2;
//   String selectedTime = "10:00 AM";
//   DateTime selectedDate = DateTime.now();
//   String? selectedMenuItem;
//    String? selectedlocation;

//   List<int> guestOptions = List.generate(20, (index) => index + 1);
//   List<String> timeOptions = [
//     "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM",
//     "12:00 PM", "12:30 PM", "1:00 PM", "1:30 PM",
//     "2:00 PM", "2:30 PM", "3:00 PM", "3:30 PM",
//     "4:00 PM", "4:30 PM", "5:00 PM", "5:30 PM",
//     "6:00 PM", "6:30 PM", "7:00 PM", "7:30 PM",
//     "8:00 PM", "8:30 PM", "9:00 PM", "9:30 PM",
//     "10:00 PM", "10:30 PM",
//   ];

//     List<String> locations = [
//     "Dinand par Ferdi – 18 Rue du Boccador, 75008 Paris, France.",
//   ];

//   List<String> menuItems = [
// "Ferdi's Famous Cheeseburger – €25",
// "Ceviche – €18",
// "Foie Gras with Brioche Toast and Gingerbread – €22",
// "Naughty French Fries with Cheddar Sauce – €12",
// "Beef Enchiladas – €20",
// "Chicken Curry – €19",
//   ];

//   List<DateTime> availableDates = List.generate(7, (index) => DateTime.now().add(Duration(days: index)));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      appBar: AppBar(
//           title: Center(
//             child: Transform.translate(
//               offset: Offset(-10.0, 0.0),
//               child: Image(
//                 image: AssetImage("asset/dinand.jpg"),
//                 height: 50,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//           iconTheme: IconThemeData(color: Colors.white),
//           backgroundColor: Color(0xFF282d37),
//       ),
//       backgroundColor: const Color.fromARGB(255, 221, 231, 240),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // First row: Guests, Date
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Guests", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                 DropdownButton<int>(
//                   value: selectedGuests,
//                   onChanged: (value) {
//                     setState(() {
//                       selectedGuests = value!;
//                     });
//                   },
//                   items: guestOptions.map((int guest) {
//                     return DropdownMenuItem<int>(
//                       value: guest,
//                       child: Text("$guest"),
//                     );
//                   }).toList(),
//                 ),
//               ],
//             ),
            
//             // Date Picker
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                 GestureDetector(
//                   onTap: () async {
//                     DateTime? pickedDate = await showDatePicker(
//                       context: context,
//                       initialDate: selectedDate,
//                       firstDate: DateTime.now(),
//                       lastDate: DateTime.now().add(Duration(days: 30)),
//                     );
//                     if (pickedDate != null) {
//                       setState(() {
//                         selectedDate = pickedDate;
//                       });
//                     }
//                   },
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Text(
//                       "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             SizedBox(height: 20),

//             // Menu Dropdown
//             Text("Select Menu Item", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             DropdownButton<String>(
//               value: selectedMenuItem,
//               hint: Text("Choose a dish"),
//               onChanged: (value) {
//                 setState(() {
//                   selectedMenuItem = value;
//                 });
//               },
//               items: menuItems.map((String item) {
//                 return DropdownMenuItem<String>(
//                   value: item,
//                   child: Text(item),
//                 );
//               }).toList(),
//             ),

//              SizedBox(height: 20),

//             Text("Location",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             DropdownButton<String>(
//               value: selectedlocation,
//               hint: Text("Select a location"),
//               onChanged: (value) {
//                 setState(() {
//                   selectedlocation = value;
//                 });
//               },
//               items: locations.map((String item) {
//                 return DropdownMenuItem<String>(
//                   value: item,
//                   child: Text(item),
//                 );
//               }).toList(),
//             ),


//             SizedBox(height: 20),

//             // Time Selection (4x4 Matrix Grid with Smaller Tiles)
//             Text("Select Time Slot", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             GridView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4, // 4 columns
//                 mainAxisSpacing: 4,  // Reduced spacing for smaller size
//                 crossAxisSpacing: 4,  // Reduced spacing for better alignment
//                 childAspectRatio: 10,  // Adjusted to make tiles smaller
//               ),
//               itemCount: timeOptions.length,
//               itemBuilder: (context, index) {
//                 String time = timeOptions[index];
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedTime = time;
//                     });
//                   },
//                   child: Container(
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: selectedTime == time ? Colors.green : Colors.grey[300],
//                       borderRadius: BorderRadius.circular(6), // Slightly rounded edges
//                     ),
//                     child: Text(
//                       time,
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: selectedTime == time ? Colors.white : Colors.black,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),

//             SizedBox(height: 20),

//             // Other available dates
//             Text("Other Available Dates", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             SizedBox(height: 8),
//             Wrap(
//               spacing: 6,
//               children: availableDates.map((date) {
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedDate = date;
//                     });
//                   },
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
//                     decoration: BoxDecoration(
//                       color: selectedDate == date ? Colors.green : Colors.grey[300],
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     child: Text(
//                       "${date.day}/${date.month}/${date.year}",
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: selectedDate == date ? Colors.white : Colors.black,
//                       ),
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 20,),
//             Center(
//               child: ElevatedButton(onPressed: (){}, child: Text("Reserve",style: TextStyle(color: Colors.white),),
//               style: ElevatedButton.styleFrom(
//                                       shape: BeveledRectangleBorder(),
//                                       backgroundColor: Colors.green),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



class ReservationScreen extends StatefulWidget {
  final String restaurantId;

  const ReservationScreen({Key? key, required this.restaurantId}) : super(key: key);

  @override
  _ReservationScreenState createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _seatsController = TextEditingController();

  String userId = "";
  int seatingCapacity = 0;
  int availableSeats = 0;
  List<String> availableTimes = [];
  List<String> menuItems = [];
  List<String> locations = [];
  String selectedTime = "10:00 AM";
  DateTime selectedDate = DateTime.now();
  int selectedGuests = 2;
  List<String> selectedMenuItems = [];
  String? selectedLocation;
  bool isLoading = true;

  // Predefined time slots
  final List<String> predefinedTimeSlots = [
    "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM", "12:00 PM", "12:30 PM",
    "1:00 PM", "1:30 PM", "2:00 PM", "2:30 PM", "3:00 PM", "3:30 PM", "4:00 PM",
    "4:30 PM", "5:00 PM", "5:30 PM", "6:00 PM", "6:30 PM", "7:00 PM", "7:30 PM",
    "8:00 PM", "8:30 PM", "9:00 PM", "9:30 PM", "10:00 PM", "10:30 PM", "11:00 PM",
    "11:30 PM"
  ];

  @override
  void initState() {
    super.initState();
    _getUserId();
    _fetchRestaurantDetails();
    setState(() {
      availableTimes = predefinedTimeSlots;
    });
  }

  // Get current user ID
  void _getUserId() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userId = user.uid;
      });
    }
  }

  // Fetch restaurant details and seating capacity
  void _fetchRestaurantDetails() async {
    try {
      DocumentSnapshot restaurantDoc = await FirebaseFirestore.instance
          .collection('restaurants')
          .doc(widget.restaurantId)
          .get();

      if (restaurantDoc.exists) {
        setState(() {
          seatingCapacity = restaurantDoc['seatingCapacity'] ?? 0;
          menuItems = List<String>.from(restaurantDoc['menuItems'] ?? []);
          locations = List<String>.from(restaurantDoc['locations'] ?? []);
          availableSeats = seatingCapacity;

          if (locations.isNotEmpty) selectedLocation = locations.first;
        });

        await _fetchReservedSeats();
      } else {
        _showError("Restaurant not found.");
      }
    } catch (e) {
      _showError("Error loading restaurant details: $e");
    }
  }

  // Fetch the total reserved seats for the restaurant
  Future<void> _fetchReservedSeats() async {
    try {
      final reservedSeatsSnapshot = await FirebaseFirestore.instance
          .collection('reservations')
          .where('restaurantId', isEqualTo: widget.restaurantId)
          .where('selectedDate', isEqualTo: Timestamp.fromDate(_startOfDay(selectedDate)))
          .get();

      int reservedSeats = 0;
      for (var doc in reservedSeatsSnapshot.docs) {
        if (doc['seats'] is int) {
          reservedSeats += (doc['seats'] as int);
        }
      }

      setState(() {
        availableSeats = seatingCapacity - reservedSeats;
      });
    } catch (e) {
      _showError("Error calculating reserved seats: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  // Reserve seats
  // void _reserveSeats() async {
  //   int requestedSeats = int.tryParse(_seatsController.text) ?? 0;

  //   if (requestedSeats <= 0 || requestedSeats > availableSeats) {
  //     _showError("Invalid number of seats.");
  //     return;
  //   }

  //   bool timeConflict = await _checkTimeConflict();
  //   if (timeConflict) {
  //     _showError("Time slot already taken.");
  //     return;
  //   }

  //   try {
  //     //await FirebaseFirestore.instance.collection('reservations').add({
  //     await FirebaseFirestore.instance.collection('reservations').doc('NdVJoWHf1f0YKradPOFX').set({
  //       'restaurantId': widget.restaurantId,
  //       'userId': userId,
  //       'name': _nameController.text,
  //       'seats': requestedSeats,
  //       'selectedTime': selectedTime,
  //       'selectedDate': Timestamp.fromDate(selectedDate),
  //       'menuItem': selectedMenuItems,
  //       'location': selectedLocation,
  //       'timestamp': FieldValue.serverTimestamp(),
  //     });

  //     await _updateAvailableSeats(requestedSeats);

  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text("Reservation successful!")),
  //     );
  //   } catch (e) {
  //     _showError("Failed to make a reservation. Please try again.");
  //   }
  // }

  void _reserveSeats() async {
  int requestedSeats = int.tryParse(_seatsController.text) ?? 0;

  if (requestedSeats <= 0 || requestedSeats > availableSeats) {
    _showError("Invalid number of seats.");
    return;
  }

  bool timeConflict = await _checkTimeConflict();
  if (timeConflict) {
    _showError("Time slot already taken.");
    return;
  }

  try {
    // Use the specific reservation ID 'NdVJoWHf1f0YKradPOFX'
    await FirebaseFirestore.instance.collection('reservations').doc('NdVJoWHf1f0YKradPOFX').set({
      'restaurantId': widget.restaurantId,
      'userId': userId,
      'name': _nameController.text,
      'seats': requestedSeats,
      'selectedTime': selectedTime,
      'selectedDate': Timestamp.fromDate(selectedDate),
      'menuItem': selectedMenuItems,
      'location': selectedLocation,
      'timestamp': FieldValue.serverTimestamp(),
    });

    await _updateAvailableSeats(requestedSeats);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Reservation successful!")),
    );
  } catch (e) {
    _showError("Failed to make a reservation. Please try again.");
  }
}




  // Update available seats
  Future<void> _updateAvailableSeats(int reservedSeats) async {
    try {
      await FirebaseFirestore.instance.collection('restaurants').doc(widget.restaurantId).update({
        'seatingCapacity': seatingCapacity - reservedSeats,
      });

      await _fetchReservedSeats();
    } catch (e) {
      _showError("Error updating available seats.");
    }
  }

  // Check for time conflict
  Future<bool> _checkTimeConflict() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('reservations')
        .where('restaurantId', isEqualTo: widget.restaurantId)
        .where('selectedDate', isEqualTo: Timestamp.fromDate(_startOfDay(selectedDate)))
        .where('selectedTime', isEqualTo: selectedTime)
        .get();

    return snapshot.docs.isNotEmpty;
  }

  // Normalize date
  DateTime _startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  // Show error message
  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message, style: TextStyle(color: Colors.red))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dinand par Ferdi Kuwait",style: TextStyle(fontWeight: FontWeight.bold),)),
      backgroundColor: const Color.fromARGB(255, 198, 212, 224),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // if (isLoading) Center(child: CircularProgressIndicator()),
            if (isLoading)
                Center(child: CircularProgressIndicator())
              else
                Text(
                  "Available Seats: $availableSeats",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              SizedBox(height: 10),
            Center(
              child: SizedBox(
                width: 500,
               child:  TextField(controller: _nameController, decoration: InputDecoration(labelText: "Your Name"))),
            ),
            Center(
              child: SizedBox(
                width: 500,
                child: TextField(controller: _seatsController, decoration: InputDecoration(labelText: "Seats to Reserve"), keyboardType: TextInputType.number)),
            ),
            SizedBox(height: 20),

            // TableCalendar for date selection
            TableCalendar(
              focusedDay: selectedDate,
              firstDay: DateTime.now(),
              lastDay: DateTime(2100),
              selectedDayPredicate: (day) => isSameDay(selectedDate, day),
              onDaySelected: (selectedDay, _) {
                if (selectedDay.isBefore(DateTime.now())) {
                  _showError("You cannot select a past date!");
                } else {
                  setState(() => selectedDate = selectedDay);
                }
              },
            ),

            SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedTime,
              onChanged: (newValue) => setState(() => selectedTime = newValue!),
              items: availableTimes.map((time) => DropdownMenuItem(value: time, child: Text(time))).toList(),
            ),
            SizedBox(height: 20),
              DropdownButton<String>(
                value: selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    selectedLocation = newValue!;
                  });
                },
                hint: Text("Location"),
                items: locations.map((location) {
                  return DropdownMenuItem<String>(value: location, child: Text(location));
                }).toList(),
              ),
               SizedBox(height: 20),
            Wrap(
              spacing: 8.0,
              children: menuItems.map((menuItem) {
                return ChoiceChip(
                  label: Text(menuItem),
                  selected: selectedMenuItems.contains(menuItem),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        selectedMenuItems.add(menuItem);
                      } else {
                        selectedMenuItems.remove(menuItem);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(onPressed: _reserveSeats, child: 
              Text("Reserve Now",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder(),backgroundColor: Colors.green),),
            ),
            
          ],
        ),
      ),
    );
  }
}

