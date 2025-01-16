//
//  CustomBackgroundView.swift
//  Hiking
//
//  Created by Nguyễn Công Thư on 15/1/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            LinearGradient(
                colors: [.customGreenLight, .customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            ).cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView().padding()
}
