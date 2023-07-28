//  AbstractFactory.swift
//  Created by Rohit Patil on 28/07/23.
import Foundation

/*
 Problem:

 Let's consider a scenario where you need to design a GUI (Graphical User Interface) library for an
 iOS app development framework. The library should support multiple themes, such as "Light Mode" and
 "Dark Mode," and each theme should have its own set of UI elements, including buttons, text fields,
 and labels.

 Your task is to design the GUI library to create families of UI elements that belong to different
 themes while ensuring that the client code (the app developers) can switch between themes seamlessly.
 

 
 class AbstractFactoryTests
    // Test for light mode theme passed -> Create and return content view
    // Test for dark mode theme passed -> Update content view

    // Test for dark mode theme passed -> Create and return content view
    // Test for light mode theme passed -> Update content view
 
 
 // The code that uses Abstract factory implementation.
 class ViewProvider
    // Create and return content view
        // Create views
        // Create content view and add individual elements to it.
        // Apply theme
            // Apply color to individual elements.
    // Update content view
 
 
 protocol ThemeFactory
 class DarkModeThemeFactory
 class LightModeThemeFactory
 
 protocol CustomButtonTheme
 class DarkModeCustomButtonTheme
 class LightModeCustomButtonTheme
 
 protocol CustomTextFieldTheme
 class DarkModeCustomTextFieldTheme
 class LightModeCustomTextFieldTheme
 
 protocol CustomLabelTheme
 class DarkModeCustomLabelTheme
 class LightModeCustomLabelTheme

*/
