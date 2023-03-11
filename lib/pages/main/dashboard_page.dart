import 'package:flutter/material.dart';
import 'package:travel/providers/references_provider.dart';

import '../../main_lib.dart';
import '../../modules/main/travel_scaffold.dart';
import '../../modules/widgets/list_row.dart';
import '../../shared/src/widgets/sliver/item_animated_sliver_list.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final continents = ref.watch(continentsProvider);
    final countries = ref.watch(countriesProvider);
    final lands = ref.watch(landsProvider);
    return TravelScaffold(
        label: context.i10n.dashboard,
        leading: null,
        key: const Key("Dashboard"),
        automaticallyImplyLeading: false,
        showGlobalSearchButton: true,
        body: CustomScrollView(
          slivers: [
            lands.when(
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

  Widget _sliverList(WidgetRef ref, BuildContext context, List<Land>? lands) {
    if (lands == null || lands.isEmpty) return const SizedBox();
    return  ItemAnimatedSliverList<Land>(
            items: lands,
            builder: (context, land) {
              return VStack(
                children: [
                  ListRow(
                      title: land.title,
                      id: land.uuid,
                      subtitle: land.country.title,
                      imageUrl: land.image,
                      isArrowHidden: false,
                      onDismissed: () {
                      },
                      onClicked: () {
                      }),
                ],
              );
            }
      );
  }
}
