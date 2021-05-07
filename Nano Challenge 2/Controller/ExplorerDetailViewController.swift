//
//  ExplorerDetailViewController.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 04/05/21.
//

import UIKit


class ExplorerDetailViewController: UIViewController, UIScrollViewDelegate {
    
    var explorer:Explorer?
    
    @IBOutlet weak var pageControlExplorer: UIPageControl!
    @IBOutlet weak var imgExplorer: UIImageView!
    @IBOutlet weak var imageScrollView: UIScrollView!
    
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var textShortBiography: UILabel!
    @IBOutlet weak var txtInterest: UILabel!
    
    var exploerImages:[UIImage] = []
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .red
        scrollView.isScrollEnabled = true
        
        return scrollView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtName.text = explorer?.Name
        imgExplorer.image = UIImage(named: explorer?.Photo ?? "")
        imgExplorer.makeRoundCorners(byRadius: 8)
        textShortBiography.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an "
        txtInterest.text = "Hoby/Interest : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ncluding versions of Lorem Ipsum."
        
        
            
        
    }


}
