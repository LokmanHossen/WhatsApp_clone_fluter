import 'package:flutter/material.dart';
import 'package:whats_app_clone/common/utils/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    langButtonColor: Color(0xFFF7F8FA),
    langBtnHighilightColor: Color(0xFFE8E8ED),
    authAppbarTextColor: Coloors.greenLight,
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    langButtonColor: Color(0xFF182229),
    langBtnHighilightColor: Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF),
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langButtonColor;
  final Color? langBtnHighilightColor;
  final Color? authAppbarTextColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langButtonColor,
    this.langBtnHighilightColor,
    this.authAppbarTextColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langButtonColor,
    Color? langBtnHighilightColor,
    Color? authAppbarTextColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langButtonColor: langButtonColor ?? this.langButtonColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      langBtnHighilightColor: langBtnHighilightColor ?? this.langBtnHighilightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langButtonColor: Color.lerp(langButtonColor, other.langButtonColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      langBtnHighilightColor:
          Color.lerp(langBtnHighilightColor, other.langBtnHighilightColor, t),
    );
  }
}
