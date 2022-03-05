//
//  MainPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol MainPresentationLogic
{
  func presentSomething(response: Main.Something.Response)
}

final class MainPresenter: MainPresentationLogic
{
  weak var viewController: MainDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Main.Something.Response)
  {
    let viewModel = Main.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
