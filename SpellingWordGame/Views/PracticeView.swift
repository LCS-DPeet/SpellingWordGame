//
//  PracticeView.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-08.
//

import SwiftUI

struct PracticeView: View {
    var body: some View {
     
        NavigationStack {
            
            ZStack {
                Rectangle()
                
                VStack {
                    
                Text("Levels:")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .bold()
                
                    NavigationLink("Easy") {
                        GameView()
                    }
                    
                    NavigationLink("Medium") {
                        GameView()
                    }
                    
                    NavigationLink("Hard") {
                        GameView()
                    }
                }
                
            }
        }
    }
}

#Preview {
    PracticeView()
}
