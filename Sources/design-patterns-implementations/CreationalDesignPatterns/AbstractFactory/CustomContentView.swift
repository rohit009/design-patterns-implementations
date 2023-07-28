//  CustomContentView.swift
//  Created by Rohit Patil on 28/07/23.
import Foundation
import UIKit

protocol CustomContentView: UIView {
    var label: UILabel { get }
    var button: UIButton { get }
    var textField: UITextField { get }
    var textFieldConfirmButton: UIButton { get }
}

class CustomContentViewImpl: UIView, CustomContentView {
    let label: UILabel
    let button: UIButton
    let textField: UITextField
    let textFieldConfirmButton: UIButton
    
    init() {
        self.label = UILabel()
        self.button = UIButton()
        self.textField = UITextField()
        self.textFieldConfirmButton = UIButton()
        
        super.init(frame: CGRectZero)
        
        self.button.setTitle("Some button", for: .normal)
        self.textFieldConfirmButton.setTitle("Confirmation button", for: .normal)
        
        /**
         Assume:
         - Views are added as subview.
         - Constraints are added as per expected layout.
         */
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
