//
//  RouteListPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol RouteListPresentationLogic {
  func presentSomething(response: RouteList.Something.Response)
}

final class RouteListPresenter: RouteListPresentationLogic {
  weak var viewController: RouteListDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: RouteList.Something.Response) {
    let viewModel = RouteList.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
