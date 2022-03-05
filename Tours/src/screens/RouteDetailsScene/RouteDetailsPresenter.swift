//
//  RouteDetailsPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol RouteDetailsPresentationLogic {
  func presentSomething(response: RouteDetails.Something.Response)
}

final class RouteDetailsPresenter: RouteDetailsPresentationLogic {
  weak var viewController: RouteDetailsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: RouteDetails.Something.Response) {
    let viewModel = RouteDetails.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
