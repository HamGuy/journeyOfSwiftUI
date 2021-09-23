//
//  TodayWidgetItem.swift
//  journeyOfSwiftUI
//
//  Created by HamGuy on 2021/9/22.
//

import SwiftUI

private struct ItemImageModifier: ViewModifier {
    var limitWidth: CGFloat
    func body(content: Content) -> some View {
        content.aspectRatio(contentMode: SwiftUI.ContentMode.fill).fixedFrame(width: limitWidth, height: limitWidth)
    }
    
}

private extension View {
    func imageProcessed(limtedWidth: CGFloat) -> some View {
        self.modifier(ItemImageModifier(limitWidth: limtedWidth))
    }
}

struct TodayWidgetItem: View {
    var itemData: WidgetItemData
    var body: some View {
        let url = URL(string:itemData.headImg)
        
        let limitWidth: CGFloat = 72
        
        VStack {
            if #available(iOS 15.0, *) {
                AsyncImage(url: url) { image in
                    image.resizable().imageProcessed(limtedWidth: limitWidth)
                } placeholder: {
                    Text("Loading ...")
                }.frame(minWidth:limitWidth, maxWidth: limitWidth,minHeight: limitWidth,maxHeight: limitWidth).cornerRadius(9.0)
            } else {
                AsyncImageOld(url: url!,
                              placeholder: { Text("Loading ...") }, image: {
                    Image(uiImage: $0).resizable().imageProcessed(limtedWidth: limitWidth) as! Image
                }).frame(minWidth:limitWidth, maxWidth: limitWidth,minHeight: limitWidth,maxHeight: limitWidth).cornerRadius(9.0)
            }
            Text(itemData.name).foregroundColor(Color.vdPink).font(.system(size: 14))
        }
    }
}

struct TodayWidgetItem_Previews: PreviewProvider {
    static var previews: some View {
        TodayWidgetItem(itemData: demoData[0]).previewLayout(.fixed(width: 200, height: 200))
    }
}
