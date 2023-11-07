import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffeeeeee),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              color: const Color(0xff54B8AB),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/p-8.jpg'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Welcome Amelia Roe!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCN5foeYye3-UNySzulQ7calFxSi9wYJbUoQ&usqp=CAU",
              width: 120,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(137, 116, 114, 114),
                      offset: Offset(4, 4),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 4,
                    top: 35,
                    right: 52,
                    bottom: 40,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Grocery Shoping',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.border_color,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.delete,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Website Hosting',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.border_color,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.delete,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'UX Desining',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 60),
                          Icon(
                            Icons.border_color,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.delete,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Haircut',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 95),
                          Icon(
                            Icons.border_color,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.delete,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Guitar Sesion',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 55),
                          Icon(
                            Icons.border_color,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.delete,
                            size: 30,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
