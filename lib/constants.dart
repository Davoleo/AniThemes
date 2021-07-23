import 'package:flutter/painting.dart';

enum WatchingStatus {
  COMPLETED,
  PLANNING,
  WATCHING,
  DROPPED,
  PAUSED,
  REPEATING
}

class Colors {

  static const baseColors = {
    "white": Color(0xffffff),
    "gray-100": Color(0xf5f2fa),
    "gray-200": Color(0xe6e1f0),
    "gray-300": Color(0xd1cae0),
    "gray-400": Color(0x9f93b8),
    "gray-500": Color(0x72658c),
    "gray-600": Color(0x574e6a),
    "gray-700": Color(0x453d53),
    "gray-800": Color(0x2e293a),
    "gray-900": Color(0x1c1823),
    "primary-100": Color(0xd1fbf1),
    "primary-200": Color(0xa5f6e4),
    "primary-300": Color(0x75ead4),
    "primary-400": Color(0x52d4bf),
    "primary-500": Color(0x40b8a6),
    "primary-600": Color(0x319488),
    "primary-700": Color(0x28766e),
    "primary-800": Color(0x215e59),
    "primary-900": Color(0x1e4e4a),
    "warning-100": Color(0xfee2e2),
    "warning-200": Color(0xfecaca),
    "warning-300": Color(0xfca5a5),
    "warning-400": Color(0xf87171),
    "warning-500": Color(0xef4444),
    "warning-600": Color(0xdc2626),
    "warning-700": Color(0xb91c1c),
    "warning-800": Color(0x991b1b),
    "warning-900": Color(0x7f1d1d)
  };

  static Map<String, Color> lightTheme  = {
    "background":           baseColors["gray-100"]!,
    "solid":                baseColors["white"]!,
    "solid-primary":        baseColors["primary-700"]!,
    "solid-on-card":        baseColors["gray-200"]!,
    "text":                 baseColors["gray-900"]!,
    "text-muted":           baseColors["gray-500"]!,
    "text-disabled":        baseColors["gray-400"]!,
    "text-warning":         baseColors["warning-600"]!,
    "text-primary":         baseColors["primary-600"]!,
    "text-on-primary":      baseColors["primary-100"]!
  };

  static Map<String, Color> darkTheme = {
    "background":           baseColors["gray-900"]!,
    "solid":                baseColors["gray-800"]!,
    "solid-primary":        baseColors["primary-300"]!,
    "solid-on-card":        baseColors["gray-700"]!,
    "text":                 baseColors["gray-100"]!,
    "text-muted":           baseColors["gray-300"]!,
    "text-disabled":        baseColors["gray-400"]!,
    "text-warning":         baseColors["warning-400"]!,
    "text-primary":         baseColors["primary-300"]!,
    "text-on-primary":      baseColors["primary-900"]!
  };

}