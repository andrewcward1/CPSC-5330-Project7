//
//  TimeZone.swift
//  TableView
//
//  Created by Andrew Ward on 3/1/25.
//

/*
 Simple TimeZone struct to hold a descriptive label and the UTC offset of the timezone
 */

import Foundation

struct TimeZone {
    var label: String?;
    var utcOffset: String?;
    
    init(label: String, utcOffset: String) {
        self.label = label
        self.utcOffset = utcOffset
    }
}
