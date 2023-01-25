import 'package:flutter_hooks/flutter_hooks.dart';
import '../../main_lib.dart';
import '../../modules/main/travel_scaffold.dart';

class GlobalSearchPage extends HookConsumerWidget {
  const GlobalSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchTerm = useState("");
    return TravelScaffold(
      showAppBar: false,
      leading: null,
      useScaffoldBackground: false,
      body: SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              //pageHeader(context, ref, searchTerm),
            ],
          )),
    );
  }

  Widget emptyPage(WidgetRef ref, BuildContext context) {
    return SliverFillRemaining(
      child: Center(
          child: VStack(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          const SizedBox()
        ],
      )),
    );
  }
}
