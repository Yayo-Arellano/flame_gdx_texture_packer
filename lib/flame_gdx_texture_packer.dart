library flame_gdx_texture_packer;

import 'package:flame/game.dart';
import 'package:flame_gdx_texture_packer/atlas/texture_atlas.dart';

export 'package:flame_gdx_texture_packer/atlas/model/atlas_sprite.dart';

extension TexturepackerLoader on Game {
  /// Loads the specified pack file, using the parent directory of the pack file to find the page images.
  Future<TextureAtlas> fromAtlas(String assetsPath) async =>
      TextureAtlas().load(assetsPath);
}
