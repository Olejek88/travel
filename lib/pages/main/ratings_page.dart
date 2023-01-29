import '../../main_lib.dart';
import '../../modules/main/travel_scaffold.dart';

class RatingsPage extends HookConsumerWidget {
  const RatingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return TravelScaffold(
        label: context.i10n.rating,
        showGlobalSearchButton: false,
        body: Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 5, left: 20, right: 20),
            child: SingleChildScrollView(
              child: VStack(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ]),
            )));
  }
}
