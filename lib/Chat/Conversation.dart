import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {

  List<Message> messages = [
    Message(
      text: 'Hello',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Hi',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: false,
    ),
    Message(
      text: 'How are you?',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: true,
    ),
    Message(
      text: 'I am fine. What about you?',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: false,
    ),
    Message(
      text: 'I am good.',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Are you free for a week?',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Yes.',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Can we go on a trip?',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Ofcourse. Do you ask from our other friends?',
      date: DateTime.now().subtract(Duration(minutes:1)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Yes. They are ready',
      date: DateTime.now().subtract(Duration(days:2, minutes:2)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Ok. SO which place do you decide?',
      date: DateTime.now().subtract(Duration(days:2, minutes:2)),
      isSendbyMe: true,
    ),
    Message(
      text: 'You can give your opinion then we shall decide.',
      date: DateTime.now().subtract(Duration(days:2, minutes:2)),
      isSendbyMe: false,
    ),
    Message(
      text: 'I think we should go to Rome',
      date: DateTime.now().subtract(Duration(days:2, minutes:2)),
      isSendbyMe: true,
    ),
    Message(
      text: 'Yes. This opinion is best. Let meet tonight.',
      date: DateTime.now().subtract(Duration(days:3, minutes:3)),
      isSendbyMe: false,
    ),
    Message(
      text: 'Ok',
      date: DateTime.now().subtract(Duration(days:3, minutes:3)),
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
          'User',
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
                        padding: EdgeInsets.all(8),
                      child: Text(
                        DateFormat.yMMMd ().format(message.date),
                        style: const TextStyle(color: Colors.white),
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
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: 5, bottomRight: 5)
                  ),
                  elevation: 8,
                  color: Colors.deepOrange,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(message.text,
                      style: const TextStyle(
                          color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade400,
            child: TextField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'Type Message',
              ),

              onSubmitted: (text) {
                final message = Message(text: text,
                    date: DateTime.now(),
                    isSendbyMe: true,
                );
                setState(() {
                  messages.add(message);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Message{
  final String text;
  final DateTime date;
  final bool isSendbyMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSendbyMe
});
}