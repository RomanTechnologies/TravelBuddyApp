import 'package:flutter/flutter.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key, required this.title, required this.message}) : super(key: key);

  final String title;
  final String message;

  @override  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: Theme.of(context).textTheme.headline6),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(message, style: Theme.of(context).textTheme.body2),
            ),
          ],
        ),
      )
    );
  }
}
