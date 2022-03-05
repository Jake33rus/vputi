//
//  WelcomeScreenPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol WelcomeScreenPresentationLogic
{
  func presentSomething(response: WelcomeScreen.Something.Response)
}

final class WelcomeScreenPresenter: WelcomeScreenPresentationLogic
{
  weak var viewController: WelcomeScreenDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: WelcomeScreen.Something.Response)
  {
    let viewModel = WelcomeScreen.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
