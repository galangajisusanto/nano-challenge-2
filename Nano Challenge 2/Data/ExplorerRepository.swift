//
//  File.swift
//  Nano Challenge 2
//
//  Created by Galang Aji Susanto on 03/05/21.
//

import Foundation


class ExplorerRepository {
    
    var explores:[Explorer] = []
    
    init() {
        if let localData = self.readLocalFile(forName: "explorers") {
            self.parse(jsonData: localData)
        }
    }
    
    func getExplorers()->[Explorer]{
        return explores
    }
    
    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
    
    private func parse(jsonData: Data) {
        do {
            let decodedData = try JSONDecoder().decode([Explorer].self,
                                                       from: jsonData)
            explores = decodedData
        } catch {
            print("decode error")
        }
    }
    
    
}
