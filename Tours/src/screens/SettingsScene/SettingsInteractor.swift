//
//  SettingsInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol SettingsBusinessLogic {
  func doSomething(request: Settings.Something.Request)
}

protocol SettingsDataStore {
  //var name: String { get set }
}

final class SettingsInteractor: SettingsBusinessLogic, SettingsDataStore {
  var presenter: SettingsPresentationLogic?
  var worker: SettingsWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Settings.Something.Request) {
    worker = SettingsWorker()
    worker?.doSomeWork()
    
    let response = Settings.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
