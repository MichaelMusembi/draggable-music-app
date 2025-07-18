import 'package:flutter/material.dart';

void main() {
  runApp(const DraggableMusicApp());
}

class DraggableMusicApp extends StatelessWidget {
  const DraggableMusicApp({Key? key}) : super(key: key); // 🔧 Added key parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Sheet',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.tealAccent,
      ),
      home: MusicHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MusicHomeScreen extends StatelessWidget {
  MusicHomeScreen({Key? key}) : super(key: key); // 🔧 Added key parameter

  final List<Map<String, String>> musicList = List.generate(15, (index) {
    return {
      'title': 'Track #${index + 1}',
      'artist': 'Artist ${index + 1}',
      'duration': '${3 + index % 3}:${(index * 7) % 60}'.padLeft(2, '0'),
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Now Playing"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          const Center(
            child: Icon(Icons.music_note, size: 100, color: Colors.tealAccent),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.7,
            snap: true,
            snapSizes: const [0.1, 0.4, 0.7],
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: musicList.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Center(
                        child: Container(
                          width: 40,
                          height: 6,
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      );
                    }

                    final track = musicList[index - 1];
                    return ListTile(
                      leading: const Icon(Icons.audiotrack, color: Colors.tealAccent),
                      title: Text(
                        track['title']!,
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        track['artist']!,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: Text(
                        track['duration']!,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
