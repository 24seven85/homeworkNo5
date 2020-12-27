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
    
    func printCar()
}
extension Car {
    
    mutating func openCloseWindow(window: Windows) {
        self.windows = window
    }
    mutating func startStopEngine(engine: Engine) {
        self.engine = engine
    }

}

extension Car {
    
    mutating func changewheels(wheel: Wheels) {
        self.wheels = wheel
    }
}

