//
//  Log.swift
//  htsmartDoorLock
//
//  Created by heyht on 4/8/25.
//

import Foundation
import UIKit

// MARK: Log
public func Log(_ nslog: Any,_ justPrint:Bool = false, _ fnc:String = #function, _ line:Int = #line)->(){
    
    #if DEBUG
    guard  !justPrint else {
        print(nslog)
        return
    }
    print("➡️ \(nslog)",fnc,line)
  //  print("[swiftIN]  \(nslog)",fnc,line)
    #endif
    
}
