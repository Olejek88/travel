import '../../main_lib.dart';
import '../../modules/widgets/custom_appbar_svg_button.dart';
import '../../modules/widgets/large_title_sliver_scaffold.dart';

class TodosPage extends HookConsumerWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LargeTitleSliverScaffold(
      largeTitle: context.i10n.todo,
      middleTitle: context.i10n.todo,
      key: const Key("Dates"),
      automaticallyImplyLeading: false,
      leading: CustomAppbarSVGButton(
        isLeading: true,
        key: const Key("reminder"),
        asset: "assets_core/icons/iconReminder.svg",
        onPressed: () {
          //context.router.push(const SettingsRoute());
        },
      ),
      showGlobalSearchButton: true,
      slivers: [
      ],
    );
  }
}
