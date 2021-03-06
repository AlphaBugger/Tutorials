//
//  EmojiGame.swift
//  Tutoriale
//
//  Created by Eduard Zepciuc on 11.06.2021.
//

import SwiftUI


class EmojiGame{
   
   static let emojis = ["π","π","π","π","π","π","π","π€£","π₯²","βΊοΈ","π","π","π","π","π","π","π₯°","π","π"]
    
    static func createMemoryGame()->MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex]}
    }

    private var model: MemoryGame<String> = createMemoryGame()
        
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
}
