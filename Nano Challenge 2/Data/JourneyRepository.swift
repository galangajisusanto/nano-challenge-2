//
//  JourneyRepository.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 05/05/21.
//

import Foundation


class JourneyRepository {
    
    var journeys : [Journey] = []
    
    init() {
        for _ in 0 ... 10 {
            journeys.append(Journey(image: "ImagePost", post: "lorem ipsum dolor sit amet consectetur adipiscing elit consectetur adipiscing elit adipiscing elit", explorer: Explorer(Name: "Galang Aji Susanto", Photo: "GalangAji", Expertise: "Tech / IT / IS", Team: "Team 7 / Food", Shift:"Morning"), sumOfComment:7, category:"Tech / IT / IS"))
        }
        
        for _ in 0 ... 1 {
            journeys.append(Journey(image: "ImagePost", post: "lorem ipsum dolor sit amet consectetur adipiscing elit consectetur adipiscing elit adipiscing elit", explorer: Explorer(Name: "Dhienaqueen", Photo: "Dhienaqueen", Expertise: "Design", Team: "Team 2 / Udin's Adventure", Shift:"Morning"), sumOfComment:7, category:"Design"))
        }
        
        for _ in 0 ... 3 {
            journeys.append(Journey(image: "ImagePost", post: "lorem ipsum dolor sit amet consectetur adipiscing elit consectetur adipiscing elit adipiscing elit", explorer: Explorer(Name: "Winner Tjandrawan", Photo: "WinnerTjandrawan", Expertise: "Tech / IT / IS", Team: "Team 7 / Food", Shift:"Morning"), sumOfComment:7, category:"Domain Expert (Keahlian Khusus)"))
        }
        
    }
}
