import 'package:chatui_app/Chat/Conversation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrange,
        elevation: 20,
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
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
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
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.black,
                        size: 20,
                      ),
                      suffixIcon:  IconButton(
                        color: Colors.white38,
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: Colors.black,
                          size: 20,
                        ),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                 leading: const CircleAvatar(
                   radius: 35,
                   backgroundImage: AssetImage('assets/Thor.png'),
                 ),
                 title: const Text(
                     'abc@gmail.com',
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                   ),
                 ),
                 trailing: const Icon(FontAwesomeIcons.solidMessage,
                 color: Colors.white,),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                      ),
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  ),
                  title: const Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(FontAwesomeIcons.solidMessage,
                    color: Colors.white,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  ),
                  title: const Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(FontAwesomeIcons.solidMessage,
                    color: Colors.white,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  ),
                  title: const Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(FontAwesomeIcons.solidMessage,
                    color: Colors.white,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  ),
                  title: const Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(FontAwesomeIcons.solidMessage,
                    color: Colors.white,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  ),
                  title: const Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(FontAwesomeIcons.solidMessage,
                    color: Colors.white,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  ),
                  title: const Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(FontAwesomeIcons.solidMessage,
                    color: Colors.white,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListTile(
                  minVerticalPadding: 25,
                  tileColor: Colors.deepOrangeAccent,
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/Thor.png'),
                  ),
                  title: const Text(
                    'abc@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: const Icon(FontAwesomeIcons.solidMessage,
                    color: Colors.white,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConversationScreen()));              },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum MenuItem {
  item1,
  item2
}