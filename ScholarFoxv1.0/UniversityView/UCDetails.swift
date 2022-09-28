//
//  UCDetails.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/28/22.
//

import SwiftUI

struct UCDetails: View {
    var UCDetail: Uuniversity
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(UCDetail.image)
                    .resizable()
                    .scaledToFit()
            }
            
            Group {
                Text(UCDetail.name)
                    .font(.system(.largeTitle, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(Color.red)
                    Text("Location: \(UCDetail.city)")
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(Color.green)
                    Text("Tuition Cost \(UCDetail.average_cost)")
                        .fontWeight(.medium)
                }
                
                Spacer(minLength: 10)
                
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .foregroundColor(Color.blue)
                    Text("Acceptance Rate: \(UCDetail.acceptanceRating)")
                    
                    Spacer()
                    
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(Color.green)
                    Text("Out of State Tuition: ")
                }
                Spacer(minLength: 25)
                
                Link(destination: URL(string: UCDetail.web)!, label: {
                    Label(
                        title: { Text("Apply")
                            .foregroundColor(Color.blue)
                        },
                        icon: { Image(systemName: "paperplane.fill") })
                })
                Spacer(minLength: 25)
                
                Text(UCDetail.description)
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

struct UCDetails_Previews: PreviewProvider {
    static var previews: some View {
        UCDetails(UCDetail: uc[0])
    }
}
