//
//  Credits.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-08.
//

import SwiftUI

struct Credits: View {
    var body: some View {
        
        ZStack {
            Rectangle()
            
            Text("Game Made by Danika! :)")
                .font(.system(size: 100))
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    Credits()
}
