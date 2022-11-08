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
    var name: String
    var descrption: String
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
            card_info(image: "csuf", name: "CSUF", descrption: "Home of the Titans", GPA: 2.49, MAJOR: "Business"),
            card_info(image: "cal_poly", name: "CALPOLY", descrption: "Crazy School", GPA: 4.0, MAJOR: "Business"),
            card_info(image: "csulb", name: "CSULB", descrption: "School near the ocean", GPA: 3.56, MAJOR: "Business"),
            card_info(image: "san_bern", name: "CSUBERNARDINO", descrption: "School near the mountains", GPA: 3.2, MAJOR: "Psychology"),
            card_info(image: "csu_fresno", name: "CSUFRESNO", descrption: "Nice looking School", GPA: 2.0, MAJOR: "Liberal Studies"),
            card_info(image: "csu_la", name: "CSULA", descrption: "Prison School", GPA: 2.5, MAJOR: "Political Science"),
            card_info(image: "csu_humboldt", name: "CSUHUMBOLDT", descrption: "Church School", GPA: 2.49, MAJOR: "Psychology")
        ]
    }
}
