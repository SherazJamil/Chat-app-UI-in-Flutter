import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  final msgEditingController = TextEditingController();
  List<Message> messages = [
    Message(
      text: 'Ok',
      date: DateTime.now().subtract(const Duration(days: 1, minutes: 1)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Yes. This opinion is best. Lets meet tonight.',
      date: DateTime.now().subtract(const Duration(days: 1, minutes: 1)),
      isSendbyMe: false,
    ),
    Message(
      text: 'I think we should go to Rome',
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 2)),
      isSendbyMe: true,
    ),
    Message(
      text: 'You can give your opinion then we shall decide.',
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 2)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Ok. SO which place do you decide?',
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 2)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Yes. They are ready',
      date: DateTime.now().subtract(const Duration(days: 2, minutes: 2)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Offcourse. Do you ask from our other friends?',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Can we go on a trip?',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Yes.',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Are you free for a week?',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSendbyMe: false,
    ),
    Message(
      text: 'I am good.',
      date: DateTime.now().subtract(const Duration(days:3, minutes: 3)),
      isSendbyMe: true,
    ),
    Message(
      text: 'I am fine. What about you?',
      date: DateTime.now().subtract(const Duration(days:3, minutes: 3)),
      isSendbyMe: false,
    ),
    Message(
      text: 'How are you?',
      date: DateTime.now().subtract(const Duration(days:3, minutes: 3)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Hi',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Hello',
      date: DateTime.now().subtract(const Duration(days: 3, minutes: 3)),
      isSendbyMe: true,
    ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Text(
          'Sheraz',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
            padding: const EdgeInsets.all(8),
            reverse: true,
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            floatingHeader: true,
            elements: messages,
            groupBy: (message) => DateTime(
              message.date.year,
              message.date.month,
              message.date.day,
            ),
            groupHeaderBuilder: (Message message) => SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: Colors.deepOrange,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(message.date),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            itemBuilder: (context, Message message) => Align(
              alignment: message.isSendbyMe
              ? Alignment.centerRight
              : Alignment.centerLeft,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: message.isSendbyMe
                      ? BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomLeft: Radius.circular(23))
                      : BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(23),
                    bottomRight: Radius.circular(23)),
                  ),
                color: message.isSendbyMe
                ? Colors.deepOrange
                : Colors. white,
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(message.text,
                    style: TextStyle(
                      color: message.isSendbyMe
                          ? Colors.white
                          : Colors. black,
                    ),
                  ),
                ),
              ),
            ),
          ),),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 450,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                        spreadRadius: 1,
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type here...",
                          hintStyle: const TextStyle(
                            color: Colors.black54,
                          ),
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: const Icon(
                            FontAwesomeIcons.message,
                            color: Colors.black,
                            size: 20,
                          ),
                          suffixIcon:  IconButton(
                            color: Colors.white38,
                            onPressed: () => pickImage(),
                            icon: const Icon(
                              FontAwesomeIcons.solidImage,
                              color: Colors.black,
                              size: 20,
                            ),),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          )),
                      onSubmitted: (text) {
                        final message = Message(
                            text: text,
                            date: DateTime.now(),
                            isSendbyMe: true,
                        );

                        setState(() => messages.add(message));
                      },
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xffffa500), Colors.deepOrangeAccent],),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Icon(
                      FontAwesomeIcons.solidPaperPlane,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSendbyMe;

  const Message(
      {required this.text, required this.date, required this.isSendbyMe});
}