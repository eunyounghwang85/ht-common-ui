//
//  ex+Data.swift
//  htsmartDoorLock
//
//  Created by heyht on 5/14/25.
//

import Foundation
import CommonCrypto

extension Data {
  
    
    public var toPrettyPrintedString: String? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
              let prettyPrintedString = NSString(data: data, encoding: String.Encoding.utf8.rawValue) else { return nil }
        return prettyPrintedString as String
    }
    
    public var fetchAccessToken : String? {
        
        let tokenParts = self.map{ data in String(format: "%02.2hhx", data)}
        let token = tokenParts.joined()
        return token
        /*var token: String  = ""
        for i in 0..<devicetoken.count {
            token += String(format: "%02.2hhx", devicetoken[i] as CVarArg)
            
        }
        return token*/
    }
    
}

// MARK: auth 관련 - 주로 쓰이는 포맷
extension Data{
    public func sha256() -> String{
        return hexStringFromData(input: digest(input: self as NSData))
    }
    
    private func digest(input : NSData) -> NSData {
        let digestLength = Int(CC_SHA256_DIGEST_LENGTH)
        var hash = [UInt8](repeating: 0, count: digestLength)
        CC_SHA256(input.bytes, UInt32(input.length), &hash)
        return NSData(bytes: hash, length: digestLength)
    }
    
    private  func hexStringFromData(input: NSData) -> String {
        var bytes = [UInt8](repeating: 0, count: input.length)
        input.getBytes(&bytes, length: input.length)
        
        var hexString = ""
        for byte in bytes {
            hexString += String(format:"%02x", UInt8(byte))
        }
        
        return hexString
    }
}
