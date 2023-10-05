//  SettingGroupView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct SettingGroupView: View {
    var text: String
    var isOn: Binding<Bool>
    
    var body: some View {
        HStack {
            Toggle(text, isOn: isOn)
        }
        .padding(.horizontal, 2)
    }
}

struct SettingGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SettingGroupView(text: "test", isOn: .constant(false))
    }
}
