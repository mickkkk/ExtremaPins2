//
//  ConnectiePin.swift
//  ExtremaPins
//
//  Created by Fhict on 27/11/15.
//  Copyright © 2015 Mick Vranken. All rights reserved.
//

import Foundation
import Parse


class ConnectiePin
{
    var pinNr:Int32
    var pinNrConnectie:Int32
    
    init(pinNr:Int32, pinNrConnectie:Int32)
    {
        self.pinNr = pinNr
        self.pinNrConnectie = pinNrConnectie
    }
}