//
//  ContentView.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-07.
//

import SwiftUI

struct GameView: View {
    //MARK: Stored properties
    
    
    
    var body: some View {
        // left
        
        HStack{
            
            VStack{
                Image("bread")
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Text("input")
                    
                }
                
                HStack {
                    
                    Button {
                        ////
                    } label: {
                        Text("submit")
                    }
                    
                    Button {
                        ///
                    } label: {
                        Text("new")
                    }
               }
            }
            .padding()
            
            //right
            
            VStack {
                
                
                HStack {
                    Image ("bread")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
            }
        }
    }
    
    
    
}

#Preview {
    GameView()
}
