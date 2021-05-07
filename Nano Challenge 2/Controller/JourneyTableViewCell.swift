//
//  JourneyTableViewCell.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 05/05/21.
//

import UIKit

class JourneyTableViewCell: UITableViewCell {

    @IBOutlet weak var txtExplorerName: UILabel!
    @IBOutlet weak var txtExplorerExpertise: UILabel!
    @IBOutlet weak var imgExplorerPhoto: UIImageView!
    @IBOutlet weak var imgJourneyPhoto: UIImageView!
    @IBOutlet weak var txtJourneyContent: UILabel!
    @IBOutlet weak var txtJourneyComment: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 18, right: 0))
    }
    @IBAction func btnSeeMoreClicked(_ sender: UIButton) {
   
    }
    
}
