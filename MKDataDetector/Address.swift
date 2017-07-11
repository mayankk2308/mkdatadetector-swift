//
//  Address.swift
//  MKDataDetector
//
//  Created by Mayank Kumar on 7/9/17.
//  Copyright © 2017 Mayank Kumar. All rights reserved.
//

import Foundation

extension MKDataDetectorService {
    
    public func extractAddresses(withTextBody textBody: String) -> [AddressAnalysisResult?]? {
        return extractData(withTextBody: textBody, withResultType: .address)
    }
    
    public func extractAddresses(withTextBodies textBodies: [String]) -> [[AddressAnalysisResult?]?]? {
        return extractData(withTextBodies: textBodies, withResultType: .address)
    }
    
}
