//
//  ContentView.swift
//  SwiftUI_UI_Challenge
//
//  Created by HESSEGG on 2023/10/04.
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
