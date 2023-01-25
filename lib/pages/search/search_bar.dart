import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../main_lib.dart';

class SearchBar extends HookConsumerWidget {
  const SearchBar({Key? key, this.onChange, this.initialValue = ""}) : super(key: key);

  final String initialValue;
  final void Function(String newText)? onChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(text: initialValue);
    final searchText = useState(initialValue);
    return Container(
      height: 36,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: context.themeColors.searchFieldBackground,
      ),
      child: HStack(
        padding: const EdgeInsets.only(left: 4),
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SvgPictureExtension.localAsset(
              "assets_core/icons/iconSearch.svg",
              width: 18, height: 18,
              color: context.themeColors.searchIconColor,
            ),
          ),
          Expanded(
            child: PlainPlatformTextField(
              style: context.fontByStyle(ThemeTextStyle.searchTextEmpty),
              controller: controller,
              onChanged: (newText) {
                searchText.value = newText;
                if (onChange != null) {
                  onChange!(newText);
                }
              },
            ),
          ),
          Visibility(
            visible: searchText.value.isNotEmpty,
            child: PlainPlatformButton(
              child: Container(
                  padding: const EdgeInsets.only(left: 7, right: 7),
                  height: double.infinity,
                  child: Icon(
                    Icons.clear_rounded,
                    color: context.themeColors.mainText,
                    size: 14,
                  )),
              onPressed: () async {
                controller.text = "";
                searchText.value = "";
                if (onChange!=null) onChange!("");
              },
            ),
          ),
        ],
      ),
    );
  }
}
