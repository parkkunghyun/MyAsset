//
//  NavigationBarWithButton.swift
//  MyAsset
//
//  Created by 박경현2 on 2022/06/15.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    var title: String = ""
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(
                leading: Text(title)
                .font(.system(size: 24, weight: .bold))
                .padding(),
                trailing: Button(action: {
                    print("자산추가 버튼 누름")
                }, label: {
                    Image(systemName: "plus")
                    Text("자산추가")
                        .font(.system(size: 12))
                }
            )
                .accentColor(.black)
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black) //가장자리만 가능!
                )
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let apperance = UINavigationBarAppearance()
                apperance.configureWithTransparentBackground()
                apperance.backgroundColor = UIColor(white: 1, alpha: 0.5)
                UINavigationBar.appearance()
                    .standardAppearance = apperance
                UINavigationBar.appearance()
                    .compactAppearance = apperance
                UINavigationBar.appearance()
                    .compactAppearance = apperance
            }
        }
}

struct NavigationBarWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle()
        }
        
    }
}
