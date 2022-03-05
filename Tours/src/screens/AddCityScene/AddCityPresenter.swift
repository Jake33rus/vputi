//
//  AddCityPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol AddCityPresentationLogic {
  func presentSomething(response: AddCity.Something.Response)
}

final class AddCityPresenter: AddCityPresentationLogic {
  weak var viewController: AddCityDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: AddCity.Something.Response) {
    let viewModel = AddCity.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
