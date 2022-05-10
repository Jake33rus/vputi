//
//  String+URL+Extension.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import Foundation

extension String {
    /// Searches through a string to find valid URLs.
    /// - Returns: An array of found URLs.
    func getURLs() -> [URL] {
        var foundUrls = [URL]()
        guard let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue) else {
            return foundUrls
        }

        let matches = detector.matches(
            in: self,
            options: [],
            range: NSRange(location: 0, length: self.utf16.count)
        )

        for match in matches {
            guard let range = Range(match.range, in: self),
                  let retrievedURL = URL(string: String(self[range])) else { continue }
            foundUrls.append(retrievedURL)
        }

        return foundUrls
    }
}
