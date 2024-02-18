//
//  SampleApp.swift
//  Sample
//
//  Created by MinhyunCho on 11/14/23.
//

import SwiftUI

import MainFeature
import CounterFeature
import MaximFeature

@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainView(
                    mainViewModel: MainViewModel(
                        counterDataSource: CounterDataSourceImplement(),
                        maximDataSource: MaximDataSourceImplement()),
                    counterFactory: CounterViewFactoryImplement(),
                    maximFactory: MaximViewFactoryImplement()
                )
            }
        }
    }
}
