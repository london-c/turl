//
//  main.swift
//  turl
//
//  Created by London Cochran on 10/16/18.
//  Copyright © 2018 London. All rights reserved.
//

import Foundation
import CoreServices

var p = Process()
var cl_args = CommandLine.arguments

if(cl_args.count < 2) {
    print("Error 0: No arguments defined")
    exit(0)
} else {
    checkArgument(withValue: cl_args.last!)
}

print("turl: There were \(cl_args.count) successful inputs!")
