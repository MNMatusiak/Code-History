//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Marcin Matusiak on 2/5/25.
//
import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
