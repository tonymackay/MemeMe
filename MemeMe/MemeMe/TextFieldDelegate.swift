//
//  TextFieldDelegate.swift
//  MemeMe
//
//  Created by Tony Mackay on 20/04/2020.
//  Copyright © 2020 ViewModel Software. All rights reserved.
//

import UIKit

class TextFieldDelegate: NSObject, UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if let text = textField.text {
            if (text == "TOP" || text == "BOTTOM") {
                textField.text = ""
            }
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
