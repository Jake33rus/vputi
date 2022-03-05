//
//  SettingsPresenter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol SettingsPresentationLogic {
  func presentSomething(response: Settings.Something.Response)
}

final class SettingsPresenter: SettingsPresentationLogic {
  weak var viewController: SettingsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Settings.Something.Response) {
    let viewModel = Settings.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
