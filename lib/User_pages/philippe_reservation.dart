import 'package:flutter/material.dart';

void main() {
  runApp(PhilippeReservation());
}

class PhilippeReservation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReservationScreen(),
    );
  }
}

class ReservationScreen extends StatefulWidget {
  @override
  _ReservationScreenState createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  int selectedGuests = 2;
  String selectedTime = "10:00 AM";
  DateTime selectedDate = DateTime.now();
  String? selectedMenuItem;

  List<int> guestOptions = List.generate(20, (index) => index + 1);
  List<String> timeOptions = [
    "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM",
    "12:00 PM", "12:30 PM", "1:00 PM", "1:30 PM",
    "2:00 PM", "2:30 PM", "3:00 PM", "3:30 PM",
    "4:00 PM", "4:30 PM", "5:00 PM", "5:30 PM",
    "6:00 PM", "6:30 PM", "7:00 PM", "7:30 PM",
    "8:00 PM", "8:30 PM", "9:00 PM", "9:30 PM",
    "10:00 PM", "10:30 PM",
  ];

  List<String> menuItems = [
    "Beef Tataki - 600",
    "Uni on Crispy Rice - 600",
    "Cream Cheese Spinach Dip - 310",
    "Mussel En Frites - 800",
    "Fried Oysters - 600",
    "Wagyu Sliders - 750",
    "Black Truffle Pizza - 900",
    "Lobster Tacos - 850",
    "Grilled Octopus - 700",
    "Filet Mignon - 1200",
    "Chocolate Lava Cake - 450"
  ];

  List<DateTime> availableDates = List.generate(7, (index) => DateTime.now().add(Duration(days: index)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title: Center(
            child: Transform.translate(
              offset: Offset(-10.0, 0.0),
              child: Image(
                image: AssetImage("asset/philippe.jpg"),
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF282d37),
      ),
      backgroundColor: const Color.fromARGB(255, 221, 231, 240),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First row: Guests, Date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Guests", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                DropdownButton<int>(
                  value: selectedGuests,
                  onChanged: (value) {
                    setState(() {
                      selectedGuests = value!;
                    });
                  },
                  items: guestOptions.map((int guest) {
                    return DropdownMenuItem<int>(
                      value: guest,
                      child: Text("$guest"),
                    );
                  }).toList(),
                ),
              ],
            ),
            
            // Date Picker
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 30)),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Menu Dropdown
            Text("Select Menu Item", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            DropdownButton<String>(
              value: selectedMenuItem,
              hint: Text("Choose a dish"),
              onChanged: (value) {
                setState(() {
                  selectedMenuItem = value;
                });
              },
              items: menuItems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
            ),

            SizedBox(height: 20),

            // Time Selection (4x4 Matrix Grid with Smaller Tiles)
            Text("Select Time Slot", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // 4 columns
                mainAxisSpacing: 4,  // Reduced spacing for smaller size
                crossAxisSpacing: 4,  // Reduced spacing for better alignment
                childAspectRatio: 10,  // Adjusted to make tiles smaller
              ),
              itemCount: timeOptions.length,
              itemBuilder: (context, index) {
                String time = timeOptions[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTime = time;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selectedTime == time ? Colors.green : Colors.grey[300],
                      borderRadius: BorderRadius.circular(6), // Slightly rounded edges
                    ),
                    child: Text(
                      time,
                      style: TextStyle(
                        fontSize: 14,
                        color: selectedTime == time ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: 20),

            // Other available dates
            Text("Other Available Dates", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Wrap(
              spacing: 6,
              children: availableDates.map((date) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDate = date;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    decoration: BoxDecoration(
                      color: selectedDate == date ? Colors.green : Colors.grey[300],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "${date.day}/${date.month}/${date.year}",
                      style: TextStyle(
                        fontSize: 14,
                        color: selectedDate == date ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(onPressed: (){}, child: Text("Reserve",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                                      shape: BeveledRectangleBorder(),
                                      backgroundColor: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
