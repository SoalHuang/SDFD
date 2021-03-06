//
//  Sequence+JSON.swift
//  SDFoundation
//
//  Created by SoalHunag on 2020/4/30.
//  Copyright © 2020 SoalHunag. All rights reserved.
//

import Foundation

public extension SDExtension where T : Sequence {
    
    func toJsonData(options: JSONSerialization.WritingOptions = []) -> Data? {
        guard JSONSerialization.isValidJSONObject(base) else { return nil }
        return try? JSONSerialization.data(withJSONObject: base, options: options)
    }
    
    func toJsonString(options: JSONSerialization.WritingOptions = [],
                      encoding: String.Encoding = .utf8) -> String? {
        guard let data = toJsonData(options: options) else { return nil }
        return String(data: data, encoding: encoding)
    }
}
