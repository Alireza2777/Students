//
//  Student.swift
//  Student Grades
//
//  Created by Alireza Karimi on 2023-03-21.
//

import Foundation

class Subject: Comparable {
    private let firstName: String
    private let lastName: String
    private let subject: Subjects
    enum Subjects: Int {
        case English = 1
        case Math = 2
        case History = 3
    }
    
    init(firstName: String, lastName: String, subject: Subjects) {
        self.firstName = firstName
        self.lastName = lastName
        self.subject = subject
    }
    
    static func <(lhs: Subject, rhs: Subject) -> Bool {
        lhs.lastName < rhs.lastName && lhs.subject.rawValue < rhs.subject.rawValue
    }
    static func ==(lhs: Subject, rhs: Subject) -> Bool {
        lhs.lastName == rhs.lastName && lhs.firstName == rhs.firstName && lhs.subject == rhs.subject
    }
}
