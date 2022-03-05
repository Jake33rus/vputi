//
//  RegistrationPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol RegistrationPresentationLogic
{
  func presentSomething(response: Registration.Something.Response)
}

final class RegistrationPresenter: RegistrationPresentationLogic
{
  weak var viewController: RegistrationDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Registration.Something.Response)
  {
    let viewModel = Registration.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
