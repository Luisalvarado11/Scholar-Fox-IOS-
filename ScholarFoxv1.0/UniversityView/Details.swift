//
//  Details.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 12/8/22.
//

import SwiftUI

struct Details: View {
    let detail: University
    
    init(detail: University) {
        self.detail = detail
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(detail.image)
                    .resizable()
                    .scaledToFit()
            }
            Group {
                // title
                Text(detail.name)
                    .font(.system(.largeTitle, design: .serif))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                
                // displays the rating's of the schools
                StarsView(rating: Float(detail.rating))
                
                    .padding()
                
                // displays the location and campus setting section
                HStack(alignment: .center, spacing: 30) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(Color.red)
                    Text("Location: \(detail.city)")
                        .font(.system(.body, design: .serif))
                    
                    // Campus Setting
                    Image(systemName: "leaf.circle.fill")
                        .foregroundColor(Color.green)
                    Text("Campus Setting: \(detail.campus_setting)")
                        .font(.system(.body, design: .serif))
                }
                
                .padding()
                
                // displays the mascot section
                HStack(alignment: .center, spacing: 30) {
                    Image(systemName: "teddybear.fill")
                        .foregroundColor(Color.brown)
                    Text("Mascot: \(detail.mascot)")
                        .font(.system(.body, design: .serif))
                }

                // Displays the Link for website
                Link(destination: URL(string: detail.web)!, label: {
                    Label(
                        title: { Text("Apply")
                            .foregroundColor(Color.blue)
                        },
                        icon: { Image(systemName: "paperplane.fill") })
                })
                .padding()
                
                Divider()
                    .frame(height: 4)
                
                // calls admission page
                admissions(admin: detail)

                Divider()
                    .frame(height: 4)
//
//                //calls tuition and description section of the view
                Financial(financial: detail)
            }
        }
        // loads the schools mascot onto UI page
        .background(
            Image(detail.mascotImages)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 200, height: 200)
                .opacity(0.2))
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(detail: uc[0])
    }
}
