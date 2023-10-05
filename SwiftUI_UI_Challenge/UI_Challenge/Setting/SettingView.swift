//  SettingView.swift
//
//  Created by Owen on 2023/10/05
	

import SwiftUI

struct SettingView: View {
    @State private var notificationIsOn: Bool = false
    @State private var clearData: Bool = false
    @State private var bioLogin: Bool = true
    
    var detailList: [String] = ["Content1", "Content2", "Content3", "Content4", "Content5"]
    var detailImage: [String] = ["1.lane", "2.lane", "3.lane", "4.lane", "5.lane"]
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "apple.logo")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.gray.opacity(0.6))
                                .frame(width: 80, height: 80)
                            
                            Rectangle()
                                .frame(width: 0.4)
                                .foregroundColor(.black.opacity(0.5))
                            
                            Text("""
                            App Version: 1.0.4
                            Copyright: © Owen 2023
                            Contact: test123@testmail.com
                            """)
                            .multilineTextAlignment(.leading)
                            .font(.footnote)
                            Spacer()
                        }
                    } label: {
                        SettingLabelView(text: "Version", image: "info.circle.fill", color: .orange)
                    }
                    .padding(.horizontal, 16)
                    
                    Rectangle()
                        .frame(height: 5)
                        .foregroundColor(.gray.opacity(0.2))
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        SettingGroupView(text: "알림", isOn: $notificationIsOn)
                        SettingGroupView(text: "초기화", isOn: $clearData)
                        SettingGroupView(text: "Face ID", isOn: $bioLogin)
                    } label: {
                        SettingLabelView(text: "Contents", image: "gear", color: .orange)
                    }
                    .padding(.horizontal, 16)
                    
                    GroupBox {
                        DisclosureGroup("세부 설정") {
                            ForEach(0..<detailList.count, id: \.self) { index in
                                Divider().padding(.vertical, 2)
                                HStack {
                                    Image(systemName: detailImage[index])
                                    Spacer()
                                    Text(detailList[index])
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
        .navigationBarTitle("Setting", displayMode: .large)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
