part of travel;

extension StringColorExtension on String? {
  Color get asColor {
        var hexColor = this?.toUpperCase().replaceAll("#", "");
        if (hexColor != null && hexColor.length == 6) {
          hexColor = "FF$hexColor";
          return Color(int.parse(hexColor, radix: 16));
        }
        return Colors.deepOrange;
    }
}

extension ColorExtension on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }
}

