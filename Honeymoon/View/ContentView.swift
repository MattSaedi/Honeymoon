//
//  ContentView.swift
//  Honeymoon
//
//  Created by MahDi SaeDi on 5/10/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State var showAlert:Bool = false
    @State var showGuide:Bool = false
    @State var showInfo:Bool = false
    //MARK: - BODY
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            Spacer()
            CardView(honeymoon: honeymoonData[1])
            //FIXME: Add padding to the cards later on.
                .padding()
            Spacer()
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented:$showAlert){
            Alert(title: Text("SUCCESS"),message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),dismissButton: .default(Text("Happy Honeymoon")))
            
        }
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
