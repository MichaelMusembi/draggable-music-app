#  Draggable Music App

A Flutter music app demo featuring the underrated `DraggableScrollableSheet` widget to create an interactive, scrollable bottom panel like in Spotify or Apple Music.

##  How to Run

1. Clone this repo:
   ```bash
   git clone https://github.com/MichaelMusembi/draggable-music-app.git
   cd draggable-music-app
````

2. Get dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

> Make sure you have Flutter installed and either Android Studio or VS Code with Flutter extensions.

##  Widget in Focus

**`DraggableScrollableSheet`** is a Flutter widget that enables a draggable and scrollable container anchored to the bottom of the screen. It allows smooth user interaction and is perfect for cases like music playlists, bottom panels, or chat previews.

## 🔍 Key Attributes Used

| Attribute            | Description                                              |
| -------------------- | -------------------------------------------------------- |
| `initialChildSize`   | Sets how small the sheet starts (10% of screen height)   |
| `maxChildSize`       | Sets the max expansion size of the sheet (70% of screen) |
| `snap` + `snapSizes` | Enables snapping at 10%, 40%, and 70% for smooth UX      |

> Below are screenshots of the final app UI showing the music note background and the draggable music list.
<img width="1080" height="2400" alt="Screenshot_20250718_234347" src="https://github.com/user-attachments/assets/7e97496e-bb36-45d4-9e4e-883c4be13f0c" />
<img width="1080" height="2400" alt="Screenshot_20250718_234414" src="https://github.com/user-attachments/assets/7427ef5f-a97c-48fc-bd01-36535e07c3a1" />
<img width="1080" height="2400" alt="Screenshot_20250718_234427" src="https://github.com/user-attachments/assets/1b8292fc-cbc5-4bb6-99fe-954680686659" />


##  Author

**Michael Musembi**
ALU – Mobile Application Development Student 2025

## 📄 License

This project is open source under the [MIT License](LICENSE).
