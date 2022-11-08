//
//  UCDetails.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/28/22.
//

import SwiftUI

struct UCDetails: View {
    var UCDetail: University
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                // Image
                Image(UCDetail.image)
                    .resizable()
                    .scaledToFit()
            }
            
            Group {
                // Title
                Text(UCDetail.name)
                    .font(.system(.largeTitle, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                
                UCRating(UCDetail: UCDetail)
                
                    .padding()
                HStack(alignment: .center, spacing: 30) {
                    // City
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(Color.red)
                    Text("Location: \(UCDetail.city)")
                        .font(.system(.body, design: .serif))
                    
                    // Campus Setting
                    Image(systemName: "leaf.circle.fill")
                        .foregroundColor(Color.green)
                    Text("Campus Setting: \(UCDetail.campus_setting)")
                        .font(.system(.body, design: .serif))
                }
                
                .padding()
                HStack(alignment: .center, spacing: 30) {
                    Image(systemName: "teddybear.fill")
                        .foregroundColor(Color.brown)
                    Text("Mascot: \(UCDetail.mascot)")
                        .font(.system(.body, design: .serif))
                }
                
                Link(destination: URL(string: UCDetail.web)!, label: {
                    Label(
                        title: { Text("Apply")
                            .foregroundColor(Color.blue)
                        },
                        icon: { Image(systemName: "paperplane.fill") })
                })
                .padding()
                
                Divider()
                    .frame(height: 4)
                
                admissions(UCDetail: UCDetail)

                Divider()
                    .frame(height: 4)
                
                Financial(UCDetail: UCDetail)
            }
        }
    }
}

struct UCDetails_Previews: PreviewProvider {
    static var previews: some View {
        UCDetails(UCDetail: uc[1])
    }
}
