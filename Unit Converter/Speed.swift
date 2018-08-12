//
//  Speed.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/12/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import Foundation

class Speed {
    private var speedInMPS: Double = 0.0
    private var speedInKMPH:Double = 0.0
    private var speedInFTPM:Double = 0.0
    private var speedInMPH:Double = 0.0
    
    init() { }
    
    func setMPS(val:Double) { self.speedInMPS = val }
    func setKMPH(val:Double) { self.speedInKMPH = val }
    func setFTPM(val:Double) { self.speedInFTPM = val }
    func setMPH(val:Double) { self.speedInMPH = val }
    
    func getSpeedInMPS() -> Double { return self.speedInMPS }
    func getSpeedInKMPH() -> Double { return self.speedInKMPH }
    func getSpeedInFTPM() -> Double { return self.speedInFTPM }
    func getSpeedInMPH() -> Double { return self.speedInMPH }
    
}
