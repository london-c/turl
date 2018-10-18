//
//  args.swift
//  turl
//
//  Created by London Cochran on 10/17/18.
//  Copyright © 2018 London. All rights reserved.
//

import Foundation

//Class used for checking what argument was defined and used

//Array of the kind of arguments that can be used in Turl currently
var args = ["help", "link"]

func checkArgument(withValue value: String) {
    if args.contains(value) {
        print("contains value:",value)
    }
}
