import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:sum_game/const/colors.dart';

class Game extends ConsumerStatefulWidget{
  const Game({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GameState();

}

class _GameState extends ConsumerState<Game>{

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (RawKeyEvent event) {
        //Move the tile with the arrows on the keyboard on Desktop
      },
      child: SwipeDetector(
        onSwipe: (direction, offset) {
          //Move the tiles on Swipe on Android and iOS
        },
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '2048',
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 52.0),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //TODO: Add the score board
                        Row(
                          children: [
                            //TODO: Add the Undo button
                            //TODO: Add the New Game button
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              //TODO: Add the Empty Board Widget
            ],
          ),
        ),
      ),
    );
  }
}