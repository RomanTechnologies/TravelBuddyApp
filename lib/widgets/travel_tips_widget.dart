import 'package:flutter/flutter.dart';

class TravelTipsWidget extends StatelessWidget {
  const TravelTipsWidget({Key? key, required this.tips, required this.title}) : super(key: key);

  final List<String> tips;
  final String title;

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
            for (String tip in tips)
              Padding(
              padding: const EdgeInsets.all(5),
              child: Text(tip, style: Theme.of(context).textTheme.body2),
            ),
          ],
        ),
      )
    );
  }
}
