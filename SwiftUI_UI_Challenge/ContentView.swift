//
//  ContentView.swift
//  SwiftUI_UI_Challenge
//
//  Created by Owen on 2023/10/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: OnboardingView()) {
                    HStack {
                        Text("Onboarding")
                            .foregroundColor(.black)
                            .font(.footnote)
                    }
                }
                
                NavigationLink(destination: SettingView()) {
                    HStack {
                        Text("Setting")
                            .foregroundColor(.black)
                            .font(.footnote)
                    }
                }
                
                NavigationLink(destination: SlideStartView()) {
                    HStack {
                        Text("Slide Start")
                            .foregroundColor(.black)
                            .font(.footnote)
                    }
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
