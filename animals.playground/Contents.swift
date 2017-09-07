//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name: String
    var health: Int = 100
    init(name: String) {
        self.name = name
    }
    func displayHealth() {
        print(self.health)
    }
}



var animal1 = Animal(name: "skippy")
animal1.displayHealth()

class Cat: Animal {
    func growl() {
        print("Rawrrrrrrr!")
    }
    
    override init(name: String) {
        super.init(name: name)
        self.health = 150
    }
    
    func run() {
        print("Running")
        self.health -= 10
    }
}


var cat1 = Cat(name: "skippy2")
cat1.displayHealth()
cat1.run()
cat1.displayHealth()

class Cheetah: Cat {
    override func run() {
        if (self.health >= 50) {
            print("running Fast")
            self.health -= 50
        }
        else {
            print("I need more sleep to run!")
        }

    }
    
    override init(name: String) {
        super.init(name: name)
        }
    func sleep() {
        if (self.health < 151){
            self.health += 50
        }
        else {
            self.health = 200
        }
    }
}

var cheet1 = Cheetah(name: "charley")
cheet1.displayHealth()
cheet1.run()
cheet1.displayHealth()
cheet1.run()
cheet1.run()
cheet1.run()
cheet1.run()
cheet1.run()
cheet1.sleep()
cheet1.displayHealth()
cheet1.sleep()
cheet1.displayHealth()
cheet1.sleep()
cheet1.displayHealth()
cheet1.sleep()
cheet1.displayHealth()
cheet1.sleep()
cheet1.displayHealth()


class Lion: Cat {
    override func growl() {
        print("ROARRRR I am the King of the Jungle")
    }
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
}

var lion1 = Lion(name: "Mufasssssssaaaaaaa")
//lion1.displayHealth()
//lion1.growl()
//lion1.displayHealth()
