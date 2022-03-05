//
//  MainInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol MainBusinessLogic
{
  func doSomething(request: Main.Something.Request)
}

protocol MainDataStore
{
  //var name: String { get set }
}

final class MainInteractor: MainBusinessLogic, MainDataStore
{
  var presenter: MainPresentationLogic?
  var worker: MainWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Main.Something.Request)
  {
    worker = MainWorker()
    worker?.doSomeWork()
    
    let response = Main.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
