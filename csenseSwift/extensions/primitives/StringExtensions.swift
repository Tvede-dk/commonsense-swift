//
// Created by Kasper T on 06/11/2017.
// Copyright (c) 2017 commonsense. All rights reserved.
//

import Foundation


extension Optional where Wrapped == String {

    public var isNilOrBlank : Bool {
        get{ return self?.isBlank != false }
    }
}

extension String {

    public var isBlank: Bool {
        get {
            return self == "" || self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty
        }
    }

}
