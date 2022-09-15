//
//  University.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/13/22.
//

import Foundation

//@Breif: A struct for CSU universities
struct University:Identifiable {
    var id = UUID()
    
    var image: String

    var name: String
    
    var city: String

    var acceptanceRating: String
    
    var requiredGPA: String
    
    var knownFor: String
    
    var average_cost: String
    
    var description: String
    
    var recommendations: String
}

//@Breif: A struct for the UC universities
struct Uuniversity: Identifiable {
    var id = UUID()
    
    var image: String

    var name: String
    
    var city: String

    var acceptanceRating: String
    
    var average_cost:String
    
    var description: String
    
    var recommendations: String
}

//@Breif: University storage for later use.
var csu = [
    University(image: "Fullerton", name: "California State University, Fullerton", city: "City: Fullerton, CA", acceptanceRating: "Acceptance Rate: 69%", requiredGPA: "3.2", knownFor: "Known For: Business and Econmics, Drama, Theater, and Dance.", average_cost: "Tuition: $8K", description: "California State University—Fullerton is a public institution that was founded in 1957. It has a total undergraduate enrollment of 35,401 (fall 2021), its setting is city, and the campus size is 236 acres. It utilizes a semester-based academic calendar. California State University—Fullerton's ranking in the 2022-2023 edition of Best Colleges is National Universities, #166." , recommendations: ""),
    University(image: "LongBeach", name: "California State University, Long Beach", city: "City: Long Beach, CA", acceptanceRating: "Acceptance Rate: 42", knownFor: "", average_cost: "Tuition: $10K", description: "California State University—Long Beach is a public institution that was founded in 1949. It has a total undergraduate enrollment of 33,605 (fall 2021), its setting is urban, and the campus size is 322 acres. It utilizes a semester-based academic calendar. California State University—Long Beach's ranking in the 2022-2023 edition of Best Colleges is National Universities, #137", recommendations: ""),
    University(image: "SDSU", name: "San Diego State University ", city: "City: San Diego, CA", acceptanceRating: "Acceptance Rate: 37", knownFor: "", average_cost: "Tuition: $8.2K", description: "San Diego State University is a public institution that was founded in 1897. It has a total undergraduate enrollment of 30,865 (fall 2021), its setting is urban, and the campus size is 560 acres. It utilizes a semester-based academic calendar. San Diego State University's ranking in the 2022-2023 edition of Best Colleges is National Universities, #151." , recommendations: "")]

var uc = [
    Uuniversity(image: "", name: "UC Irvine", city: "Irvine, CA", acceptanceRating: "30", average_cost: "10K", description: "", recommendations: ""),
    Uuniversity(image: "", name: "UC Santa Barbara", city: "Santa Barbara, CA", acceptanceRating: "37", average_cost: "16K", description: "", recommendations: ""),
    Uuniversity(image: "", name: "UC Santa Cruz", city: "Santa Cruz, CA", acceptanceRating: "65", average_cost: "18K", description: "", recommendations: "")]

