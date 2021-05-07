//
//  JourneyDeatailViewController.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 06/05/21.
//

import UIKit

class JourneyDetailViewController: UIViewController {
    
    var journey :Journey?
    
    @IBOutlet weak var imgExplorerPhoto: UIImageView!
    @IBOutlet weak var txtExplorerName: UILabel!
    @IBOutlet weak var txtExplorerExpertise: UILabel!
    @IBOutlet weak var imgJourneyPhoto: UIImageView!
    @IBOutlet weak var txtJourneyContent: UILabel!
    @IBOutlet weak var txtJourneyComment: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        
        
    }
    
    func initView() {
        imgExplorerPhoto.image = UIImage(named: journey?.explorer.Photo ?? "")
        imgExplorerPhoto.makeRoundCorners(byRadius: imgExplorerPhoto.frame.height/2)
        txtExplorerName.text = journey?.explorer.Name
        txtExplorerExpertise.text = journey?.explorer.Expertise
        imgJourneyPhoto.image = UIImage(named: journey?.image ?? "")
        imgJourneyPhoto.makeRoundCorners(byRadius: 8)
        txtJourneyContent.text = journey?.post
        txtJourneyComment.text = "\(journey?.sumOfComment ?? 0) comment"
    }
    
    
}
