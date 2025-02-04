//
//  QuestionView.swift
//  Code History
//
//  Created by Marcin Matusiak on 2/3/25.
//

import SwiftUI

struct QuestionView: View {
  
  let question: Question
  
  var body: some View {
    VStack {
      Text(question.questionText)
        .font(.largeTitle)
        .bold()
        .multilineTextAlignment(.leading)
      Spacer()
      HStack {
        ForEach(0..<question.possibleAnswers.count) { answerIndex in
          Button(action: {
            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
          }) {
            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
          }
        }
      }
    }
  }
}
