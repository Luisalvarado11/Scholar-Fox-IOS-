//
//  Functions.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 9/22/22.
//

import Foundation

private var gpa: String = ""
private var major: String = ""
private var show: Bool = false

// schools created with the struct

let CSUF = schoolsInfo(name: "CSUF", GPA: 2.49, major: "Business")
let CALPOLY = schoolsInfo(name: "CALPOLY", GPA: 4.0, major: "Engineering")
let CSULB = schoolsInfo(name: "CSULB", GPA: 3.56, major: "Social Sciences")

private let school = ["CSUF", "CALPOLY", "CSULB"]

// creating the code to print the string
func assumeForGpa(_ assume: Double) -> String{
    var something = ""
    
    if assume < 0 && assume > 4.0{
        something = "Try again"
        
    } else if assume <= CSUF.GPA && assume >= 2.0{
        something = CSUF.name
        
    } else if assume <= CSULB.GPA && assume >= 3.3{
        something = CSULB.name
        
    } else if assume <= CALPOLY.GPA && assume >= 3.0{
        something = CALPOLY.name
        
    } else {
        something = "Keep Working Hard"
        
    }
    return String(something)
}

// creating the code to print the string
func assumeForMajor(_ assume: String) -> String {
    //let assume = major
    var something = ""
    
    if assume == CSUF.major {
        something = CSUF.name
    } else if assume == CALPOLY.major {
        something = CALPOLY.name
    } else if assume == CSULB.major {
        something = CSULB.name
    } else {
        something = "Empty"
    }
    return String(something)
}

func button() {
    if show {
    print("This is working")
    }
}
