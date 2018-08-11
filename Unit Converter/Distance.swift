//
//  Distance.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/12/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class Distance {
    private var distanceInMetre: Double = 0.0
    private var distanceInKilometre:Double = 0.0
    private var distanceInYards:Double = 0.0
    private var distanceInFeet:Double = 0.0
    private var distanceInMile:Double = 0.0
    
    init() { }
    
    func setMetres(val:Double) { self.distanceInMetre = val }
    func setKilometres(val:Double) { self.distanceInKilometre = val }
    func setYards(val:Double) { self.distanceInYards = val }
    func setFeet(val:Double) { self.distanceInFeet = val }
    func setMiles(val:Double) { self.distanceInMile = val }
    
    func getdistanceInMetres() -> Double { return self.distanceInMetre }
    func getdistanceInKilometres() -> Double { return self.distanceInKilometre }
    func getdistanceInYards() -> Double { return self.distanceInYards }
    func getdistanceInFeet() -> Double { return self.distanceInFeet }
    func getdistanceInMiles() -> Double { return self.distanceInMile }
    
}
