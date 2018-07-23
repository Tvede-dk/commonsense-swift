//
// Created by Kasper Tvede on 06/07/2018.
// Copyright (c) 2018 commonsense. All rights reserved.
//

import Foundation

extension Set {
    mutating func toggleExistence(value: Element) {
        if contains(value) {
            remove(value)
        } else {
            insert(value)
        }
    }
}