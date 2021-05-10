//
//  HeaderView.swift
//  Honeymoon
//
//  Created by MahDi SaeDi on 5/10/21.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                //ACTION
                print("information")
            }){
                Image(systemName: "info.circle")
                    .font(.system(size: 24,weight: .regular))
            }
            .accentColor(.primary)
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height:28)
            Spacer()
            Button(action: {
                //ACTION
                self.showGuideView.toggle()
                
            }){
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24,weight: .regular))
            }
            .accentColor(.primary)
            .sheet(isPresented: $showGuideView){
                GuideView()
            }
        }
        .padding()
    }
}
//MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide:Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
