//  SlideStartView.swift
//
//  Created by Owen on 2023/10/10
	

import SwiftUI

struct SlideStartView: View {
    
    @State private var width: Double = UIScreen.main.bounds.width - 60
    @State private var offSet: CGFloat = 0
    @State private var isDone: Bool = true
    
    var body: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            
            VStack {
                Image(systemName: "apple.logo")
                    .resizable()
                    .frame(width: 200, height: 240)
                    .foregroundStyle(LinearGradient(colors: [.orange.opacity(0.7), .brown], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .scaleEffect(isDone ? 0 : 1)
                    .animation(.easeOut(duration: 1), value: isDone)
                    
                Spacer()
                ZStack {
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    HStack {
                        Capsule()
                            .fill(.orange)
                            .frame(width: offSet + 60)
                        
                        Spacer()
                    }
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color.orange)
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60, alignment: .center)
                        .offset(x: offSet)
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    if gesture.translation.width > 0 && offSet <= width - 60 {
                                        offSet = gesture.translation.width
                                    }
                                }
                                .onEnded { value in
                                    withAnimation(Animation.easeIn(duration: 0.4)) {
                                        if offSet > width / 2 {
                                            offSet = width - 60
                                            isDone = false
                                        } else {
                                            offSet = 0
                                        }
                                    }
                                }
                            
                            
                        )
                        Spacer()
                    }
                }
                .frame(width: width, height: 60)
            }
        }
    }
}

struct SlideStartView_Previews: PreviewProvider {
    static var previews: some View {
        SlideStartView()
    }
}
