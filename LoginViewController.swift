//
//  ViewController.swift
//  Alalaf
//
//  Created by Rahul Heerekar on 30/06/24.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var englishButton: UIButton!
    
    @IBOutlet weak var globeImageView: UIImageView!
    
    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet weak var popUpCloseImage: UIImageView!
    
    @IBOutlet weak var logInLabel: UILabel!
    
    @IBOutlet weak var toHekpTheFarmersLabel: UILabel!
    
    @IBOutlet weak var arrowButton: UIButton!
    
    @IBOutlet weak var newHereButton: UIButton!
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        skipButton.layer.borderColor = UIColor.black.cgColor
        skipButton.layer.borderWidth = 1
        skipButton.layer.cornerRadius = 20
        englishButton.layer.cornerRadius = 20
    
        
        mobileNumberTextField.placeholder = "Enter Mobile Number"
        mobileNumberTextField.keyboardType = .phonePad
        mobileNumberTextField.autocorrectionType = .no
        mobileNumberTextField.autocapitalizationType = .none
        mobileNumberTextField.clearButtonMode = .whileEditing
        mobileNumberTextField.borderStyle = .roundedRect
        mobileNumberTextField.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // Keyboard will appear
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Keyboard will disappear
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Dismisses keyboard when "Return" key is tapped
        return true
        
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "rahul") as! OTPViewController
        
        self.present(vc, animated: true, completion: nil)
    }
}
