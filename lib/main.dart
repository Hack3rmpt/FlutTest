import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Wallet',
      home: WalletScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int _selectedIndex = 3; // Изначально выбрана страница кошелька

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Wallet Info
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Andrew Ainsley',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '•••• •••• •••• 3629',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.credit_card, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'VISA',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Your balance',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$9,379',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            'Top Up',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Transaction History
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction History',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                ),
              ],
            ),
          ),
        //   Expanded(
        //     child: ListView(
        //       children: [
        //         transactionItem('Lawson Chair', 'Dec 15, 2024 | 10:00 AM', '\$120', Icons.chair, 'Orders'),
        //         transactionItem('Top Up Wallet', 'Dec 14, 2024 | 16:42 PM', '\$400', Icons.account_balance_wallet, 'Top Up'),
        //         transactionItem('Parabolic Reflector', 'Dec 14, 2024 | 11:39 AM', '\$170', Icons.lightbulb, 'Orders'),
        //         transactionItem('Mini Wooden Table', 'Dec 13, 2024 | 14:46 PM', '\$165', Icons.table_chart, 'Orders'),
        //         transactionItem('Top Up Wallet', 'Dec 12, 2024 | 09:27 AM', '\$300', Icons.account_balance_wallet, 'Top Up'),
        //       ],
        //     ),
        //   ),
        // ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

//   Widget transactionItem(String title, String date, String amount, IconData icon, String type) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.grey[200],
//                 child: Icon(icon, color: Colors.black),
//               ),
//               SizedBox(width: 16),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     date,
//                     style: TextStyle(color: Colors.grey, fontSize: 14),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 amount,
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 4),
//               Text(
//                 type,
//                 style: TextStyle(color: Colors.grey, fontSize: 14),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         backgroundColor: Colors.black,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () {
//               // Настройки профиля
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Верхний блок с аватаром
//             Container(
//               padding: EdgeInsets.all(16.0),
//               color: Colors.black,
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 60,
//                     backgroundImage: AssetImage('assets/profile.jpg'), // Добавьте изображение в папку assets
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'Andrew Ainsley',
//                     style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'andrew.ainsley@example.com',
//                     style: TextStyle(fontSize: 16, color: Colors.white70),
//                   ),
//                 ],
//               ),
//             ),

//             // Кнопка редактирования профиля
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   // Действие при редактировании профиля
//                 },
//                 icon: Icon(Icons.edit, color: Colors.white),
//                 label: Text('Edit Profile'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                 ),
//               ),
//             ),

//             Divider(),

//             // Информация о пользователе
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Account Information',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   infoRow(Icons.person, 'Full Name', 'Andrew Ainsley'),
//                   infoRow(Icons.email, 'Email', 'andrew.ainsley@example.com'),
//                   infoRow(Icons.phone, 'Phone Number', '+1 234 567 890'),
//                   infoRow(Icons.location_on, 'Address', '1234 Main Street, City'),
//                 ],
//               ),
//             ),

//             Divider(),

//             // Дополнительные действия
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Settings',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   settingItem(context, Icons.lock, 'Change Password', () {}),
//                   settingItem(context, Icons.payment, 'Payment Methods', () {}),
//                   settingItem(context, Icons.history, 'Order History', () {}),
//                   settingItem(context, Icons.logout, 'Log Out', () {
//                     // Логика выхода из системы
//                   }),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Функция для отображения информации о пользователе
//   Widget infoRow(IconData icon, String label, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.black54),
//           SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(fontSize: 16, color: Colors.black54),
//                 ),
//                 Text(
//                   value,
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black87),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Функция для настроек
//   Widget settingItem(BuildContext context, IconData icon, String label, Function onTap) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.black54),
//       title: Text(label),
//       trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
//       onTap: () {
//         onTap();
//       },
//     );
//   }
}
