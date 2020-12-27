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
enum Windows {
    case open, close
}
enum Engine {
    case start, stop
}
enum Tires {
    case summer, winter
}

protocol Car {
    var brand: String { get  }
    var transmission: Transmission { get  }
    var tires: Tires { get set }
    var km: Double { get set }
    var windows: Windows { get set }
    var engine: Engine { get set }
    
    mutating func changeTires(tire: Tires)
}


extension Car {
    
    mutating func changeTires(tire: Tires) {
        self.tires = tire
        print("Пришла зима, пора менять резину")
    }
    mutating func openCloseWindow(window: Windows) {
        self.windows = window
    }
    mutating func startStopEngine(engine: Engine) {
        self.engine = engine
    }

}



class TruckCar: Car, CustomStringConvertible {
    var description: String {
    return "Грузовик"
    }
    
    var brand: String
    var transmission: Transmission
    var tires: Tires
    var km: Double
    var windows: Windows
    var engine: Engine
    let maxCapacity: Int
    
    init(brand: String, transmission: Transmission, tires: Tires, km: Double, windows: Windows, engine: Engine, maxCapacity: Int) {
        self.brand = brand
        self.transmission = transmission
        self.tires = tires
        self.km = km
        self.windows = windows
        self.engine = engine
        self.maxCapacity = maxCapacity
    }
    
    
}
class SportCar: Car, CustomStringConvertible {
    var description: String {
        return "Спорткар"
    }
    
    
    var brand: String
    var transmission: Transmission
    var tires: Tires
    var km: Double
    var windows: Windows
    var engine: Engine
    let maxSpeed: Int
    
    init(brand: String, transmission: Transmission, tires: Tires, km: Double, windows: Windows, engine: Engine, maxSpeed: Int) {
        self.brand = brand
        self.transmission = transmission
        self.tires = tires
        self.km = km
        self.windows = windows
        self.engine = engine
        self.maxSpeed = maxSpeed
    }
    
    
}
