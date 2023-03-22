//
//  English.swift
//  Student Grades
//
//  Created by Alireza Karimi on 2023-03-21.
//

import Foundation

class English: Subject {
    private let Papergrade = 0.25
    private let Midtermgrade = 0.35
    private let Finalgrade = 0.45
    
    private let papergrade: Double
    private let midtermgrade: Double
    private let finalgrade: Double
    
    func getGrade() -> Double {
        return (papergrade * Papergrade) + (midtermgrade * Midtermgrade) + (finalgrade * Finalgrade)
    }
    init(firstName: String, lastName: String, papergrade: Double, midtermgrade: Double, finalgrade: Double) {
        self.papergrade = papergrade
        self.midtermgrade = midtermgrade
        self.finalgrade = finalgrade
        super.init(firstName: firstName, lastName: lastName, subject: .English)
    }// called on all paths before return
}
