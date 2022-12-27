//
//  ButtonView.swift
//  chur
//
//  Created by Rohit on 12/27/22.
//

import SwiftUI

struct ButtonView: View {
    @Environment(\.colorScheme) var colorScheme

    var action: () -> Void;
    var btnText: String;
    var isBtnSmall: Bool?;
    var bgColor: Color?;
    
    func handleBtnSize() -> CGFloat{
        if isBtnSmall ?? false {
            return 25;
        }
        else {
            return 300;
        }
    }
    
    var body: some View {
        let color: Color = handleDarkLightMode(mode: colorScheme, darkVal: Color.white, lightVal: Color.black);
        
        Button(action: action) {
            Text(btnText)
        }
        .frame(width: handleBtnSize(), height: 25)
        .fontWeight(.bold)
        .padding()
        .foregroundColor(.black)
        .border(.black, width: 1)
        .background(bgColor ?? Color.white.opacity(0.98))
        .padding(10)
        .cornerRadius(8)
        .shadow(color: color, radius: 3, x: 5, y: 5)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ButtonView(action: {print("Clicked")}, btnText: "Button")
            ButtonView(action: {print("Clicked")}, btnText: "2", isBtnSmall: true)
        }

    }
}
