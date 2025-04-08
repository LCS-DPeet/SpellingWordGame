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
    
    Item(word: "bad", wordName: "good", sideImage: "bad")
    
    
]
