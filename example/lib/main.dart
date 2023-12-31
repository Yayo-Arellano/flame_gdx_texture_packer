import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_gdx_texture_packer/flame_gdx_texture_packer.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
    GameWidget(
      game: MyGame(),
    ),
  );
}

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    // Load the sprite sheet
    final atlas = await fromAtlas('atlasMap.atlas');

    // Get a list of sprites ordered by their index
    final walkingSprites = atlas.findSpritesByName('robot_walk');

    // Create animation with the list of sprites
    final walkingAnimation = SpriteAnimation.spriteList(
      walkingSprites,
      stepTime: 0.1,
      loop: true,
    );

    // Get individual sprites by name
    final jumpSprite = atlas.findSpriteByName('robot_jump')!;
    final fallSprite = atlas.findSpriteByName('robot_fall')!;
    final idleSprite = atlas.findSpriteByName('robot_idle')!;

    // Get the list of all sprites in the sprite sheet
    final allSprites = atlas.sprites;

    add(
      SpriteComponent(
        sprite: jumpSprite,
        position: Vector2(200, 100),
        size: Vector2(72, 96),
      ),
    );

    add(
      SpriteComponent(
        sprite: fallSprite,
        position: Vector2(300, 100),
        size: Vector2(72, 96),
      ),
    );

    add(
      SpriteComponent(
        sprite: idleSprite,
        position: Vector2(400, 100),
        size: Vector2(72, 96),
      ),
    );

    add(
      SpriteAnimationComponent(
        animation: walkingAnimation,
        position: Vector2(300, 200),
        size: Vector2(72, 96),
      ),
    );
  }
}
