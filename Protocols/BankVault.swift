//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//



protocol ProvideAccess {
  func allowEntryWithPassword(password: [Int]) -> Bool
  }




class BankVault : ProvideAccess {
  
    let name: String
    let address: String
    var amount: Double = 0.0
  
  
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
  }



extension BankVault {
  func allowEntryWithPassword(password: [Int]) -> Bool {
    guard !password.isEmpty && password.count <= 10 else {return false}
    
    for (index , digit) in password.enumerated(){
    guard index % 2 == 0 else {
      continue
    }
      if digit % 2 != 0 {
        return false
      }
    }
    return true
  }
}


