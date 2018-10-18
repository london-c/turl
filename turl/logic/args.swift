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

enum argType: CaseIterable {
    case help
    case link
}

func checkArgument(withValue value: [String]) {
    for values in value {
        if args.contains(values) {
            
            //TODO: Update this so it can detect instead of using if statements
            //call something here to run based on what argument was called
            if(values.contains("help")) {
                argFunction(usingArg: .help)
            } else if(values.contains("link")) {
                argFunction(usingArg: .link)
            }
        }
    }
}

func argFunction(usingArg arg: argType) {
    
    switch arg {
        
    case .help:
        print("This is the help command!")
        
    case .link:
        if cl_args.count > 2 && cl_args.last!.contains(".com") {
            let link = cl_args.last
            print("Success: Link was included", link!)
        } else {
            print("Error 1: Link is required")
        }
    }
}
