//
//  TodayWidget.swift
//  journeyOfSwiftUI
//
//  Created by HamGuy on 2021/9/22.
//

import SwiftUI

struct TodayWidget: View {
    
    var items:[WidgetItemData]
    
    var body: some View {
        VStack {
            HStack {
                Image("marvel").resizable().fixedFrame(width: 24, height: 24)
                Text("MARVELSTUD1O").foregroundColor(Color.white).fontWeight(.bold).font(
                    .system(size: 18))
                Spacer()
                
                Button {
                    
                } label: {
                    HStack {
                        Text("CHECK")
                        Image(systemName: "chevron.right")
                    }.foregroundColor(Color.white)
                }
            }.frame(maxHeight:44).padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24)).background(Color.vdPink)
            ScrollView([]) {
                    HStack(spacing: 16) {
                        ForEach(0..<items.count) { index in
                            let data = items[index]
                            TodayWidgetItem(itemData: data).frame(maxWidth:120)
                        }
                    }.padding(EdgeInsets(top: 12, leading: 24, bottom: 0, trailing: 24)).background(Color.white)
            }
        }.cornerRadius(24)
    }
}

struct TodayWidget_Previews: PreviewProvider {
    static var previews: some View {
        TodayWidget(items: demoData).frame(minHeight: 200,maxHeight: 200)
    }
}
