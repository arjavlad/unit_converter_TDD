//
//  DistanceUnitConverter.swift
//  unit_converter
//
//  Created by Arjav Lad on 19/06/18.
//  Copyright © 2018 Arjav Lad. All rights reserved.
//

import Foundation

enum DistanceUnit {
    case kilometer
    case meter
    case centimeter
    case milimeter

    var multiplier: Double {
        switch self {
        case .kilometer:
            return 0.001

        case .milimeter:
            return 1000

        case .centimeter:
            return 100

        case .meter:
            return 1
        }
    }
}

class DistanceUnitConverter {

    func convert(distance: Double, from: DistanceUnit, to: DistanceUnit) -> Double {
        if from == to {
            return distance
        }

        var result: Double = distance
        if from == .meter {
            result = distance * to.multiplier
        } else {
            if to == .meter {
                result = distance / from.multiplier
            } else {
                let meter = convert(distance: distance, from: from, to: .meter)
                result = meter * to.multiplier
            }
        }
        return result
    }

}
