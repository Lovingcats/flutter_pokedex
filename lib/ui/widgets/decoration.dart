import 'package:flutter/material.dart';
import 'package:pokedex/configs/images.dart';
import 'package:pokedex/ui/themes/extensions.dart';
import 'package:pokedex/ui/widgets/app_bar.dart';

class PositionedPokeball extends StatelessWidget {
  final double widthFraction;

  const PositionedPokeball({
    super.key,
    this.widthFraction = 0.664,
  });

  @override
  Widget build(BuildContext context) {
    final safeAreaTop = MediaQuery.of(context).padding.top;
    final pokeballSize = MediaQuery.of(context).size.width * widthFraction;
    final appBarHeight = AppBar().preferredSize.height;
    final iconButtonPadding = AppAppBar.padding.right;
    final iconSize = IconTheme.of(context).size ?? 0;

    final pokeballTopMargin = -(pokeballSize / 2 - safeAreaTop - appBarHeight / 2);
    final pokeballRightMargin = -(pokeballSize / 2 - iconButtonPadding - iconSize / 2);

    return Positioned(
      top: pokeballTopMargin,
      right: pokeballRightMargin,
      child: Image(
        image: AppImages.pokeball,
        width: pokeballSize,
        height: pokeballSize,
        color: context.colors.text.withOpacity(0.05),
      ),
    );
  }
}