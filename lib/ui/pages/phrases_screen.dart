import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/Phrases.dart';
import 'package:language_learning/ui/custom/custom_appbar.dart';

class PhrasesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Phrases"),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Color(0xFF4FADC7),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        phrasesList[index].jabaniesName,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        phrasesList[index].englishName,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    AudioPlayer player = AudioPlayer();
                    player.play(phrasesList[index].music);
                  },
                )
              ],
            ),
          );
          // return ListTile(
          //   title: Text(
          //     phrasesList[index].jabaniesName,
          //   ),
          //   subtitle: Text(phrasesList[index].englishName),
          // );
        },
      ),
    );
  }
}
