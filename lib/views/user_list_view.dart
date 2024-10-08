import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:practica_2/viewmodels/user_viewmodel.dart';

class UserListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lista"),
      ),
      body: FutureBuilder(
        future: Provider.of<UserViewmodel>(context, listen: false).fetchUsers(),
        builder: (contex, snapshop) {
          if (snapshop.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Consumer<UserViewmodel>(builder: (contex, viewModel, child) {
              return ListView.builder(
                itemCount: viewModel.users.length,
                itemBuilder: (contex, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(viewModel.users[index].photo),
                      ),
                      title: Text(
                          '${viewModel.users[index].name} ${viewModel.users[index].lasName}'),
                      subtitle: Text(viewModel.users[index].email),
                    ),
                  );
                },
              );
            });
          }
        },
      ),
    );
  }
}
