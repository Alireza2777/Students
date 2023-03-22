//
//  History.swift
//  Student Grades
//
//  Created by Alireza Karimi on 2023-03-21.
//

import Foundation

class History: Subject {
    private let Attendancegrade = 0.1
    private let Projectgrade = 0.3
    private let Midtermgrade = 0.3
    private let Finalgrade = 0.3
    
    private let attendancegrade: Double
    private let projectgrade: Double
    private let midtermgrade: Double
    private let finalgrade: Double
    
    func getGrade() -> Double {
        return (attendancegrade * Attendancegrade) + (projectgrade * Projectgrade) + (midtermgrade * Midtermgrade) + (finalgrade * Finalgrade)
    }
    
    init(firstName: String, lastName: String, attendancegrade: Double, projectgrade: Double, midtermgrade: Double, finalgrade: Double) {
        self.attendancegrade = attendancegrade
        self.projectgrade = projectgrade
        self.midtermgrade = midtermgrade
        self.finalgrade = finalgrade
        super.init(firstName: firstName, lastName: lastName, subject: .History)
    }
}
