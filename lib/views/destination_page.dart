import 'package:flutter/flutter.dart';
import 'viewmodels/destination_viewModel.dart';
import 'package:provider/provider.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage( {Key? (key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DestinationViewModel>(
      create: (_) => DestinationViewModel(),
      child: Scaffold(
        appbar: AppBar(title: Text('Destination Details')),
        body: Consumer<DestinationViewModel>(
          builder: (context, vmodel, internalchild) {
            return vmodel.destinations.isEmpty
              ? Center(child: Text('No destinations available'))
              : ListView.builder(
                  itemCount: vmodel.destinations.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(vmodel.destinations[index].name));
                },
              );
            },
        ),
      ),
    );
  }
}
