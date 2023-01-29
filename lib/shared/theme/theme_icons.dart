part of travel;

abstract class IThemeIcons {
  late final Widget listArrowRight;
  late final Widget navigationHome;
  late final Widget navigationHomeActive;
  late final Widget navigationTodo;
  late final Widget navigationTodoActive;
  late final Widget navigationRating;
  late final Widget navigationRatingActive;
  late final Widget navigationProfile;
  late final Widget navigationProfileActive;
}

const _dir = "assets/icons";

class LightIcons implements IThemeIcons {
  @override
  Widget listArrowRight =
  SvgPictureExtension.localAsset("$_dir/lightListArrowRight.svg");

  @override
  Widget navigationHome =
  SvgPictureExtension.localAsset("$_dir/dashboard.svg", width: 24, height: 24);

  @override
  Widget navigationHomeActive =
  SvgPictureExtension.localAsset("$_dir/dashboardActive.svg", width: 24, height: 24);

  @override
  Widget navigationTodo =
  SvgPictureExtension.localAsset("$_dir/map.svg");

  @override
  Widget navigationTodoActive =
  SvgPictureExtension.localAsset("$_dir/mapActive.svg");

  @override
  Widget navigationRating =
  SvgPictureExtension.localAsset("$_dir/list.svg");

  @override
  Widget navigationRatingActive =
  SvgPictureExtension.localAsset("$_dir/listActive.svg");

  @override
  Widget navigationProfile =
  SvgPictureExtension.localAsset("$_dir/profile.svg");

  @override
  Widget navigationProfileActive =
  SvgPictureExtension.localAsset("$_dir/profileActive.svg");
}

final lightIcons = LightIcons();

class DarkIcons implements IThemeIcons {
  @override
  Widget listArrowRight =
  SvgPictureExtension.localAsset("$_dir/darkListArrowRight.svg");

  @override
  Widget navigationHome =
  SvgPictureExtension.localAsset("$_dir/dashboard.svg", width: 24, height: 24);

  @override
  Widget navigationHomeActive =
  SvgPictureExtension.localAsset("$_dir/dashboardActive.svg", width: 24, height: 24);

  @override
  Widget navigationTodo =
  SvgPictureExtension.localAsset("$_dir/map.svg");

  @override
  Widget navigationTodoActive =
  SvgPictureExtension.localAsset("$_dir/mapActive.svg");

  @override
  Widget navigationRating =
  SvgPictureExtension.localAsset("$_dir/list.svg");

  @override
  Widget navigationRatingActive =
  SvgPictureExtension.localAsset("$_dir/listActive.svg");

  @override
  Widget navigationProfile =
  SvgPictureExtension.localAsset("$_dir/profile.svg");

  @override
  Widget navigationProfileActive =
  SvgPictureExtension.localAsset("$_dir/profileActive.svg");
}

final darkIcons = DarkIcons();
