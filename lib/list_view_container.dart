import 'package:flutter/material.dart';
import 'package:minimalist_state_management/list_view_state.dart';
import 'package:minimalist_state_management/post.dart';
import 'package:minimalist_state_management/service_locator.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = getIt.get<ListViewState>();
    return ValueListenableBuilder<List<Post>>(
      //The code below listens _counter value, if it changes the state will be updated
      // valueListenable: _counter,
        valueListenable: state.postsNotifier,
        builder: (context,postValue,_) {
        return ListView(
          children: postValue
              .map((post) => ListTile(
                    leading: Text(post.id.toString()),
                    title: Text(post.title),
                    subtitle: Text(post.body),
                    trailing: IconButton(
                        onPressed: () {
                          state.postsNotifier.postRemoveTapped(post);
                        },
                        icon: const Icon(Icons.remove_circle_outline)),
                  ))
              .toList(),
        );
      }
    );
  }
}
