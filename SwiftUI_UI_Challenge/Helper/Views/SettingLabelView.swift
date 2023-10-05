//  SettingLabelView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct SettingLabelView: View {
    var text: String
    var image: String
    var color: Color?
    
    var body: some View {
        HStack {
            Text(text.uppercased())
                .foregroundColor(color ?? .black)
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: image)
                .foregroundColor(color ?? .black)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(text: "test", image: "globe")
    }
}
