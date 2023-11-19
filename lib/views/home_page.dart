import 'package:flutter/flutter.dart';
import 'viewmodels/home_viewModel.dart';
import 'package:provider/provider.dart';
import 'models/itinerary.dart';

class HomePage extends StatelessWidget {
  const HomePage( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        appbar: AppBar(title: Text('Travel Buddy')),
        body: Consumer<HomeViewModel>(
          builder: (context, viewModel, internalchild) {
            return ListView.builder(
              itemCount: viewModel.itineraries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(viewModel.itineraries[index].name)
                );
              },
             );
            },
        ),
      ),
    );
  }
}
