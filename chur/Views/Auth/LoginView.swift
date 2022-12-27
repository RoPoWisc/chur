//
//  LoginView.swift
//  chur
//
//  Created by Rohit on 12/26/22.
//

import SwiftUI
import AuthenticationServices


struct LoginView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            ZStack {
                Image("LaunchScreenImage")
                VStack(alignment: .center) {
                    Spacer()
                    SignInWithAppleButton(
                        .signUp,
                        onRequest: { request in
                            // 1
                            request.requestedScopes = [.fullName, .email]
                        },
                        onCompletion: { result in
                            print(result)
                            switch result {
                            case .success (let authResults):
                                // 2
                                print("Hello MOm")
                                print(authResults)
                            case .failure (let error):
                                // 3
                                print("Authorization failed: " + error.localizedDescription)
                            }
                        }
                    )
                    .frame(width: 200, height: 40)
                    .signInWithAppleButtonStyle( handleDarkLightMode(mode: colorScheme, darkVal: .white, lightVal: .black))
                    .cornerRadius(10)
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
