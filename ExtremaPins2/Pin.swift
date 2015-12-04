//
//  Pin.swift
//  ExtremaPins
//
//  Created by Fhict on 27/11/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import Foundation
import Parse

class Pin
{
    var pinNr:Int32
    var xCoordinaat: Int32
    var yCoordinaat: Int32
    var gebruikersNr: Int32
    
    init(pinNr:Int32, xCoordinaat:Int32, yCoordinaat:Int32, gebruikersNr:Int32)
    {
        //self.naam = naam!
        self.pinNr = pinNr
        self.xCoordinaat = xCoordinaat
        self.yCoordinaat = yCoordinaat
        self.gebruikersNr = gebruikersNr
        // test123
    }
}
