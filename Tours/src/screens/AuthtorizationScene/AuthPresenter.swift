//
//  AuthPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol AuthPresentationLogic
{
  func presentSomething(response: Auth.Something.Response)
}

final class AuthPresenter: AuthPresentationLogic
{
  weak var viewController: AuthDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Auth.Something.Response)
  {
    let viewModel = Auth.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
