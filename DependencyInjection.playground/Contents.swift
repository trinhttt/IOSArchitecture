import UIKit

/*
 Three common forms or types of dependency injection:
 
 1. initializer injection
 2. property injection
 3. method injection
 
 */

// 1. Initializer Injection

protocol Dependency {
    func run()
}

struct DependencyImplementation: Dependency {
    func run() {
        print("start")
    }
}

class Client {
    let dependency: Dependency
    init(_ dependency: Dependency) {
        self.dependency = dependency
    }
    
    func start() {
        dependency.run()
    }
}

let dependency = DependencyImplementation()
let client = Client(dependency)
client.start()


// 2. Property Injection

class PropertyClient {
    var dependency: Dependency?
    
    func start() {
        dependency?.run()
    }
}

let propertyClient = PropertyClient()
propertyClient.dependency = dependency
propertyClient.start()


// 3. method injection

class MethodClient {
    
    func start(dependency: Dependency) {
        dependency.run()
    }
}

let methodClient = MethodClient()
methodClient.start(dependency: dependency)
