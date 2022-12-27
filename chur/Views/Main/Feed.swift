//
//  Feed.swift
//  chur
//
//  Created by Rohit on 12/27/22.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        let padding = Edge.Set(rawValue: 20);

        VStack(alignment: .center) {
            CardView(subTitle: "Your Challenge", title: "Do 10 Push Ups", padding: padding)
            Spacer()

            VStack{
                HStack{
                    Spacer()
                    ButtonView(action: {print("Challenge Started")}, btnText: "👍", isBtnSmall: true)
                }
                HStack{
                    Spacer()
                    ButtonView(action: {print("Challenge Started")}, btnText: "👎", isBtnSmall: true)
                }
            }
            .padding(20)
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
