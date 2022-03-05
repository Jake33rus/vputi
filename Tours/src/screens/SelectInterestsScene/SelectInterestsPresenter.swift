//
//  SelectInterestsPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol SelectInterestsPresentationLogic {
  func presentSomething(response: SelectInterests.Something.Response)
}

final class SelectInterestsPresenter: SelectInterestsPresentationLogic {
  weak var viewController: SelectInterestsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: SelectInterests.Something.Response) {
    let viewModel = SelectInterests.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
