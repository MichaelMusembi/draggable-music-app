# Draggable Music App

A Flutter music app demo featuring the underrated `DraggableScrollableSheet` widget to create an interactive, scrollable bottom panel like in Spotify or Apple Music.

##  How to Run

1. Clone this repo:

   ```
   git clone https://github.com/MichaelMusembi/draggable-music-app.git  
   cd draggable-music-app  
   ```

2. Get dependencies:

   ```
   flutter pub get
   ```

3. Run the app:

   ```
   flutter run
   ```

> Make sure you have Flutter installed and either Android Studio or VS Code with Flutter extensions.

##  Widget in Focus

**`DraggableScrollableSheet`** is a Flutter widget that enables a draggable and scrollable container anchored to the bottom of the screen. It allows smooth user interaction and is perfect for cases like music playlists, bottom panels, or chat previews.

##  Key Attributes Used

| Attribute            | Description                                              |
| -------------------- | -------------------------------------------------------- |
| `initialChildSize`   | Sets how small the sheet starts (10% of screen height)   |
| `maxChildSize`       | Sets the max expansion size of the sheet (70% of screen) |
| `snap` + `snapSizes` | Enables snapping at 10%, 40%, and 70% for smooth UX      |


> Below are screenshots of the final app UI showing the music note background and the draggable music list.

###  Expanded View
![Expanded View](https://raw.githubusercontent.com/MichaelMusembi/draggable-music-app/main/screenshots/app_ui.png)

###  Collapsed View
![Collapsed View](https://raw.githubusercontent.com/MichaelMusembi/draggable-music-app/main/screenshots/app_ui2.png)


##  Author

**Michael Musembi**
ALU – Mobile Application Development Student
2025

## 📄 License

This project is open source under the MIT License.
