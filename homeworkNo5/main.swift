//
//  main.swift
//  homeworkNo5
//
//  Created by Maksim Kjaulakis on 27.12.2020.
//

import Foundation

enum Transmission {
    case automatic, manual
}
protocol Car {
    var brand: String { get  }
    var transmission: Transmission { get set }
    var wheels: Int { get set }
    var km: Double { get set }
    
    func printCar()
}
