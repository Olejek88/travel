import '../../main_lib.dart';
import '../../modules/widgets/large_title_sliver_scaffold.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LargeTitleSliverScaffold(
      largeTitle: context.i10n.travel_app,
      middleTitle: context.i10n.travel_app,
      key: const Key("MyArea"),
      automaticallyImplyLeading: false,
      leading: null,
      showGlobalSearchButton: false,
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([])),
        ..._sliverList(ref, context) ?? [],
      ],
    );
  }

  List<Widget>? _sliverList(WidgetRef ref, BuildContext context) {
    return [
      SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return VStack(
              padding: const EdgeInsets.only(bottom: 5, top: 5, left: 20, right: 20),
              children: [
              ],
            );
          }, childCount: 0)),
    ];
  }
}
