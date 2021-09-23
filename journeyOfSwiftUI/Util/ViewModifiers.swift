//
//  ViewModifiers.swift
//  journeyOfSwiftUI
//
//  Created by HamGuy on 2021/9/23.
//

import SwiftUI

private struct FrameViewModifier: ViewModifier {
    
    var width: CGFloat
    var height: CGFloat
    
    func body(content: Content) -> some View {
        content.frame(minWidth: 0, maxWidth: width, minHeight: 0, maxHeight: height)
    }
}

extension View {
    /// 固定 View 的尺寸
    /// - Parameters:
    ///   - width: 宽
    ///   - height: 高
    func fixedFrame(width: CGFloat, height: CGFloat) -> some View {
        self.modifier(FrameViewModifier(width: width, height: height))
    }
}



