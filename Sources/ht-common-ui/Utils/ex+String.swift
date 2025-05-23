//
//  ex+String.swift
//  htsmartDoorLock
//
//  Created by heyht on 5/19/25.
//

import Foundation

extension String {
    public func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}

// MARK: auth 관련 - 주로 쓰이는 포맷
extension String {
    
    public func stringByAddingPercentEncodingForFormData(_ plusForSpace:Bool = false) -> String? {

        let unreserved = "*-._"
            var allowed = CharacterSet.alphanumerics
           allowed.insert(charactersIn: unreserved)
           if plusForSpace {
               allowed.insert(charactersIn: " ")
           }

           var encoded = self.addingPercentEncoding(withAllowedCharacters: allowed)
           if plusForSpace {
                encoded =  encoded?.replacingOccurrences(of: " ", with: "+")
           }
        return encoded
    }
    
    
    public func sha256() -> String{
        if let stringData = self.data(using: String.Encoding.utf8) {
            return stringData.sha256()
        }
        return ""
    }
    
    public func isvalidEmail() -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
        
    }
    
    
}

