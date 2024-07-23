//
//  OTPViewController.swift
//  Alalaf
//
//  Created by Rahul Heerekar on 07/07/24.
//

import UIKit

class OTPViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var otpScreenView: UIView!
   
    @IBOutlet weak var otpFourthDigitTextField: UITextField!
    @IBOutlet weak var otpThirdDigitTextField: UITextField!
    @IBOutlet weak var otpSecondDigitTextField: UITextField!
    @IBOutlet weak var otpFirstDigitTextField: UITextField!
    
    @IBOutlet weak var timerLabel: UILabel!
    var timer: Timer?
    var seconds = 0
    
    @IBOutlet weak var greyColourView: UIView!
    
    
    @IBOutlet weak var topOtplabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otpFirstDigitTextField.delegate = self
        otpSecondDigitTextField.delegate = self
        otpThirdDigitTextField.delegate = self
        otpFourthDigitTextField.delegate = self
        
        
        otpScreenView.layer.cornerRadius = 20
        //topOtplabel.layer.cornerRadius = 20
        
        greyColourView.layer.cornerRadius = 20
        
        greyColourView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively

        // Do any additional setup after loading the view.
    }
    
    
   
    @IBAction func closeButtonClicked(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
   
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Allow only one-digit input and move to the next text field
        
        if let text = textField.text, let range = Range(range, in: text) {
            let updatedText = text.replacingCharacters(in: range, with: string)
            if updatedText.count == 1 {
                textField.text = updatedText
                switch textField {
                case otpFirstDigitTextField:
                    otpSecondDigitTextField.becomeFirstResponder()
                case otpSecondDigitTextField:
                    otpThirdDigitTextField.becomeFirstResponder()
                case otpThirdDigitTextField:
                    otpFourthDigitTextField.becomeFirstResponder()
                case otpFourthDigitTextField:
                    otpFourthDigitTextField.resignFirstResponder() // Dismiss keyboard
                default:
                    break
                }
            }
            return false // Prevent further editing
        } else {
            return true
        }
    }
    
    //  return true
    
    
    @IBAction func startTimer(_ sender: UIButton) {
        // Invalidate previous timer, if any
        timer?.invalidate()
        // Reset seconds and update label
        seconds = 0
        updateTimerLabel()
        
        // Start new timer
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.seconds += 1
            self.updateTimerLabel()
        }
    }
    
    func updateTimerLabel() {
        let minutes = seconds / 60
        let seconds = seconds % 60
        timerLabel.text = String(format: "%02d:%02d", minutes, seconds)
    }
    
    
    
    
}
