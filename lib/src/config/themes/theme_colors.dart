part of 'themes.dart';

/// A set of colors for the entire app.
const colorLightScheme = ColorScheme.light(
  primary: Color(0xFFFFCC00),
  surface: Color(0xFFFAFAFA),
  onSurface: Color(0xFF242424),
  secondary: Color(0xFF69D7C7),
  onSecondary: Color(0xFF616161),
  error: Color(0xFFD93F2F),
  surfaceVariant: Color(0xFFF5F5F5),
  secondaryContainer: Color(0xFFF0F0F0),
  onBackground: Color(0xFFF5F5F5),
  outline: Color(0xFF9AA6AC),
);

///
const colorDarkScheme = ColorScheme.dark(
  primary: Color(0xff2AA2C8),
  surface: Color(0xFFF7F9FC),
  onSurface: Color(0xFF242424),
  secondary: Color(0xFF69D7C7),
  onSecondary: Color(0xFF616161),
  error: Color(0xFFD93F2F),
  surfaceVariant: Color(0xFFF5F5F5),
  secondaryContainer: Color(0xFFF0F0F0),
  onBackground: Color(0xFF858585),
  outline: Color(0xFFF5F5F5),
);

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.dotColor,
    required this.firstTextFieldBackground,
    required this.secondaryElevatedButtonBackground,
    required this.firstText,
    required this.secondText,
    required this.primaryText,
    required this.secondaryText,
    required this.secondaryBackground,
  });

  final Color dotColor;
  final Color firstTextFieldBackground;
  final Color firstText;
  final Color secondText;
  final Color primaryText;
  final Color secondaryText;
  final Color secondaryElevatedButtonBackground;
  final Color secondaryBackground;

  static const ThemeColors light = ThemeColors(
    dotColor: Color(0xFFF0F0F0),
    firstTextFieldBackground: Color(0xFFF5F5F5),
    firstText: Color(0xFF858585),
    secondText: Color(0xFF2B2A28),
    primaryText: Color(0xFF242424),
    secondaryText: Color(0xFF000000),
    secondaryElevatedButtonBackground: Color(0xFFF7F7F7),
    secondaryBackground: Color(0xFFFFFFFF),
  );
  static const ThemeColors dark = ThemeColors(
    dotColor: Color(0xFFF0F0F0),
    firstTextFieldBackground: Color(0xFFF5F5F5),
    primaryText: Color(0xFF242424),
    secondaryText: Color(0xFF000000),
    secondaryElevatedButtonBackground: Color(0xFFF7F7F7),
    secondaryBackground: Color(0xFFFFFFFF),
    firstText: Color(0xFF858585),
    secondText: Color(0xFF2B2A28),
  );

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      dotColor: const Color(0xFFF0F0F0),
      firstTextFieldBackground: const Color(0xFFF5F5F5),
      firstText: Color.lerp(firstText, other.firstText, t)!,
      secondText: Color.lerp(secondText, other.secondText, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      secondaryElevatedButtonBackground: Color.lerp(
          secondaryElevatedButtonBackground,
          other.secondaryElevatedButtonBackground,
          t)!,
      secondaryBackground:
          Color.lerp(secondaryBackground, other.secondaryBackground, t)!,
    );
  }

  @override
  ThemeColors copyWith({
    Color? dotColor,
    Color? firstTextFieldBackground,
    Color? firstText,
    Color? secondText,
    Color? primaryText,
    Color? secondaryText,
    Color? secondaryElevatedButtonBackground,
    Color? secondaryBackground,
  }) =>
      ThemeColors(
        dotColor: dotColor ?? this.dotColor,
        firstTextFieldBackground:
            firstTextFieldBackground ?? this.firstTextFieldBackground,
        firstText: firstText ?? this.firstText,
        secondText: secondText ?? this.secondText,
        primaryText: primaryText ?? this.primaryText,
        secondaryText: secondaryText ?? this.secondaryText,
        secondaryElevatedButtonBackground: secondaryElevatedButtonBackground ??
            this.secondaryElevatedButtonBackground,
        secondaryBackground: secondaryBackground ?? this.secondaryBackground,
      );
}
