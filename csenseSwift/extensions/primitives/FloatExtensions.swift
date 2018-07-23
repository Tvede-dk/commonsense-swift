//
// Created by Kasper Tvede on 06/07/2018.
// Copyright (c) 2018 commonsense. All rights reserved.
//

import Foundation

extension Float {
    /**
     * if this value is negative (below 0, not inclusive 0)
     */
    var isNegative: Bool {
        return self < 0
    }

    /**
     * if this value is positive (above or equal to 0, inclusive 0)
     */
    var isPositive: Bool {
        return self >= 0
    }

}