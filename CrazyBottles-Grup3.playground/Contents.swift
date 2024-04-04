import Foundation

enum GameError: Error {
    case invalidTheta
    case invalidVelocity
    case invalidPosition
    case invalidDelta
}

class CannonBall {
    private(set) var theta: Double
    private(set) var velocity: Double
    
    init(theta: Double, velocity: Double) {
        self.theta = theta
        self.velocity = velocity
    }
    
    func calculateRange() -> Double {
        let g = 10.0
        return (pow(velocity, 2) * sin(2 * theta * .pi / 180)) / g
    }
    
    func changeTheta(newTheta: Double) throws {
        if newTheta >= 0 && newTheta <= 90 {
            theta = newTheta
        } else {
            print("Give a proper value to the theta (0-90)")
            throw GameError.invalidTheta
        }
    }
    
    func changeVelocity(newVelocity: Double) throws {
        if newVelocity >= 0 && newVelocity <= 100 {
            velocity = newVelocity
        } else {
            print("Give a proper value to the velocity (0-100)")
            throw GameError.invalidVelocity
        }
    }
}

class Bottle {
    private(set) var position: Double
    private(set) var delta: Double
    private(set) var isUp: Bool = true
    
    init(position: Double, delta: Double) {
        self.position = position
        self.delta = delta
    }
    
    func didHit(calculatedRange: Double) {
        if calculatedRange >= (position - delta) && calculatedRange <= (position + delta) {
            isUp = false
        }
    }
    
    func resetTheBottle() {
        isUp = true
    }
    
    func changePosition(newPosition: Double) throws {
        if newPosition >= 0 && newPosition <= 1500 {
            position = newPosition
        } else {
            print("Give a proper value to bottle position (0-1500m)")
            throw GameError.invalidPosition
        }
    }
}

class Player {
    private(set) var nickname: String
    private(set) var score: Int = 0
    
    init(nickname: String) {
        self.nickname = nickname
    }
    
    func increaseScore() {
        score += 1
    }
    
    func changeNickname(newNickname: String) {
        nickname = newNickname
    }
}

//This can be struct but for OOP, classes are more common.
class Game {
    private var player: Player?
    private var cannonBall: CannonBall?
    private var bottle: Bottle?
    
    init(player: Player? = nil, cannonBall: CannonBall? = nil, bottle: Bottle? = nil) {
        self.player = player
        self.cannonBall = cannonBall
        self.bottle = bottle
    }
    
    func setPlayerName(name: String) {
        player?.changeNickname(newNickname: name)
    }
    
    func setBottlePosition(newPosition: Double) {
        do {
            try bottle?.changePosition(newPosition: newPosition)
        } catch {
            print("ERROR!")
        }
    }
    
    func setCannonTheta(newTheta: Double) {
        do {
            try cannonBall?.changeTheta(newTheta: newTheta)
        } catch {
            print("ERROR!")
        }
    }
    
    func setCannonVelocity(newVelocity: Double) {
        do {
            try cannonBall?.changeVelocity(newVelocity: newVelocity)
        } catch {
            print("ERROR!")
        }
    }

    func launchTheBall() {
        if let bottle = bottle, let player = player, let cannonBall = cannonBall {
            let calculatedRange = cannonBall.calculateRange()
            bottle.didHit(calculatedRange: calculatedRange)
            
            if !bottle.isUp {
                player.increaseScore()
                print("CONGRATS, YOU HIT THE BOTTLE!")
            } else {
                print("YOU MISSED THE TARGET!")
            }
    
            bottle.resetTheBottle()
            print("\(player.nickname)'s score: \(player.score)")
        }
    }
}

let player = Player(nickname: "Player1")
let cannon = CannonBall(theta: 20.0, velocity: 70.0)
let bottle = Bottle(position: 5.0, delta: 1)

let game = Game(player: player, cannonBall: cannon, bottle: bottle)
game.setPlayerName(name: "NewPlayer")
game.setBottlePosition(newPosition: 5.0)
game.setCannonTheta(newTheta: 15.0)
game.setCannonVelocity(newVelocity: 10.0)

game.launchTheBall()
game.launchTheBall()
game.setBottlePosition(newPosition: 500.0)
game.launchTheBall()
game.launchTheBall()
