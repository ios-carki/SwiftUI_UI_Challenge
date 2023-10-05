//
//  OnboardingView.swift
//  SwiftUI_UI_Challenge
//
//  Created by Owen on 2023/10/04.
//

import SwiftUI

struct OnboardingView: View {
    var data: [onboardingContents] = onboardingData
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.indigo, .teal], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            TabView {
                ForEach(0..<onboardingData.count) { item in
                    CardView(image: data[item].image, text: data[item].text)
                        .frame(height: UIScreen.main.bounds.height * 0.7)
                        .padding(.horizontal, 16)
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
