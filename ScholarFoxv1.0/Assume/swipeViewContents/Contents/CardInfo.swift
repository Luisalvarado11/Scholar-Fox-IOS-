//
//  Imageview.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 10/6/22.
//

import Foundation
// import UIKit

struct card_info: Identifiable {
    var id = UUID()
    var image: String
    var mascotImage: String
    var name: String
    var mascot: String
    var GPA: Double
    var MAJOR: String
    
    // Card x position
    var x: CGFloat = 0.0
    //var x: [CGFloat] = [ ]
    // Card y position
    var y: CGFloat = 0.0
    // Card rotation angle
    var degree: Double = 0.0
    // var degree: [Double] = [ ]
    
    // images and detail are being stored
    static var data: [card_info] {
        [
            //MARK: Cal state schools
            card_info(image: "Fullerton", mascotImage: "tuffy", name: "CSU, Fullerton", mascot: "Tuffy Titan", GPA: 3.7, MAJOR: "Business"),
            
            card_info(image: "LongBeach", mascotImage: "shark" ,name: "CSU, Long Beach", mascot: "Elbee the shark", GPA: 3.61, MAJOR: "Business"),
            
            card_info(image: "SDSU", mascotImage: "aztec" ,name: "CSU, San Diego", mascot: "Aztec Warrior", GPA: 3.7, MAJOR: "Business"),
            
            card_info(image: "DH", mascotImage: "toro" ,name: "CSU, Dominguez Hills", mascot: "Toro", GPA: 3.2, MAJOR: "Business"),
            
            card_info(image: "Poly", mascotImage: "musty" ,name: "CSU, Polytechnic", mascot: "Musty the Mustang", GPA: 3.8, MAJOR: "Business"),
            
            card_info(image: "LA", mascotImage: "eddie" ,name: "CSU, LA", mascot: "Eddie the Golden Eagle", GPA: 3.43, MAJOR: "Political Science"),
            
            card_info(image: "CPP", mascotImage: "billy" ,name: "CPP, Pomona", mascot: "Billy Bronco", GPA: 3.6, MAJOR: "Business"),
            
            card_info(image: "Northridge", mascotImage: "matador" ,name: "CSU, Northridge", mascot: "The Matador", GPA: 3.4, MAJOR: "Psychology"),
            
            //MARK: UC schools
            card_info(image: "Irvine", mascotImage: "anteater" ,name: "UC, Irvine", mascot: "Anteaters", GPA: 4.0, MAJOR: "Computer science"),
            
            card_info(image: "SB", mascotImage: "gauchos" ,name: "UC, Santa Barbara", mascot: "Gauchos", GPA: 4.0, MAJOR: "Sociology"),
            
            card_info(image: "SC", mascotImage: "sammy" ,name: "UC, Santa Cruz", mascot: "Sammy the Slug", GPA: 3.5, MAJOR: "Computer science"),
            
            card_info(image: "Merced", mascotImage: "bobcats" ,name: "UC, Merced", mascot: "Bobcats", GPA: 3.6, MAJOR: "Biology"),
            
            card_info(image: "Davis", mascotImage: "cow" ,name: "UC, Davis", mascot: "Cow", GPA: 4.0, MAJOR: "Psychology"),
            
            card_info(image: "Riverside", mascotImage: "scott" ,name: "UC, Riverside", mascot: "Scott Highlander", GPA: 3.8, MAJOR: "Business"),
            
            card_info(image: "UCLA", mascotImage: "bruin" ,name: "UC, Los Angeles", mascot: "Joe Bruin", GPA: 3.9, MAJOR: "Sociology"),
            
            card_info(image: "UCB", mascotImage: "oski" ,name: "UC, Berkeley", mascot: "Oski", GPA: 3.7, MAJOR: "Biology"),
            
            card_info(image: "UCSD", mascotImage: "triton" ,name: "UC, San Diego", mascot: "King Triton", GPA: 4.0, MAJOR: "Cognitive Science")
        ]
    }
}

//[
//    card_info(image: "csuf", name: "CSUF", mascot: "Home of the Titans", GPA: 2.49, MAJOR: "Business"),
//    card_info(image: "cal_poly", name: "CALPOLY", mascot: "Crazy School", GPA: 4.0, MAJOR: "Business"),
//    card_info(image: "csulb", name: "CSULB", mascot: "School near the ocean", GPA: 3.56, MAJOR: "Business"),
//    card_info(image: "san_bern", name: "CSUBERNARDINO", mascot: "School near the mountains", GPA: 3.2, MAJOR: "Psychology"),
//    card_info(image: "csu_fresno", name: "CSUFRESNO", mascot: "Nice looking School", GPA: 2.0, MAJOR: "Liberal Studies"),
//    card_info(image: "csu_la", name: "CSULA", mascot: "Prison School", GPA: 2.5, MAJOR: "Political Science"),
//    card_info(image: "csu_humboldt", name: "CSUHUMBOLDT", mascot: "Church School", GPA: 2.49, MAJOR: "Psychology")
//]

