import 'package:flutter/material.dart';

class Chathome extends StatefulWidget {
  const Chathome({Key? key}) : super(key: key);

  @override
  State<Chathome> createState() => _ChathomeState();
}

class _ChathomeState extends State<Chathome> {
  final searchEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 30,
        title: const Text(
          'Mi Chat',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton<MenuItem>(
              onSelected: (value){
                if(value == MenuItem.item1){}
                if(value == MenuItem.item2){}
              },
              itemBuilder: (context) => [
            const PopupMenuItem(
                value: MenuItem.item1,
                child: Text('Settings'),
            ),
            const PopupMenuItem(
              value: MenuItem.item2,
              child: Text('Log Out'),
            )
          ])
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    controller: searchEditingController,
                    decoration: InputDecoration(
                        hintText: "Search here...",
                        hintStyle: const TextStyle(
                          color: Colors.black54,
                        ),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(onPressed: () {},
                  icon: const Icon(Icons.search),)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             ListTile(
               tileColor: Colors.deepOrangeAccent,
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]
                ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                  'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
              color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              tileColor: Colors.deepOrangeAccent,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]
                  ),
                  child:  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  )
              ),
              title: const Text(
                'abc@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.message_rounded,
                color: Colors.white,),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onTap: () {},
            ),
            const Divider(
              height: 5,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

enum MenuItem {
  item1,
  item2
}