import 'package:flutter/material.dart';

import '../../main_lib.dart';
import '../../modules/main/travel_scaffold.dart';
import '../../modules/widgets/list_row.dart';
import '../../providers/users_provider.dart';
import '../../shared/src/widgets/sliver/item_animated_sliver_list.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(usersProvider);
    debugPrint("${users}");
    return TravelScaffold(
        label: context.i10n.profile,
        leading: null,
        key: const Key("Users"),
        automaticallyImplyLeading: false,
        showGlobalSearchButton: true,
        body: CustomScrollView(
          slivers: [
            users.when(
              data: (data) => _sliverList(ref, context, data),
              loading: () =>
                  SliverList(
                      delegate: SliverChildListDelegate([
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ])),
              error: (error, e) =>
                  SliverList(
                      delegate: SliverChildListDelegate([
                        Text(error.toString())
                      ])),
            ),
          ],
        ));
  }

  Widget _sliverList(WidgetRef ref, BuildContext context, List<User> users) {
    return ItemAnimatedSliverList<User>(
        items: users,
        builder: (context, user) {
          return VStack(
            children: [
              ListRow(
                  title: user.username,
                  subtitle: user.land.title,
                  imageUrl: user.image,
                  isArrowHidden: true,
                  value: user.rating.toString(),
                  onDismissed: () {},
                  onClicked: () {}),
            ],
          );
        }
    );
  }
}
