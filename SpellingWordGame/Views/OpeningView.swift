//
//  OpeningView.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-07.
//

import SwiftUI

struct OpeningView: View {
    var body: some View {
        ZStack{
            Rectangle()
            Text("second page")
                .foregroundStyle(.red)
            
            NavigationStack {
                        VStack {
                            Text("This is the first view")
                                .font(.title)

                            NavigationLink("Go to Second View") {
                               GameView()
                            }
                            .padding()
                        }
                        .navigationTitle("Home")
                    }
           
                
        }
    }
}

#Preview {
    OpeningView()
}
