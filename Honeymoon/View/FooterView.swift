//
//  FooterView.swift
//  Honeymoon
//
//  Created by MahDi SaeDi on 5/10/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42,weight: .light))
            Spacer()
            Button(action: {
                //ACTION
                print("Success!")
            }){
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline,design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .accentColor(.pink)
                    .background(
                        Capsule().stroke(Color.pink,lineWidth: 2)
                    )
            }
            Spacer()
            Image(systemName: "heart.circle")
                .font(.system(size: 42,weight: .light))
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
