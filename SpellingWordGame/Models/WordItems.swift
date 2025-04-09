//
//  WordItems.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-07.
//

import Foundation

struct Item: Identifiable {
    
    let id = UUID()
    let word: String
    let wordName: String
    let sideImage: String
}

let words = [
    // type word               display            image

    Item(word: "good", wordName: "Bad", sideImage: "Good"),
    Item(word: "slow", wordName: "Fast", sideImage: "Slow"),
    Item(word: "useless", wordName: "Useful", sideImage: "Useless"),
    Item(word: "bright", wordName: "Dark", sideImage: "Bright"),
    Item(word: "out", wordName: "In", sideImage: "Out"),
    Item(word: "end", wordName: "Start", sideImage: "End"),
    Item(word: "opposite", wordName: "Same", sideImage: "Opposite"),
    Item(word: "closed", wordName: "Open", sideImage: "closed"),
    Item(word: "big", wordName: "Small", sideImage: "Big"),
    Item(word: "love", wordName: "Hate", sideImage: "Love"),
    Item(word: "wet", wordName: "Dry", sideImage: "Wet"),
    Item(word: "less", wordName: "More", sideImage: "Less"),
    Item(word: "up", wordName: "Down", sideImage: "Up"),
    Item(word: "late", wordName: "Early", sideImage: "Late"),
    Item(word: "sick", wordName: "Heathly", sideImage: "Sick")
]
