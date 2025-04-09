//
//  OpeningView.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-07.
//

import SwiftUI

struct OpeningStudentView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Image("monkey1")
                
                VStack {
                    
                    Text("WordFlip")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    VStack {
                        NavigationLink("Play") {
                            GameView()
                        }
                        
                        .navigationTitle("Home")
                        
                        NavigationLink("Practice") {
                            GameView()
                        }
                        NavigationLink("Credits") {
                            Credits()
                        }
                        
                        .navigationTitle("Home")
                        
                        NavigationLink("Educators") {
                            TeacherGameView()
                        }
                    }
                }
            }
        }
        }
    }

#Preview {
    OpeningStudentView()
}
