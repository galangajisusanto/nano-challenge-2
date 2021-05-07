//
//  ExplorerViewController.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 03/05/21.
//

import UIKit

class ExplorerViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    var explorerRepository = ExplorerRepository()
    var explorers:[Explorer]?
    var explorersFilter:[Explorer]?
    
    let TECH = "Tech / IT / IS"
    let DESIGN = "Design"
    let EXPERT = "Domain Expert (Keahlian Khusus)"
    
    @IBOutlet weak var collectionExplorer: UICollectionView!
    
    @IBAction func segmentedExpertiseClicked(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            explorersFilter = explorers?.filter{
                $0.Expertise == TECH
            }
        case 1:
            explorersFilter = explorers?.filter{
                $0.Expertise == DESIGN
            }
        case 2:
            explorersFilter = explorers?.filter{
                $0.Expertise == EXPERT
            }
        default:
            break;
        }
        
        self.collectionExplorer.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionExplorer.dataSource = self
        collectionExplorer.delegate = self
        collectionExplorer.register(UINib(nibName: "ExplorerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "explorer")
        explorers = explorerRepository.getExplorers()
        explorersFilter = explorers?.filter{
            $0.Expertise == TECH
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return explorersFilter?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "explorer", for: indexPath) as! ExplorerCollectionViewCell
        
        
        let explorer = explorersFilter![indexPath.row]
        
        cell.imgExplorer.image = UIImage(named: explorer.Photo)
        cell.imgExplorer.makeRoundCorners(byRadius:8)
        cell.txtExplorer.text = explorer.Name
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let explorer = explorersFilter?[indexPath.row]
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Explorer", bundle: nil)
        let explorerDetailViewController = storyBoard.instantiateViewController(withIdentifier: "ExplorerDetailViewController") as! ExplorerDetailViewController
        explorerDetailViewController.explorer = explorer
        
  
        self.navigationController?.pushViewController(explorerDetailViewController, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  50
        let collectionViewSize = collectionView.frame.size.width - padding
        
        return CGSize(width: collectionViewSize/2, height: collectionViewSize/2)
    }
    
    
    
    
    
    
}
