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
                // Image
                Image(csuDetail.image)
                    .resizable()
                    .scaledToFit()
            }
            Group {
                // title
                Text(csuDetail.name)
                    .font(.system(.largeTitle, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                
                // displays the rating's of the schools
                CSURating(csuDetail: csuDetail)
                
                    .padding()
                HStack(alignment: .center, spacing: 30) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(Color.red)
                    Text("Location: \(csuDetail.city)")
                        .font(.system(.body, design: .serif))
                    
                    // Campus Setting
                    Image(systemName: "leaf.circle.fill")
                        .foregroundColor(Color.green)
                    Text("Campus Setting: \(csuDetail.campus_setting)")
                        .font(.system(.body, design: .serif))
                }
                
                .padding()
                
                HStack(alignment: .center, spacing: 30) {
                    Image(systemName: "teddybear.fill")
                        .foregroundColor(Color.brown)
                    Text("Mascot: \(csuDetail.mascot)")
                        .font(.system(.body, design: .serif))
                }

                // Displays the Link for website
                Link(destination: URL(string: csuDetail.web)!, label: {
                    Label(
                        title: { Text("Apply")
                            .foregroundColor(Color.blue)
                        },
                        icon: { Image(systemName: "paperplane.fill") })
                })
                .padding()
                
                Divider()
                    .frame(height: 4)
                
                csuadmissions(csuDetail: csuDetail)
                
                Divider()
                    .frame(height: 4)
                    
                csuFinancial(csuDetail: csuDetail)
            }
        }
        .background(
            Image(csuDetail.mascotImages)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 200, height: 200)
                .opacity(0.2))
    }
}

struct CSUDetails_Previews: PreviewProvider {
    static var previews: some View {
        CSUDetails(csuDetail: csu[7])
    }
}
