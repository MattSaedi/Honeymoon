//
//  ContentView.swift
//  Honeymoon
//
//  Created by MahDi SaeDi on 5/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
