//
//  Date+Extension.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import Foundation

extension Date {
    /// Returns a date from the provided string.
    ///
    /// - Parameter utcString: The string used to create the date.
    ///
    /// - Returns: A date from the provided string.
    ///
    static func utcDate(from utcString: String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(abbreviation: "UTC")!
        return formatter.date(from: utcString)
    }
    // Implementation
//    let utcDateString = "2021-04-03T14:00:00.000Z"
//    let utcDate = Date.utcDate(from: utcDateString) //Playgrounds will show this in the machine's timezone.
}
