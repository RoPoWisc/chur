//
//  CardView.swift
//  chur
//
//  Created by Rohit on 12/27/22.
//

import SwiftUI

struct CardView: View {
    @Environment(\.colorScheme) var colorScheme

    var subTitle: String?;
    var title: String;
    var bgColor: Color?;
    var padding: Edge.Set;
    
    var body: some View {
        let color: Color = handleDarkLightMode(mode: colorScheme, darkVal: Color.white, lightVal: Color.black);
        let colorReverse = handleDarkLightMode(mode: colorScheme, darkVal: Color.black, lightVal: Color.white);
        
        VStack{
            if (subTitle != nil) {
                Text(subTitle ?? "")
            }
            
            Text(title)
                .font(.title)
        }
        .frame(width: 300, height: 75)
        .padding(20)
        .border(colorReverse, width: 2)
        .foregroundColor(colorReverse)
        .background(bgColor ?? color)
        .cornerRadius(8)
        .shadow(color: color, radius: 3, x: 5, y: 5)
        .padding(padding)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(subTitle: "Your Challenge", title: "Do 10 Push Ups", padding: Edge.Set(rawValue: 0))
    }
}
