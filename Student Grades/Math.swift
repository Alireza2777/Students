//
//  Math.swift
//  Student Grades
//
//  Created by Alireza Karimi on 2023-03-21.
//

import Foundation

class Math: Subject {
    private let Quizgrade = 0.15
    private let Testgrade = 0.25
    private let Finalgrade = 0.35
    
    private let Quizzesgrade: [Double]
    private let Testsgrade: [Double]
    private let Finalsgrade: Double
    
    func getGrade() -> Double {
        var quizAverage = 0.0
        for Quizzesgrade in Quizzesgrade {
            quizAverage += Quizzesgrade
        }
        quizAverage /= Double(Quizzesgrade.count)
        return (quizAverage * Quizgrade) + (Testsgrade[0] * Testgrade) + (Testsgrade[1] * Testgrade) + (Finalsgrade * Finalgrade)
    }
    
    init(firstName: String, lastName: String, Quizzesgrade: [Double], Testsgrade: [Double], Finalsgrade: Double) {
        self.Quizzesgrade = Quizzesgrade
        self.Testsgrade = Testsgrade
        self.Finalsgrade = Finalsgrade
        super.init(firstName: firstName, lastName: lastName, subject: .Math)
    }
}
