import Foundation

// A factory is an object for creating other objects
// Creator1 & Creator2 adopt a common Creator
// factory solves the problem of creating product objects without specifying their concrete classes

protocol Creator {
    func factoryMethod() -> Product
    func someOperation() -> String
}

extension Creator {

    func someOperation() -> String {
        let product = factoryMethod()

        return "Creator: The same creator's code has just worked with " + product.operation()
    }
}

class Creator1: Creator {
    public func factoryMethod() -> Product {
        return Product1()
    }
}

class Creator2: Creator {
    public func factoryMethod() -> Product {
        return Product2()
    }
}

protocol Product {
    func operation() -> String
}

class Product1: Product {
    func operation() -> String {
        return "{Result of the Product1}"
    }
}

class Product2: Product {

    func operation() -> String {
        return "{Result of the Product2}"
    }
}
class Client {
    static func someClientCode(creator: Creator) {
        print("Client: I'm not aware of the creator's class, but it still works.\n"
            + creator.someOperation())
    }
}

Client.someClientCode(creator: Creator1())
Client.someClientCode(creator: Creator2())

