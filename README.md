# Catch The Pekmez

A fun iOS whack-a-mole style game where you tap the pekmez (Turkish grape/molasses) as it appears on screen. How many can you catch in 10 seconds?

## How to Play

- **Tap** the pekmez when it appears on the grid
- You have **10 seconds** per round
- Beat your **high score**!
- Tap **Replay** to try again

## Requirements

- Xcode 15 or later
- iOS 15.0+
- iPhone or iPad

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/cardaozel/CatchThePekmezGame.git
   cd CatchThePekmezGame
   ```

2. Open in Xcode:
   ```bash
   open CatchThePekmezGame.xcodeproj
   ```

3. Select your device or simulator and press **⌘R** to run

## Project Structure

```
CatchThePekmezGame/
├── CatchThePekmezGame.xcodeproj
├── CatchThePekmezGame/
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
│   ├── ViewController.swift      # Game logic
│   ├── Main.storyboard
│   ├── LaunchScreen.storyboard
│   ├── Info.plist
│   └── Assets.xcassets
└── README.md
```

## Features

- Classic whack-a-mole gameplay
- High score persistence (UserDefaults)
- 9-position grid with random pekmez appearance
- Countdown timer
- Replay functionality

## Author

**Arda Özel** — [GitHub](https://github.com/cardaozel)

## License

This project is open source and available for personal/educational use.
