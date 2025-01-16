//
//  CustomCircleView.swift
//  Hiking
//
//  Created by Nguyễn Công Thư on 15/1/25.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            
            Circle()
                .fill(
                LinearGradient(
                    colors: [.customIndigoMedium, .customSalmonLight],
                    startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                )
            )
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                    isAnimateGradient.toggle()
                }
            }
            MotionAnimationView()
        }.frame(width: 300, height: 300)
    }
}

#Preview {
    CustomCircleView()
}
