
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ส่วน AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'my_social_profile',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.pinkAccent,
            size: 28,
          ),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ส่วนที่ 1 รูปโปรไฟล์และจำนวน
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage:
                    AssetImage('assets/hamham.jpg'),
                  ),

                  Expanded(
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: const [
                        Column(
                          children: [
                            Text(
                              '6',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('โพสต์'),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              '666M',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('ผู้ติดตาม'),
                          ],
                        ),

                        Column(
                          children: [
                            Text(
                              '666',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('กำลังติดตาม'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // ส่วนที่ 2 ชื่อและแคปชัน
              const Text(
                'Nayada chinentharophat',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'ชอบความน่ารัก 🌷',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),

              const Text(
                'ติ๋มแว่นทั้งใจ 💗',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 15),

              // ส่วนที่ 3 ปุ่มติดตามและข้อความ
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'ติดตาม',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.pinkAccent,
                        side: const BorderSide(
                          color: Colors.pinkAccent,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'ข้อความ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // ส่วนที่ 4 แถบไอคอน
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.grid_on,
                    size: 27,
                    color: Colors.pinkAccent,
                  ),
                  Icon(
                    Icons.person_pin,
                    size: 27,
                    color: Colors.grey,
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // ส่วนที่ 5 รูปภาพ 3 ภาพจากอินเทอร์เน็ต
              Row(
                children: [
                  Expanded(
                    child: Image.network(
                      'https://www.akerufeed.com/wp-content/uploads/2021/01/matcha-pudding-1-800x706.png',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 2),

                  Expanded(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTigzgLqMSkEa1TODitXEJvNz4GiKIKttYu9g5zW6pztA&s=10',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 2),

                  Expanded(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
