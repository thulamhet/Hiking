//
//  CardView.swift
//  Hiking
//
//  Created by Nguyễn Công Thư on 15/1/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle().fill(
                LinearGradient(
                    colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            ).frame(width: 300, height: 300)
            Image("image-1").resizable().scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
