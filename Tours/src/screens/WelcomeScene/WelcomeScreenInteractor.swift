//
//  WelcomeScreenInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//

import UIKit

protocol WelcomeScreenBusinessLogic
{
  func doSomething(request: WelcomeScreen.Something.Request)
}

protocol WelcomeScreenDataStore
{
  //var name: String { get set }
}

final class WelcomeScreenInteractor: WelcomeScreenBusinessLogic, WelcomeScreenDataStore
{
  var presenter: WelcomeScreenPresentationLogic?
  var worker: WelcomeScreenWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: WelcomeScreen.Something.Request)
  {
    worker = WelcomeScreenWorker()
    worker?.doSomeWork()
    
    let response = WelcomeScreen.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
