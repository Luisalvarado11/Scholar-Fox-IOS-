//
//  CSUDetails.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/27/22.
//

import SwiftUI

struct CSUDetails: View {
    var csuDetail: University
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(csuDetail.image)
                    .resizable()
                    .scaledToFit()
            }
                
            Group {
                Text(csuDetail.name)
                    .font(.system(.largeTitle, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(Color.red)
                    Text("Location: \(csuDetail.city)")
                        .fontWeight(.medium)
                        
                    Spacer()
                        
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(Color.green)
                    Text("Tuition Cost \(csuDetail.average_cost)")
                        .fontWeight(.medium)
                }
                    
                Spacer(minLength: 10)
                    
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .foregroundColor(Color.blue)
                    Text("Acceptance Rate: \(csuDetail.acceptanceRating)")
                        
                    Spacer()
                        
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(Color.green)
                    Text("Out of State Tuition: \(csuDetail.out_of_state)")
                }
                Spacer(minLength: 10)
                
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "list.clipboard")
                    Text("Minimum Required GPA: \(csuDetail.minimum_gpa)")
                }
                
                Spacer(minLength: 25)
                    
                Link(destination: URL(string: csuDetail.web)!, label: {
                    Label(
                        title: { Text("Apply")
                            .foregroundColor(Color.blue)
                        },
                        icon: { Image(systemName: "paperplane.fill") })
                })
                Spacer(minLength: 25)
                    
                Text(csuDetail.description)
                    .font(.system(.body, design: .serif))
            }
                
            Spacer(minLength: 15)
                
            Text("Recommendations")
                .font(.title3)
                .fontWeight(.semibold)
        }
        .background(
            Image("Sand")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 450, height: 850))
    }
}

struct CSUDetails_Previews: PreviewProvider {
    static var previews: some View {
        CSUDetails(csuDetail: csu[0])
    }
}
