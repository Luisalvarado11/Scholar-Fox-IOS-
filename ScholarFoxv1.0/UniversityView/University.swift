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
    
    var web: String
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
    
    var web: String
}

//@Breif: University storage for later use.
var csu = [
    University(image: "Fullerton", name: "California State University, Fullerton", city: "Fullerton, CA", minimum_gpa: "3.0", acceptanceRating: "69%", average_cost: "$8K", description: "California State University—Fullerton is a public institution that was founded in 1957. It has a total undergraduate enrollment of 35,401 (fall 2021), its setting is city, and the campus size is 236 acres. It utilizes a semester-based academic calendar. California State University—Fullerton's ranking in the 2022-2023 edition of Best Colleges is National Universities, #166." , web: "http://admissions.fullerton.edu/prospectivestudent/admissions_ftf.php"),
    University(image: "LongBeach", name: "California State University, Long Beach", city: "City: Long Beach, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 42%", average_cost: "Tuition: $10K", description: "California State University—Long Beach is a public institution that was founded in 1949. It has a total undergraduate enrollment of 33,605 (fall 2021), its setting is urban, and the campus size is 322 acres. It utilizes a semester-based academic calendar. California State University—Long Beach's ranking in the 2022-2023 edition of Best Colleges is National Universities, #137", web: "https://www.csulb.edu/apply"),
    University(image: "SDSU", name: "San Diego State University", city: "City: San Diego, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 37%",  average_cost: "Tuition: $8.2K", description: "San Diego State University is a public institution that was founded in 1897. It has a total undergraduate enrollment of 30,865 (fall 2021), its setting is urban, and the campus size is 560 acres. It utilizes a semester-based academic calendar. San Diego State University's ranking in the 2022-2023 edition of Best Colleges is National Universities, #151." , web: "https://admissions.sdsu.edu/apply"),
    University(image: "DH", name: "California State University, Dominguez Hills", city: "City: Carson, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 87%", average_cost: "Tuition: $8.4K", description: "California State University—Dominguez Hills is a public institution that was founded in 1960. It has a total undergraduate enrollment of 15,070 (fall 2021), its setting is suburban, and the campus size is 346 acres. It utilizes a semester-based academic calendar. California State University—Dominguez Hills' ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #56. ", web: "https://www.csudh.edu/coe/apply/"),
    University(image: "Poly", name: "California State Polytechnic University", city: "San Luis Obispo, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rate: 65%", average_cost: "Tuition: $7.5K", description: "California State Polytechnic University—Pomona is a public institution that was founded in 1938. It has a total undergraduate enrollment of 26,974 (fall 2021), its setting is suburban, and the campus size is 1,438 acres. It utilizes a semester-based academic calendar. California State Polytechnic University—Pomona's ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #14.", web: "https://www.calpoly.edu/admissions/first-year-student/how-to-apply"),
    University(image: "LA", name: "California State University, Los Angeles", city: "Los Angeles, CA", minimum_gpa: "3.0", acceptanceRating: "Acceptance Rate 76%", average_cost: "Tuition: $6.8K | Out of State: $18.7K", description: "California State University—Los Angeles is a public institution that was founded in 1947. It has a total undergraduate enrollment of 23,484 (fall 2021), its setting is urban, and the campus size is 175 acres. It utilizes a semester-based academic calendar. California State University—Los Angeles' ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #24.", web: "https://www.calstatela.edu/admissions/freshman-application-and-admission"),
    University(image: "CPP", name: "Cal Poly Pomona", city: "Pomona, CA", minimum_gpa: "Minimum GPA: 3.0", acceptanceRating: "Acceptance Rating: 65%", average_cost: "Tuition: $7.5K | Out Of State: $19.3K", description: "California State Polytechnic University—Pomona is a public institution that was founded in 1938. It has a total undergraduate enrollment of 26,974 (fall 2021), its setting is suburban, and the campus size is 1,438 acres. It utilizes a semester-based academic calendar. California State Polytechnic University—Pomona's ranking in the 2022-2023 edition of Best Colleges is Regional Universities West, #14.", web: "https://www.cpp.edu/admissions/intl/apply.shtml")
]

var uc = [
    Uuniversity(image: "Irvine", name: "University of California, Irvine", city: "Irvine, CA", minimum_gpa: "3.0", acceptanceRating: "30%", average_cost: "10K", description: "University of California, Irvine is a public institution that was founded in 1965. It has a total undergraduate enrollment of 29,449 (fall 2021), its setting is suburban, and the campus size is 1,475 acres. It utilizes a quarter-based academic calendar. University of California, Irvine's ranking in the 2022-2023 edition of Best Colleges is National Universities, #34. ", web: "https://www.admissions.uci.edu/apply/how-to-apply/index.php"),
    Uuniversity(image: "SB", name: "University of California, Santa Barbara", city: "Santa Barbara, CA", minimum_gpa: "3.0", acceptanceRating: "37%", average_cost: "15K", description: "University of California, Santa Barbara is a public institution that was founded in 1909. It has a total undergraduate enrollment of 23,091 (fall 2021), its setting is suburban, and the campus size is 989 acres. It utilizes a quarter-based academic calendar. University of California, Santa Barbara's ranking in the 2022-2023 edition of Best Colleges is National Universities, #32.", web: "https://admissions.sa.ucsb.edu"),
    Uuniversity(image: "SC", name: "University of California, Santa Cruz", city: "Santa Cruz, CA", minimum_gpa: "3.0", acceptanceRating: "65%", average_cost: "18K", description: "University of California, Santa Cruz is a public institution that was founded in 1965. It has a total undergraduate enrollment of 17,864 (fall 2021), its setting is suburban, and the campus size is 2,000 acres. It utilizes a quarter-based academic calendar. University of California, Santa Cruz's ranking in the 2022-2023 edition of Best Colleges is National Universities, #83.", web: "https://admissions.ucsc.edu"),
    Uuniversity(image: "Merced", name: "University of California, Merced", city: "Merced, CA", minimum_gpa: "3.0", acceptanceRating: "85%", average_cost: "$13.7K", description: "University of California, Merced is a public institution that was founded in 2005. It has a total undergraduate enrollment of 8,321 (fall 2021), its setting is rural, and the campus size is 815 acres. It utilizes a semester-based academic calendar. University of California, Merced's ranking in the 2022-2023 edition of Best Colleges is National Universities, #97.", web: "https://admissions.ucmerced.edu/apply")
]
