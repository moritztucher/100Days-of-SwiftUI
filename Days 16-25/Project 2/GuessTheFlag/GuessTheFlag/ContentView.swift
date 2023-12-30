//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Moritz Tucher on 29.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var gamesPlayed = 1
    
    @State private var endGame = false
    @State private var endTitle = "Game End"
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold))
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .clipShape(.capsule)
                            .shadow(radius: 5)
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score) of \(gamesPlayed)")
        }
        .alert(endTitle, isPresented: $endGame) {
            Button("Restart Game", action: askQuestion)
        } message: {
            Text("Your score is \(score) of \(gamesPlayed)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number]) not \(countries[correctAnswer])"
        }
        
        if (gamesPlayed < 8) {
            showingScore = true
        } else {
            endGame = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        gamesPlayed += 1
    }
    
    func reset(){
        score = 0
        gamesPlayed = 0
        askQuestion()
    }
}

#Preview {
    ContentView()
}
