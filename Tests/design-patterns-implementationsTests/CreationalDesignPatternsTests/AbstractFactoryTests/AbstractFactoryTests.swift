//  AbstractFactoryTests.swift
//  Created by Rohit Patil on 28/07/23.
import XCTest
@testable import design_patterns_implementations

final class AbstractFactoryTests: XCTestCase {
    var viewProvider: ViewProvider!
    var darkModeThemeFactory: DarkModeThemeFactory!
    var lightModeThemeFactory: LightModeThemeFactory!

    override func setUpWithError() throws {
        viewProvider = ViewProvider()
        darkModeThemeFactory = DarkModeThemeFactory()
        lightModeThemeFactory = LightModeThemeFactory()
    }

    override func tearDownWithError() throws {
        
    }

    func testLightModeContentViewCreation() throws {
        let lightModeView = viewProvider.createCustomContentView(
            themeFactory: lightModeThemeFactory
        )
        
        validateLightModeTheme(customContentView: lightModeView)
    }
    
    func testDarkModeContentViewCreation() throws {
        let darkModeView = viewProvider.createCustomContentView(
            themeFactory: darkModeThemeFactory
        )
        
        validateDarkModeTheme(customContentView: darkModeView)
    }
    
    func testLightModeToDarkModeThemeUpdate() throws {
        let contentView = viewProvider.createCustomContentView(
            themeFactory: lightModeThemeFactory
        )
        
        validateLightModeTheme(customContentView: contentView)

        viewProvider.update(customContentView: contentView, themeFactory: darkModeThemeFactory)

        // Verify that theme is now updated to dark mode.
        validateDarkModeTheme(customContentView: contentView)
    }
    
    func testDarkModeToLightModeThemeUpdate() throws {
        let contentView = viewProvider.createCustomContentView(
            themeFactory: darkModeThemeFactory
        )
        
        validateDarkModeTheme(customContentView: contentView)

        viewProvider.update(customContentView: contentView, themeFactory: lightModeThemeFactory)

        // Verify that theme is now updated to light mode.
        validateLightModeTheme(customContentView: contentView)
    }
    
    
    // MARK: - Private helpers
    
    func validateLightModeTheme(customContentView: CustomContentView) {
        XCTAssertEqual(customContentView.label.textColor, .black)
        
        XCTAssertEqual(customContentView.button.backgroundColor, .lightGray)
        XCTAssertEqual(customContentView.button.titleColor(for: .normal), .black)

        XCTAssertEqual(customContentView.textField.backgroundColor, .white)
        XCTAssertEqual(customContentView.textFieldConfirmButton.backgroundColor, .lightGray)
    }

    func validateDarkModeTheme(customContentView: CustomContentView) {
        XCTAssertEqual(customContentView.label.textColor, .white)
        
        XCTAssertEqual(customContentView.button.backgroundColor, .darkGray)
        XCTAssertEqual(customContentView.button.titleColor(for: .normal), .white)

        XCTAssertEqual(customContentView.textField.backgroundColor, .gray)
        XCTAssertEqual(customContentView.textFieldConfirmButton.backgroundColor, .darkGray)
    }

}
