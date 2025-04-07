//
//  AnwserFilter.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-07.
//

import Foundation

func filtering (
    originalList: [Result],
    on desiredOutcome: Outcome
) -> [Result] {
    
    if desiredOutcome == .undetermined { return originalList
    }
        
    var filteredHistory: [Result] = []
    
    for result in originalList {
        
        if result.outcome == desiredOutcome {
            filteredHistory.append(result)
        }
    }
    
    return filteredHistory
}
