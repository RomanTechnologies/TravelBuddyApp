import 'package:flutter/flutter.dart';
import '../models/user.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({Key? (key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularAvatar(child: Image.network(user.imageUrl), radius: 30),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(user.name, style: Theme.of(context).textTheme.headline6),
          ),
          Text('Email: ' + user.email, style: Theme.of(context).textTheme.body1),
        ],
      ),
    );
  }
}
