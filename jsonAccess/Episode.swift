//
//  Episode.swift
//  jsonAccess
//
//  Created by Maximilian Ott on 23.06.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import Foundation

struct Episode {
    var name: String?
    var title: String?
    var season: Int?
    var number: Int?
    
    init(json: NSDictionary) {
        self.name = json["name"] as? String
        self.title = json["title"] as? String
        self.season = json["season"] as? Int
        self.number = json["episode"] as? Int
    }
}
