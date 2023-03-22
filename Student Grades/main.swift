//
//  main.swift
//  Student Grades
//
//  Created by Alireza Karimi on 2023-03-21.
//

import Foundation

var fileContent = "" //The content in the input file
    var outputFile = "" //The string with the URL of the output file
    var students: [Subject] = [] //The dynamic array for all the students information
    //Loop to get input file
    while true {
        print("Please enter the name of Input file:")
        if let input = readLine() { //Unwrap the input
            //Unwrap the contents of the file, replacing the \ found in the url to avoid an error
            if let content = try? String(contentsOfFile: input.replacingOccurrences(of: "\\", with: "")) {
                fileContent = content //Save the unwrapped contents
                break
            } else { //In case the file's contents cannot be unwrapped
                print("Invalid file. Please re-enter:")
            }
        } else { //In case the user's input cannot be unwrapped
            print("Invalid input. Please re-enter:")
            continue
        }
    }


