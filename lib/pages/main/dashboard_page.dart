import '../../main_lib.dart';
import '../../modules/main/travel_scaffold.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TravelScaffold(
        label: context.i10n.travel_app,
        leading: null,
        key: const Key("Dashboard"),
        automaticallyImplyLeading: false,
        showGlobalSearchButton: true,
        body: SingleChildScrollView(
            child: VStack(
          padding: const EdgeInsets.only(left: 0, right: 0, bottom: 50),
          children: [
          ],
        )));
  }
}
