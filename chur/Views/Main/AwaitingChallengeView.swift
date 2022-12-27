//
//  AwaitingChallengeView.swift
//  chur
//
//  Created by Rohit on 12/27/22.
//

import SwiftUI

struct AwaitingChallengeView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        let padding = Edge.Set(rawValue: 20);
        VStack(alignment: .center) {
            CardView(subTitle: "Your Challenge", title: "Do 10 Push Ups", padding: padding)
            CardView(title: "XX have completed it", bgColor: Color.mint.opacity(0.9), padding: padding)
            CardView(title: "YY points behind leader", bgColor: Color.green.opacity(0.9), padding: padding)
            Spacer()

            ButtonView(action: {print("Challenge Started")}, btnText: "Begin Challenge (+1)")
        }
        
    }
}

struct AwaitingChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        AwaitingChallengeView()
    }
}
