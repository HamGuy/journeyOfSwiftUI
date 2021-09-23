//
//  WidgetItemData.swift
//  journeyOfSwiftUI
//
//  Created by HamGuy on 2021/9/22.
//

import Foundation
import SwiftUI


extension Color {
    static var vdPink: Color {
        return Color(Color.RGBColorSpace.sRGB, red: 236/255.0, green: 29/255.0, blue: 36/255.0, opacity: 1.0)
    }
}


struct WidgetItemData: Codable, Hashable {
    var tabId: String
    var cate: String
    var filterSelected: Bool
    var headImg: String
    var name: String
}

