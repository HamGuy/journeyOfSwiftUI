//
//  ContentView.swift
//  journeyOfSwiftUI
//
//  Created by HamGuy on 2021/9/22.
//

import SwiftUI


let demoData: [WidgetItemData] = DataHelper.load("todayDemo.json")

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: TodayWidget(items: demoData)) {
                    Text("TodatWidget")
                }
            }
            .navigationTitle("journeyOfSwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
