//
//  registerViewController.swift
//  Alalaf
//
//  Created by Rahul Heerekar on 09/07/24.
//

import UIKit

class registerViewController: UIViewController {
    @IBOutlet weak var englishButton: UIButton!
    
    @IBOutlet weak var globeImage: UIImageView!
    
    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet weak var closeImage: UIImageView!
    
    @IBOutlet weak var registerNowlabel: UILabel!
    
    @IBOutlet weak var toHelpTheFarmersLabel: UILabel!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    
    @IBOutlet weak var mobileNumberTextfield: UITextField!
    
    @IBOutlet weak var enterButton: UIButton!
    
    @IBOutlet weak var alreadyMemberButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        skipButton.layer.borderColor = UIColor.black.cgColor
        skipButton.layer.borderWidth = 1
        skipButton.layer.cornerRadius = 20
        englishButton.layer.cornerRadius = 20
        
        
        
        // Do any additional setup after loading the view.
    }
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
