//
//  GameView.swift
//  Code History
//
//  Created by Marcin Matusiak on 2/2/25.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(
            questionText: "What was the first computer bug?",
            possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
            correctAnswerIndex: 2)
    
    @State var mainColor = GameColor.main
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                  ForEach(0..<question.possibleAnswers.count) { answerIndex in
                   
                      Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                      }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                      }
                  }
                }
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    GameView()
}
