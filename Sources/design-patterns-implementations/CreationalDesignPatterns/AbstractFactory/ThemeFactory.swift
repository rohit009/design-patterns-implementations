//  ThemeFactory.swift
//  Created by Rohit Patil on 28/07/23.
import Foundation

/**
 * Abstract factory implementation to get the different theme factories and from them
 * specific themes for UI components.
 */
protocol ThemeFactory {
    var labelTheme: CustomLabelTheme { get }
    var buttonTheme: CustomButtonTheme { get }
    var textFieldTheme: CustomTextFieldTheme { get }
}

class DarkModeThemeFactory: ThemeFactory {
    var labelTheme: CustomLabelTheme {
        DarkModeCustomLabelTheme()
    }
    
    var buttonTheme: CustomButtonTheme {
        DarkModeCustomButtonTheme()
    }
    
    var textFieldTheme: CustomTextFieldTheme {
        DarkModeCustomTextFieldTheme()
    }
}


class LightModeThemeFactory: ThemeFactory {
    var labelTheme: CustomLabelTheme {
        LightModeCustomLabelTheme()
    }
    
    var buttonTheme: CustomButtonTheme {
        LightModeCustomButtonTheme()
    }
    
    var textFieldTheme: CustomTextFieldTheme {
        LightModeCustomTextFieldTheme()
    }
}
