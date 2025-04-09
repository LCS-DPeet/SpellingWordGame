//
//  MediumPracticeView.swift
//  SpellingWordGame
//
//  Created by Danika Peet on 2025-04-09.
//

import SwiftUI

struct MediumPracticeView: View {
    
    //MARK: Stored properties

    @State var currentItem = words.randomElement()!
    
    @State var userAnwser = ""
    
    @State var currentOutcome: Outcome = .undetermined
    
    @State var history: [Result] = []
    
    @State var selectedOutcomeFilter: Outcome = .undetermined
    
    @State private var searchText = ""
    
    
    
    var body: some View {
        // left
        
        ZStack{
            Rectangle()
                .foregroundStyle(.red)
            
            HStack{
                
                VStack{
                    HStack {
                        Text(currentItem.wordName)
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                        
                        Text("Hint:")
                            .foregroundStyle(.white)
                            .bold()
                        
                        Image(currentItem.sideImage)
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                    
                    
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
                            Image (currentResult.item.wordName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            Text(currentResult.guessProvided)
                            Spacer()
                            Text(currentResult.outcome.rawValue)
                
                    }
                        Rectangle()
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
    MediumPracticeView()
}
