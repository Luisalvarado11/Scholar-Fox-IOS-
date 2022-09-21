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
    
    var minimum_gpa: String

    var acceptanceRating: String
    
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
    
    var minimum_gpa: String

    var acceptanceRating: String
    
    var average_cost:String
    
    var description: String
    
    var recommendations: String
}

//@Breif: University storage for later use.
var csu = [
    University(image: "Fullerton", name: "California State University, Fullerton", city: "City: Fullerton, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 69%", average_cost: "Tuition: $8K", description: "California State University—Fullerton is a public institution that was founded in 1957. It has a total undergraduate enrollment of 35,401 (fall 2021), its setting is city, and the campus size is 236 acres. It utilizes a semester-based academic calendar. California State University—Fullerton's ranking in the 2022-2023 edition of Best Colleges is National Universities, #166." , recommendations: "http://admissions.fullerton.edu/prospectivestudent/admissions_ftf.php"),
    University(image: "LongBeach", name: "California State University, Long Beach", city: "City: Long Beach, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 42%", average_cost: "Tuition: $10K", description: "California State University—Long Beach is a public institution that was founded in 1949. It has a total undergraduate enrollment of 33,605 (fall 2021), its setting is urban, and the campus size is 322 acres. It utilizes a semester-based academic calendar. California State University—Long Beach's ranking in the 2022-2023 edition of Best Colleges is National Universities, #137", recommendations: "https://www.csulb.edu/apply"),
    University(image: "SDSU", name: "San Diego State University", city: "City: San Diego, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 37%",  average_cost: "Tuition: $8.2K", description: "San Diego State University is a public institution that was founded in 1897. It has a total undergraduate enrollment of 30,865 (fall 2021), its setting is urban, and the campus size is 560 acres. It utilizes a semester-based academic calendar. San Diego State University's ranking in the 2022-2023 edition of Best Colleges is National Universities, #151." , recommendations: "https://admissions.sdsu.edu/apply")]

var uc = [
    Uuniversity(image: "Irvine", name: "UC Irvine", city: "City: Irvine, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 30%", average_cost: "Tuition: 10K", description: "University of California, Irvine is a public institution that was founded in 1965. It has a total undergraduate enrollment of 29,449 (fall 2021), its setting is suburban, and the campus size is 1,475 acres. It utilizes a quarter-based academic calendar. University of California, Irvine's ranking in the 2022-2023 edition of Best Colleges is National Universities, #34. ", recommendations: "https://www.admissions.uci.edu/apply/how-to-apply/index.php"),
    Uuniversity(image: "SB", name: "UC Santa Barbara", city: "City: Santa Barbara, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 37%", average_cost: "Tuition: 15K", description: "University of California, Santa Barbara is a public institution that was founded in 1909. It has a total undergraduate enrollment of 23,091 (fall 2021), its setting is suburban, and the campus size is 989 acres. It utilizes a quarter-based academic calendar. University of California, Santa Barbara's ranking in the 2022-2023 edition of Best Colleges is National Universities, #32.", recommendations: "https://admissions.sa.ucsb.edu"),
    Uuniversity(image: "SC", name: "UC Santa Cruz", city: "Santa Cruz, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 65%", average_cost: "18K", description: "University of California, Santa Cruz is a public institution that was founded in 1965. It has a total undergraduate enrollment of 17,864 (fall 2021), its setting is suburban, and the campus size is 2,000 acres. It utilizes a quarter-based academic calendar. University of California, Santa Cruz's ranking in the 2022-2023 edition of Best Colleges is National Universities, #83.", recommendations: "https://admissions.ucsc.edu")
]
