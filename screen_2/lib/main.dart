import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffEED9C4),
          appBarTheme: const AppBarTheme(color: Color(0xffD2B48C))),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.antiAlias,
              child: Image.asset('assets/images/task_2image.png',
              
              fit: BoxFit.cover,)
            ),
            const SizedBox(height: 16),
             const Text(
              'Burger Mix Combo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),

            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 24),
                const SizedBox(width: 4),
                const Text(
                  '4 (5)',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const Spacer(),

                
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.brown),
                        onPressed: () {},
                      ),
                      const Text('1', style: TextStyle(fontSize: 18)),
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.brown),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            const Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepOrange),
            ),
            const SizedBox(height: 4),
            const Text(
              '2 Burger + fries + drink with 30% Sale',
              style: TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
             Row(
              children: [
                const Text(
                  'EGP 160',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    'ADD TO CART',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            
            const Divider(color: Colors.deepOrange,thickness: 1.5,height: 25,),
             Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Review',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Send Your Feedback Now',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.brown),
                ],
              ),),

          ],
        ),
      ),
    );
  }
}
