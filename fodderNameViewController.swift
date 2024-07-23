//
//  fodderNameViewController.swift
//  Alalaf
//
//  Created by Rahul Heerekar on 10/07/24.
//

import UIKit



class fodderNameViewController: UIViewController {

    @IBOutlet weak var backGroundImageView: UIView!
    
    @IBOutlet weak var fodderNameLabel: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    
    @IBOutlet weak var sar250Label: UILabel!
    
        
    @IBOutlet weak var loremLabel: UILabel!
    
    
    @IBOutlet weak var callButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         productImageView.layer.cornerRadius = 10
        
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
