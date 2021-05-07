 //
//  ProfileViewController.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 05/05/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var btnSave: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgProfile.image = UIImage(named: "GalangAji")
        imgProfile.makeRoundCorners(byRadius: imgProfile.frame.height/2)
        btnSave.makeRoundCorners(byRadius: 18)
        
    }
    
    @IBAction func btnCloseClicked(_ sender: UIBarButtonItem) {
        dismiss(animated: true,completion: nil)
    }
    
    
    
}
