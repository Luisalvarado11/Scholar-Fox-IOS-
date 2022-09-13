//
//  University.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/13/22.
//

import Foundation

struct University:Identifiable {
    var id = UUID()
    
    var image: String

    var name: String
    
    var city: String

    var acceptanceRating: Int
    
    var description: String
    
    var recommendations: String
}

//@Breif: University storage for later use.
var csu = [
University(image: "", name: "California State University, Fullerton", city: "Fullerton", acceptanceRating: 69, description: "", recommendations: "")]
