import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String imageUrl;
  final String time;
  final String status;
  final bool iscoming;
  const ChatBubble(
      {super.key,
      required this.message,
      required this.imageUrl,
      required this.time,
      required this.status,
      required this.iscoming});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment:
            iscoming ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width / 1.5),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
                bottomRight: iscoming
                    ? const Radius.circular(15)
                    : const Radius.circular(0),
                bottomLeft: iscoming
                    ? const Radius.circular(0)
                    : const Radius.circular(15),
              ),
            ),
            child: imageUrl == ""
                ? Text(message)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/dashboardui.jpg"),
                      ),
                      if (message != "")
                        const SizedBox(
                          height: 5,
                        ),
                      if (message != "") Text(message)
                    ],
                  ),
          ),
          Row(
            mainAxisAlignment:
                iscoming ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              iscoming
                  ? Text(
                      time,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  : Row(
                      children: [
                        Text(
                          time,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/images/egg.gif",
                          width: 20,
                        )
                      ],
                    ),
            ],
          )
        ],
      ),
    );
  }
}
