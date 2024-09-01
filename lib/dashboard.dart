import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:fl_chart/fl_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: Colors.white,
            child: Column(
              children: [
                // Logo and user profile
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/logo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Divider(),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/female.png'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Pooja Mishra",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      // Add purple box around "Admin"
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Text(
                          "Admin",
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Sidebar menu items
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const Text('Employees'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.calendar_today),
                  title: const Text('Attendance'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.bar_chart),
                  title: const Text('Summary'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('Information'),
                  onTap: () {},
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 250,
                  color: Colors.lightBlue.shade100,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'WORKSPACES',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Center(child: Text('Adstacks')),
                      SizedBox(width: 65),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Center(child: Text('Finance')),
                      SizedBox(width: 65),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                const Spacer(),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          // Main Content Area
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        // Search bar with icon
                        Container(
                          width: 300,
                          height: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade900,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 8),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    hintStyle: TextStyle(color: Colors.white54),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const Icon(Icons.search, color: Colors.white),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        // 3 Icons
                        IconButton(
                          icon: const Icon(Icons.message_rounded),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications_none_outlined),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.power_settings_new),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 16),
                        // User profile icon
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/female.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Start of colored right-side container
                    Image.asset(
                      'assets/screen.png',
                    ),
                    const SizedBox(height: 20),
                    // Projects and Creators section
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // All Projects
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 29, 1, 64),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'All Projects',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // Example Project Cards
                                ListView(
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 29, 1, 64),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Colors.grey, // Border color
                                          width: 2, // Border width
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // Image widget for the mini image
                                          Image.asset(
                                            'assets/female.png', // Path to your image asset
                                            width: 40, // Width of the image
                                            height: 40, // Height of the image
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                              width:
                                                  10), // Space between image and text
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Technology Behind the blockchain',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 29, 1, 64),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Colors.grey, // Border color
                                          width: 2, // Border width
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // Image widget for the mini image
                                          Image.asset(
                                            'assets/female.png', // Path to your image asset
                                            width: 40, // Width of the image
                                            height: 40, // Height of the image
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                              width:
                                                  10), // Space between image and text
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Technology Behind the blockchain',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 29, 1, 64),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Colors.grey, // Border color
                                          width: 2, // Border width
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          // Image widget for the mini image
                                          Image.asset(
                                            'assets/female.png', // Path to your image asset
                                            width: 40, // Width of the image
                                            height: 40, // Height of the image
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                              width:
                                                  10), // Space between image and text
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Technology Behind the blockchain',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 20),
                        // Top Creators
                        Expanded(
                          child: Container(
                            height: 250,
                            width: 250,
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/top.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Performance Chart
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset('assets/chart.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Right Sidebar
          Container(
            width: 400,
            color: Color.fromARGB(255, 29, 1, 64),
            child: Column(
              children: [
                SizedBox(height: 20), // Adjust the height as needed

                // Calendar
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'GENERAL 10: AM TO 7:00 PM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 350,
                        height: 250,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                        ),
                        child: TableCalendar(
                          focusedDay: DateTime.now(),
                          firstDay: DateTime(2020, 1, 1),
                          lastDay: DateTime(2030, 12, 31),
                          calendarFormat: CalendarFormat.month,
                          headerStyle: HeaderStyle(
                              formatButtonVisible: false,
                              titleCentered: true,
                              titleTextStyle: TextStyle(color: Colors.purple),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              leftChevronIcon: Icon(
                                Icons.chevron_left,
                                color: Colors.purple,
                              ),
                              rightChevronIcon: Icon(
                                Icons.chevron_right,
                                color: Colors.purple,
                              )),
                          calendarStyle: CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            outsideDaysVisible: false,
                            defaultTextStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              height: 1.1,
                            ),
                            weekendTextStyle: TextStyle(
                                color: Colors.black, fontSize: 10, height: 1.1),
                            selectedTextStyle: TextStyle(
                                color: Colors.black, fontSize: 10, height: 1.1),
                          ),
                          rowHeight: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 500,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(105, 117, 66, 206),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          ' ✨Today Birthday ✨',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        'assets/circle.jpg',
                                      )),
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        'assets/circle.jpg',
                                      )),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '| 2 |',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors
                                          .purple.shade300, // Background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            8), // Curved edges
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 16),
                                    ),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.send, // Paper plane icon
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Birthday Wishing',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ), // Replace with your progress widget
                        ),
                        SizedBox(height: 100),
                        Container(
                          width: 500,
                          height: 235,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const Text(
                                  ' ✨Anniversary ✨',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                'assets/circle.jpg',
                                              )),
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                'assets/circle.jpg',
                                              )),
                                        ],
                                      ),
                                      SizedBox(height: 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total',
                                            style: TextStyle(
                                                color: Colors.purple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            '| 2 |',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      ButtonBar(
                                        alignment: MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton.icon(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.purple
                                                  .shade300, // Background color
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8), // Curved edges
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16, vertical: 12),
                                            ),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.send, // Paper plane icon
                                              color: Colors.white,
                                            ),
                                            label: Text(
                                              'Anniversary Wishing',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Replace with your progress widget
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
