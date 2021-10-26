import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
void main(){
  runApp(MaterialApp(
    home: PlayerButton(),
  ));
}
class PlayerButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isTrue;
  final String trueText;
  final String falseText;

  PlayerButton({
    @required this.onPressed,
    @required this.isTrue,
    @required this.trueText,
    @required this.falseText,
  });

  @override
  _PlayerButtonState createState() => _PlayerButtonState();
}

class _PlayerButtonState extends State<PlayerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        width: 200,
        height: 70,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          child: Text(widget.isTrue ? widget.trueText : widget.falseText,
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }

}
