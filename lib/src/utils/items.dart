import 'package:light_speed/src/models/light_item.dart';

final List<LightItem> lightItems = [
  LightItem("Earth", "images/earth.png", "Moon", "images/moon.png", 1282),
  // 384400 / 299792.458
  LightItem("Sun", "images/sun.png", "Earth", "images/earth.png", 499011),
  // 149600000 / 299792.458
  LightItem("Sun", "images/sun.png", "Mars", "images/mars.png", 760192),
  // 227900000 / 299792.458
  LightItem("Sun", "images/sun.png", "Jupiter", "images/jupiter.png", 2596796),
  // 778500000 / 299792.458
  LightItem("Sun", "images/sun.png", "Saturn", "images/saturn.png", 4783309125),
  // 1,434E9 / 299792.458
  LightItem("Sun", "images/sun.png", "Uranus", "images/uranus.png", 9576625173),
  // 2,871E9 / 299792.458
];
