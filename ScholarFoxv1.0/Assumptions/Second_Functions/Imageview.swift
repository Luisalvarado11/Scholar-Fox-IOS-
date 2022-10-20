//
//  Imageview.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 10/6/22.
//

import Foundation
import UIKit

struct card_info: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var descrption: String
    
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
        card_info(image: "csuf", name: "CSUF", descrption: "Best School"),
        card_info(image: "cal_poly", name: "CALPOLY", descrption: "Crazy School"),
        card_info(image: "csulb", name: "CSULB", descrption: "School near the ocean"),
        card_info(image: "san_bern", name: "CSUBERNARDINO", descrption: "School near the mountains"),
        card_info(image: "csu_fresno", name: "CSUFRESNO", descrption: "Nice looking School"),
        card_info(image: "csu_la", name: "CSULA", descrption: "Prison School"),
        card_info(image: "csu_humboldt", name: "CSUHUMBOLDT", descrption: "Church School"),
        
        ]
    }
}
