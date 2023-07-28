//  CustomThemes.swift
//  Created by Rohit Patil on 28/07/23.
import Foundation
import UIKit

// MARK: - Label theme

protocol CustomLabelTheme {
    var labelTextColor: UIColor { get }
}

class DarkModeCustomLabelTheme: CustomLabelTheme {
    var labelTextColor: UIColor {
        .white
    }
}

class LightModeCustomLabelTheme: CustomLabelTheme {
    var labelTextColor: UIColor {
        .black
    }
}


// MARK: - Button theme

protocol CustomButtonTheme {
    var buttonColor: UIColor { get }
    
    func buttonLabelColor(labelTheme: CustomLabelTheme) -> UIColor
}

extension CustomButtonTheme {
    func buttonLabelColor(labelTheme: CustomLabelTheme) -> UIColor {
        labelTheme.labelTextColor
    }
}

class DarkModeCustomButtonTheme: CustomButtonTheme {
    var buttonColor: UIColor {
        .darkGray
    }
}

class LightModeCustomButtonTheme: CustomButtonTheme {
    var buttonColor: UIColor {
        .lightGray
    }
}


// MARK: - Text field theme

protocol CustomTextFieldTheme {
    var textFieldBackgroundColor: UIColor { get }
    
    func textFieldOkayButtonColor(buttonTheme: CustomButtonTheme) -> UIColor
}

extension CustomTextFieldTheme {
    func textFieldOkayButtonColor(buttonTheme: CustomButtonTheme) -> UIColor {
        buttonTheme.buttonColor
    }
}

class DarkModeCustomTextFieldTheme: CustomTextFieldTheme {
    var textFieldBackgroundColor: UIColor {
        .gray
    }
}

class LightModeCustomTextFieldTheme: CustomTextFieldTheme {
    var textFieldBackgroundColor: UIColor {
        .white
    }
}
