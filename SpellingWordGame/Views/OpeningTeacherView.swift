//
//  OpeningTeacherView.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-08.
//

import SwiftUI

struct OpeningTeacherView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Rectangle()
                
                VStack {
                    NavigationLink("How to play") {
                        GameView()
                    }
                    NavigationLink("Credits") {
                        Credits()
                    }
                    NavigationLink("Free Play") {
                        GameView()
                        
                    }
                }
            }
        }
    }
}

#Preview {
    OpeningTeacherView()
}
