//
//  ProfileInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol ProfileBusinessLogic {
  func doSomething(request: Profile.Something.Request)
}

protocol ProfileDataStore {
  //var name: String { get set }
}

final class ProfileInteractor: ProfileBusinessLogic, ProfileDataStore {
  var presenter: ProfilePresentationLogic?
  var worker: ProfileWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Profile.Something.Request) {
    worker = ProfileWorker()
    worker?.doSomeWork()
    
    let response = Profile.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
