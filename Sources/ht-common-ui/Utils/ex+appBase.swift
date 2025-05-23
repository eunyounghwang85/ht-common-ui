//
//  ex+appBase.swift
//  htsmartDoorLock
//
//  Created by heyht on 4/8/25.
//

import Foundation

public var AppUUID: String{
    get{
        NSUUID.init().uuidString
    }
}
public var getDeviceLocale : Locale {
//    let localeID = Locale.preferredLanguages.first ?? "en"
//    return Locale(identifier: localeID)
    return  Locale.autoupdatingCurrent
}

public var AppLocale: String{
    //로케일 취득, 로케일은 폰의 시스템로케일을 따라감
    let currentLocale  = getDeviceLocale
    let langCode:String = {
        guard let code = currentLocale.language.languageCode?.identifier  else {
            return "en"
        }
        return code
    }()
    let countryCode:String = {
        guard let code = currentLocale.currency?.identifier  else {
            return "US"
        }
        return code
    }()
    
    return (langCode + "_" + countryCode)
}

public var AppLangCode: String{
    let currentLocale  = getDeviceLocale
    let langCode:String = {
        guard let code = currentLocale.language.languageCode?.identifier else{
            return ""
        }
        if ["ko", "ja", "vi"].contains(code) {
            return "_\(code)"
        }else if ["zh"].contains(code){
            return "_zh_tw"
        }else{
            return ""
        }
    }()
    return langCode
}

public var AppDeviceName:  String {
    var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let model = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
    if model.lowercased().contains("ipad") {
        return "IPad"
    }
    /*else if model.contains("i386") ||  model.contains("x86_64") {
        return "IPhone_Simulator"
    }*/
    
    return "IPhone"
}
