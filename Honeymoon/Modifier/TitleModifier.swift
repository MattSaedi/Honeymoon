//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by MahDi SaeDi on 5/10/21.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content:Content) -> some View{
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
