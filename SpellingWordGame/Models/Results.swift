//
//  Results.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-07.
//

import Foundation

struct Result: Identifiable {
    
    let id = UUID()
    
    let item: Item
    
    let guessProvided: String
    
    let outcome: Outcome
}
