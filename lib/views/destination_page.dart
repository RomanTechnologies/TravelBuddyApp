import 'package:flutter/flutter.dart';
import 'viewmodels/destination_viewModel.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage( {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DestinationViewModel vmodel = DestinationViewModel();
    vmodel.setUp();
    return Scaffold(
      appbar: AppBar(title: Text('Destination Details')),
      body: Builder(\n        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: vmodel.destinations.map((dest) => ListTile(title: Text(dest.name))).castWidget(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
