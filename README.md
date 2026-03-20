# WarOfCards

🃏 CARD GAME (SwiftUI)


A simple iOS card game built with SwiftUI.
The player and the CPU draw random cards — the higher card wins.


📱 FEATURES

🎴 Random card generation

🤖 Play against CPU

🔘 One-button gameplay

🧮 Score tracking

🎨 Simple and clean UI

🛠️ TECHNOLOGIES

-> Swift

-> SwiftUI

🚀 HOW IT WORKS

-Press the button

-The player and CPU receive random cards

-The winner of the round is determined automatically

-Scores are updated


<img width="497" height="876" alt="App2" src="https://github.com/user-attachments/assets/078bc21a-d402-4d51-b389-cdf593a776e0" />

<img width="527" height="877" alt="App1" src="https://github.com/user-attachments/assets/4f8b0874-541b-4f5f-83e2-8fdeb756413a" />

<img width="486" height="878" alt="App" src="https://github.com/user-attachments/assets/8fb2be6e-f087-4180-9b7c-c3b4c2dc7167" />


📌 Core Logic



<pre> ```swift 
  func dealCards() { 
          let playerValue = Int.random(in: 2...14) 
          let cpuValue = Int.random(in: 2...14) 
  
          playerCard = "card" + String(playerValue) 
          cpuCard = "card" + String(cpuValue) 
          
          if playerValue > cpuValue { 
                  playerScore += 1 
          } else if cpuValue > playerValue { 
                  cpuScore += 1 
          } else { 
                  playerScore += 1 
                  cpuScore += 1 } 
  } 
  ``` </pre>


💡 FUTURE IMPROVMENTS

Add card animations

Add sound effects

Create a start screen

Add difficulty levels

🎯 ABOUT THE PROJECT

This project was created to practice SwiftUI and basic game logic.

👩‍💻 Author

SofiKruk
