//
//  ContentView.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-07.
//

import SwiftUI

struct GameView: View {
    
    //MARK: Stored properties

    @State var currentItem = words.randomElement()!
    
    @State var userAnwser = ""
    
    @State var currentOutcome: Outcome = .undetermined
    
    @State var history: [Result] = []
    
    @State var selectedOutcomeFilter: Outcome = .undetermined
    
    
    
    var body: some View {
        // left
        
        HStack{
            
            VStack{
                Image(currentItem.imageName)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    TextField("What is the opposite to _______?", text: $userAnwser)
                    
                    Text(currentOutcome.rawValue)
                    
                }
                
                HStack {
                    
                    Button {
                        checkAnwser()
                    } label: {
                        Text("submit")
                    }
                    
                    Button {
                        newWord()
                    } label: {
                        Text("new")
                    }
               }
            }
            .padding()
            
            //right
            
            VStack {
                
                Picker("Filtering on", selection: $selectedOutcomeFilter) {
                    Text("All restults").tag(Outcome.undetermined)
                    Text("Correct").tag(Outcome.correct)
                    Text("Incorrect").tag(Outcome.incorrect)
                }
                
                List(
                    filtering(originalList: history, on: selectedOutcomeFilter)
                ) { currentResult in
                    
                    HStack {
                        Image (currentResult.item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                        
                        Text(currentResult.guessProvided)
                        Spacer()
                        Text(currentResult.outcome.rawValue)
                    }
                }
            }
        }
    }
    
    //MARK: Functions
    func checkAnwser() {
        if userAnwser == currentItem.word {
            currentOutcome = .correct
            print("correct")
        } else {
            currentOutcome = .incorrect
            print("incorrect")
        }
    }
    
    func newWord() {
        history.insert(
            Result (item: currentItem, guessProvided: userAnwser, outcome: currentOutcome),
            at: 0
        )
    
        print(history)
        
        currentItem = words.randomElement()!
        userAnwser = ""
        currentOutcome = .undetermined
    }
    
}

#Preview {
    GameView()
}
