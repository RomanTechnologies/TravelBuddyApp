import 'package:flutter/flutter.dart';
import '../models/user_review.dart';

// Custom widget for displaying user reviews or feedback
class UserReviewWidget extends StatelessWidget {
  const UserReviewWidget({Key? (key, required this.review}) : super(key: key);

  final UserReview review;

  @override  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(review.userName, style: Theme.of(context).textTheme.headline6),
            Text(review.comment, style: Theme.of(context).textTheme.body2),
          ],
        ),
      )
    );
  }
}
