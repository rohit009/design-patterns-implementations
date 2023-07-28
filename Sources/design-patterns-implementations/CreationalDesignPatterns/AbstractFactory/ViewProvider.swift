//  ViewProvider.swift
//  Created by Rohit Patil on 28/07/23.
import Foundation
import UIKit

/** The caller code that uses Abstract factory implementation. */
class ViewProvider {
    public func createCustomContentView(themeFactory: ThemeFactory) -> CustomContentView {
        let contentView = CustomContentViewImpl()
        applyTheme(on: contentView, themeFactory: themeFactory)
        return contentView
    }
    
    public func update(customContentView: CustomContentView, themeFactory: ThemeFactory) {
        applyTheme(on: customContentView, themeFactory: themeFactory)
    }
    
    private func applyTheme(on view: CustomContentView, themeFactory: ThemeFactory) {
        let labelTheme = themeFactory.labelTheme
        view.label.textColor = labelTheme.labelTextColor
        
        let buttonTheme = themeFactory.buttonTheme
        view.button.backgroundColor = buttonTheme.buttonColor
        let buttonTitleColor = buttonTheme.buttonLabelColor(labelTheme: labelTheme)
        view.button.setTitleColor(buttonTitleColor, for: .normal)
        
        let textFieldTheme = themeFactory.textFieldTheme
        view.textField.backgroundColor = textFieldTheme.textFieldBackgroundColor
        view.textFieldConfirmButton.backgroundColor = textFieldTheme.textFieldOkayButtonColor(
            buttonTheme: buttonTheme
        )
    }
}

