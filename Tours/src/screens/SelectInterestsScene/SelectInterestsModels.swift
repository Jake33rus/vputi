//
//  SelectInterestsModels.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

enum SelectInterests {
  // MARK: Use cases
  
  enum Something {
    struct Request { }
    struct Response {
        let interests: [String]
    }
    struct ViewModel {
        let interests: [String]
    }
  }
}
