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
    debugPrint("continents=${continents}");
    return TravelScaffold(
        label: context.i10n.dashboard,
        leading: null,
        key: const Key("Dashboard"),
        automaticallyImplyLeading: false,
        showGlobalSearchButton: true,
        body: CustomScrollView(
          slivers: [
            continents.when(
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

  Widget _sliverList(WidgetRef ref, BuildContext context, List<Continent>? continents) {
    if (continents == null || continents.isEmpty) return const SizedBox();
    return
        ItemAnimatedSliverList<Continent>(
            items: continents,
            builder: (context, continent) {
              return VStack(
                children: [
                  ListRow(
                      title: continent.title,
                      id: continent.uuid,
                      subtitle: "",
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
