import 'package:flutter/material.dart';

import '../../main_lib.dart';
import '../../modules/main/travel_scaffold.dart';
import '../../modules/widgets/list_row.dart';
import '../../modules/widgets/search_address_field.dart';
import '../../providers/references_provider.dart';
import '../../shared/src/widgets/sliver/item_animated_sliver_list.dart';
import '../map/map_widget.dart';

class TodosPage extends HookConsumerWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lands = ref.watch(landsProvider);
    final todoLands = ref.watch(todoLandsProvider);
    return TravelScaffold(
      label: context.i10n.todo,
      leading: null,
      key: const Key("ToDo"),
      automaticallyImplyLeading: false,
      body: VStack(children: [
        Expanded(
          child: Stack(children: [
            MapWidget(hideButtons: false, lands: todoLands.value),
            SearchAddressField(
                name: "address",
                iconName: "icMap",
                onSubmitted: (place) {
                  place.placeName;
                  place.context?.forEach((layer) {
                    debugPrint("[${layer.id}] = ${place.placeName} [${place.text}] [${layer.text}]");
                    if (layer.id != null) {
                      if (layer.id!.contains("place")) {}
                      if (layer.id!.contains("country")) {}
                      if (layer.id!.contains("postcode")) {}
                    }
                  });
                }),
          ]),
        ),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [lands.when(
              data: (data) => _sliverList(ref, context, data),
              loading: () => SliverList(
                  delegate: SliverChildListDelegate([
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ])),
              error: (error, e) => SliverList(delegate: SliverChildListDelegate([Text(error.toString())])),
            )],
          ),
        ),
      ]),
    );
  }

  Widget _sliverList(WidgetRef ref, BuildContext context, List<Land>? lands) {
    if (lands == null || lands.isEmpty) return const SizedBox();
    return ItemAnimatedSliverList<Land>(
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
                  onDismissed: () {},
                  onClicked: () {}),
            ],
          );
        });
  }
}
