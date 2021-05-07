//
//  JourneyViewController.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 03/05/21.
//

import UIKit

class JourneyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableJourney: UITableView!
    
    var journeyRepository = JourneyRepository()
    var journeys:[Journey]?
    var journeysFilter:[Journey]?
    
    let TECH = "Tech / IT / IS"
    let DESIGN = "Design"
    let EXPERT = "Domain Expert (Keahlian Khusus)"
    
    @IBAction func segmentedExpertiseClicked(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            journeysFilter = journeys?.filter{
                $0.category == TECH
            }
        case 1:
            journeysFilter = journeys?.filter{
                $0.category == DESIGN
            }
        case 2:
            journeysFilter = journeys?.filter{
                $0.category == EXPERT
            }
        default:
            break;
        }
        
        self.tableJourney.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        journeys = journeyRepository.journeys
        
        
        tableJourney.dataSource = self
        tableJourney.delegate = self
        tableJourney.register(UINib(nibName: "JourneyTableViewCell", bundle: nil), forCellReuseIdentifier: "journey")
        
        journeysFilter = journeys?.filter{
            $0.category == TECH
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journeysFilter?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "journey", for: indexPath) as! JourneyTableViewCell
        
        let journey = journeysFilter![indexPath.row]
        
        cell.imgExplorerPhoto.image = UIImage(named: journey.explorer.Photo)
        cell.imgExplorerPhoto.makeRoundCorners(byRadius:cell.imgExplorerPhoto.frame.height/2)
        cell.txtExplorerName.text = journey.explorer.Name
        cell.txtExplorerExpertise.text = journey.explorer.Expertise
        cell.imgJourneyPhoto.image = UIImage(named: journey.image)
        cell.imgJourneyPhoto.makeRoundCorners(byRadius: 8)
        cell.txtJourneyContent.text = journey.post
        cell.txtJourneyComment.text = "10 comment"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let journey = journeysFilter?[indexPath.row]
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Journey", bundle: nil)
        let journeyDetailViewContoller = storyBoard.instantiateViewController(identifier: "JourneyDetailViewController") as! JourneyDetailViewController
        journeyDetailViewContoller.journey = journey
        
        self.navigationController?.pushViewController(journeyDetailViewContoller, animated: true)
    }
}
