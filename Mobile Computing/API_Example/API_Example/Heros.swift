//
//  Heros.swift
//  API_Example
//
//  Created by student on 11/18/21.
//

import Foundation
import UIKit

struct HeroStats : Codable{
    var localized_name : String
    var primary_attr : String
    var attack_type : String
    var legs : Int
}
