//
//  ConfigService.swift
//  YassirTest
//
//  Created by Ayoub on 29/4/2024.
//

import Foundation


class ConfigService {
    
    static  func readConfigFromPlist() -> Config? {
        guard let url = Bundle.main.url(forResource: "Config", withExtension: "plist") else {
            print("Config.plist not found")
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            return try decoder.decode(Config.self, from: data)
        } catch {
            print("Failed to read plist: \(error)")
            return nil
        }
    }
}
