import 'package:flame_gdx_texture_packer/atlas/model/page.dart';

class Region {
  late Page page;
  late String name;
  late double left, top, width, height;
  double offsetX = 0, offsetY = 0;
  double originalWidth = 0, originalHeight = 0;
  int degrees = 0;
  bool rotate = false;
  int index = -1;
}
