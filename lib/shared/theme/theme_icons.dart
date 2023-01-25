part of travel;

abstract class IThemeIcons {
  late final Widget listArrowRight;
  late final Widget navigationHome;
  late final Widget navigationHomeActive;
  late final Widget navigationCalendar;
  late final Widget navigationCalendarActive;
  late final Widget navigationChecklist;
  late final Widget navigationChecklistActive;
  late final Widget navigationInfo;
  late final Widget navigationInfoActive;
  late final Widget navigationMyArea;
  late final Widget navigationMyAreaActive;
}

const _dir = "assets_core/icons";

class LightIcons implements IThemeIcons {
  @override
  Widget listArrowRight =
  SvgPictureExtension.localAsset("$_dir/lightListArrowRight.svg");

  @override
  Widget navigationHome =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconHome.svg");

  @override
  Widget navigationHomeActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconHomeActive.svg");

  @override
  Widget navigationCalendar =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconCalendar.svg");

  @override
  Widget navigationCalendarActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconCalendarActive.svg");

  @override
  Widget navigationChecklist =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconChecklist.svg");

  @override
  Widget navigationChecklistActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconChecklistActive.svg");

  @override
  Widget navigationInfo =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconInfo.svg");

  @override
  Widget navigationInfoActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconInfoActive.svg");

  @override
  Widget navigationMyArea =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconMyArea.svg");

  @override
  Widget navigationMyAreaActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconMyAreaActive.svg");
}

final lightIcons = LightIcons();

class DarkIcons implements IThemeIcons {
  @override
  Widget listArrowRight =
  SvgPictureExtension.localAsset("$_dir/darkListArrowRight.svg");

  @override
  Widget navigationHome =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconHome.svg");

  @override
  Widget navigationHomeActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconHomeActive.svg");

  @override
  Widget navigationCalendar =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconCalendar.svg");

  @override
  Widget navigationCalendarActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconCalendarActive.svg");

  @override
  Widget navigationChecklist =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconChecklist.svg");

  @override
  Widget navigationChecklistActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconChecklistActive.svg");

  @override
  Widget navigationInfo =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconInfo.svg");

  @override
  Widget navigationInfoActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconInfoActive.svg");

  @override
  Widget navigationMyArea =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconMyArea.svg");

  @override
  Widget navigationMyAreaActive =
  SvgPictureExtension.localAsset("$_dir/tabbar/navigationTabIconMyAreaActive.svg");
}

final darkIcons = DarkIcons();
