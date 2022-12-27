//
//  AppleAuthHelpers.swift
//  chur
//
//  Created by Rohit on 12/27/22.
//

import Foundation
import AuthenticationServices

private func handleAppleAuth() {
    // 1
    let idProvider = ASAuthorizationAppleIDProvider()
    let request = idProvider.createRequest()
    request.requestedScopes = [.fullName, .email]

    // 2
    let authController = ASAuthorizationController(authorizationRequests: [request])
    authController.delegate = self
    authController.presentationContextProvider = self
    authController.performRequests()
}
