//
//  CardView.swift
//  SwiftUI_UI_Challenge
//
//  Created by Owen on 2023/10/04.
//

import SwiftUI

struct CardView: View {
    
    @State private var isAnimating: Bool = false
    var image: String
    var text: String
    
    var body: some View {
        ZStack {
            VStack {
                Text(text)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.6), radius: 2, x: 2, y: 4)
                
                Image(systemName: image)
                    .resizable()
                    .frame(width: 150, height: 250)
                    .foregroundStyle(LinearGradient(colors: [.white, .teal], startPoint: .top, endPoint: .bottom))
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.6), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [.white, .teal]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "figure.wave", text: "Hi")
    }
}
