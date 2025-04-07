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
    let imageName: String
}

let words = [
    
    Item(word: "Bread", imageName: "bread"),
    Item(word: "Pickle", imageName: "pickle")
    
    
    
]
