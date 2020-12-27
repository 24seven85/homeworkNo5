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
enum Wheels {
    case summer, winter
}

protocol Car {
    var brand: String { get  }
    var transmission: Transmission { get  }
    var wheels: Wheels { get set }
    var km: Double { get set }
    var windows: Windows { get set }
    var engine: Engine { get set }
    
    func changewheels(wheel: Wheels)
}


extension Car {
    
    
    mutating func openCloseWindow(window: Windows) {
        self.windows = window
    }
    mutating func startStopEngine(engine: Engine) {
        self.engine = engine
    }

}



class TruckCar: Car {
    
    var brand: String
    var transmission: Transmission
    var wheels: Wheels
    var km: Double
    var windows: Windows
    var engine: Engine
    let maxCapacity: Int
    
    init(brand: String, transmission: Transmission, wheels: Wheels, km: Double, windows: Windows, engine: Engine, maxCapacity: Int) {
        self.brand = brand
        self.transmission = transmission
        self.wheels = wheels
        self.km = km
        self.windows = windows
        self.engine = engine
        self.maxCapacity = maxCapacity
    }
    
    func changewheels(wheel: Wheels) {
        self.wheels = wheel
        print("Наступила зима, пора менять колеса")
    }
}
class SportCar: Car {
    
    var brand: String
    var transmission: Transmission
    var wheels: Wheels
    var km: Double
    var windows: Windows
    var engine: Engine
    let maxSpeed: Int
    
    init(brand: String, transmission: Transmission, wheels: Wheels, km: Double, windows: Windows, engine: Engine, maxSpeed: Int) {
        self.brand = brand
        self.transmission = transmission
        self.wheels = wheels
        self.km = km
        self.windows = windows
        self.engine = engine
        self.maxSpeed = maxSpeed
    }
    
    func changewheels(wheel: Wheels) {
        self.wheels = wheel
        print("Наступила зима, пора менять колеса")
    }
    
}
