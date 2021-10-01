//___FILEHEADER___

import ComposableArchitecture
import SwiftUI

enum ___VARIABLE_productName:identifier___Action: BindableAction, Equatable {
  case viewOnAppear
  case viewOnDisappear
  case none
  case binding(BindingAction<___VARIABLE_productName:identifier___State>)
}

struct ___VARIABLE_productName:identifier___State: Equatable {
  @BindableState var nested = Nested()
}

extension ___VARIABLE_productName:identifier___State {
  struct Nested: Equatable {
  }
}

struct ___VARIABLE_productName:identifier___Environment: Equatable {
  
}

let ___VARIABLE_productName:identifier___Reducer = Reducer<___VARIABLE_productName:identifier___State, ___VARIABLE_productName:identifier___Action, ___VARIABLE_productName:identifier___Environment>.combine(
  Reducer { state, action, environment in
    switch action {
      case .binding:
        return .none
      case .viewOnAppear:
        break
      case .viewOnDisappear:
        break
      default:
        break
    }
    return .none
  }
)
  .binding()
  .debug()

struct ___FILEBASENAME___: View {
  
  private let store: Store<___VARIABLE_productName:identifier___State, ___VARIABLE_productName:identifier___Action>
  
  @ObservedObject
  private var viewStore: ViewStore<___VARIABLE_productName:identifier___State, ___VARIABLE_productName:identifier___Action>
  
  init(store: Store<___VARIABLE_productName:identifier___State, ___VARIABLE_productName:identifier___Action>? = nil) {
    let unwrapStore = store ?? Store(initialState: ___VARIABLE_productName:identifier___State(), reducer: ___VARIABLE_productName:identifier___Reducer, environment: ___VARIABLE_productName:identifier___Environment())
    self.store = unwrapStore
    self.viewStore = ViewStore(unwrapStore)
  }
  
  var body: some View {
    ZStack {
      Text("Empty")
    }
    .onAppear {
      viewStore.send(.viewOnAppear)
    }
    .onDisappear {
      viewStore.send(.viewOnDisappear)
    }
  }
}

struct ___FILEBASENAME____Previews: PreviewProvider {
  static var previews: some View {
    ___FILEBASENAME___()
  }
}
