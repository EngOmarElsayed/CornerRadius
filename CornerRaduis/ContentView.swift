//
//  ContentView.swift
//  CornerRaduis
//
//  Created by Eng.Omar Elsayed on 26/11/2023.
//

import SwiftUI

struct customeCornerRaduiss: View {
    
    var body: some View {
        Button {} label: {
            Text("CornerRadius")
                .foregroundStyle(.black)
                .padding()
                .customeCornerRaduis(topLeading: 20, bottomLeading: 20.0, bottomTrailing: 20,color: .red)
                
            
        }

    }
}

extension View {
    func customeCornerRaduis(topLeading: CGFloat? = 0.0,bottomLeading: CGFloat? = 0.0,bottomTrailing: CGFloat? = 0.0,topTrailing: CGFloat? = 0.0,color: Color? = .clear) -> some View {
        modifier(CustomeCornerRaduis(topLeading: topLeading,bottomLeading: bottomLeading,bottomTrailing: bottomTrailing,topTrailing: topTrailing,color: color))
    }
}
public struct CustomeCornerRaduis: ViewModifier {
    var topLeading: CGFloat?
    var bottomLeading: CGFloat?
    var bottomTrailing: CGFloat?
    var topTrailing: CGFloat?
    var color: Color?
    
  public  func body(content: Content) -> some View {
        content
            .background(
                UnevenRoundedRectangle(cornerRadii:.init(
                    topLeading: topLeading ?? 0.0,
                    bottomLeading: bottomLeading ?? 0.0,
                    bottomTrailing: bottomTrailing ?? 0.0,
                    topTrailing: topTrailing ?? 0.0
                )).foregroundStyle(color ?? .clear)
            )
    }
}


#Preview {
    customeCornerRaduiss()
}
