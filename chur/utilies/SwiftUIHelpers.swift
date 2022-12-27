//
//  SwiftUIHelpers.swift
//  chur
//
//  Created by Rohit on 12/26/22.
//

import Foundation
import SwiftUI
import _AuthenticationServices_SwiftUI

func _isDarkMode(_ mode: ColorScheme) -> Bool {
    return mode == ColorScheme.dark;
}

func handleDarkLightMode(mode: ColorScheme, darkVal: String, lightVal: String) -> String {
    return _isDarkMode(mode) ? darkVal : lightVal;
}

// override for num
func handleDarkLightMode(mode: ColorScheme, darkVal: Int, lightVal: Int) -> Int {
    return _isDarkMode(mode) ? darkVal : lightVal;
}

// override for color
func handleDarkLightMode(mode: ColorScheme, darkVal: Color, lightVal: Color) -> Color {
    return _isDarkMode(mode) ? darkVal : lightVal;
}

// override for AppleButton
func handleDarkLightMode(mode: ColorScheme, darkVal: SignInWithAppleButton.Style, lightVal: SignInWithAppleButton.Style) -> SignInWithAppleButton.Style {
    return _isDarkMode(mode) ? darkVal : lightVal;
}

