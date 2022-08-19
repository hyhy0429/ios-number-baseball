
import Foundation

var chance: Int = 9
let gameNumbers: [Int] = makeRandomThreeNumbers()

func makeRandomThreeNumbers() -> [Int] {
    var randomGameNumbers: Set<Int> = []
    
    while randomGameNumbers.count < 3 {
        randomGameNumbers.insert(Int.random(in: 1...9))
    }
    return Array(randomGameNumbers)
}

func compareNumber(userGameNumber: [Int]) -> [Int] {
    var strikeCount = 0
    var ballCount = 0
    
    for index in 0...2 {
        if gameNumbers[index] == userGameNumber[index] {
            strikeCount += 1
        } else if gameNumbers.contains(userGameNumber[index]) {
            ballCount += 1
        }
    }
    return [strikeCount, ballCount]
}

func playNumberBaseballGame() {
    while 0 != chance {
        let userGameNumbers : [Int] = makeRandomThreeNumbers()
        let strikeAndBallCounts = compareNumber(userGameNumber: userGameNumbers)
        let gameStrikeCount = strikeAndBallCounts[0]
        let gameBallCount = strikeAndBallCounts[1]
        print("임의의 수 : \(userGameNumbers[0]) \(userGameNumbers[1]) \(userGameNumbers[2])")
        print("\(gameStrikeCount) 스트라이크, \(gameBallCount) 볼")
        chance -= 1
        
        let stopMessage : Bool = true
        switch stopMessage {
        case chance == 0 :
            print("컴퓨터 승리...!")
        case strikeAndBallCounts[0] == 3 :
            print("사용자 승리")
            break
        default :
            print("남은기회 : \(chance)\n")
        }
    }
}

func inputUserMenu() {
    print("1. 게임시작\n2. 게임종료\n원하는 기능을 선택해주세요 :", terminator: "")
//    let inputMenu = readLine() 1. 왜 while let 을 했죠? 2. 왜 Optional이 해제된걸까요?
    while let inputMenu = readLine() {
        switch inputMenu {
        case "1" :
            print("숫자를 3개를 띄어쓰기로 구분하여 입력해주세요. \n중복 숫자는 허용하지 않습니다. \n입력 :", terminator: "")
            // 유효성 검증함수
        case "2" :
// 리턴값을 썼음에도 왜 함수가 종료되지않을까요?
            return
            
        default :
            print("입력이 잘못되었습니다")
            print("1. 게임시작\n2. 게임종료\n원하는 기능을 선택해주세요 :", terminator: "")
        }
    }
}


func inputUserNumber() {        // 띄어쓰기, 입력안함, 중복, 문자인경우
    print("임시 입력값 :",terminator: "")
    let inputNumbers = readLine()
    if let inputNumber = inputNumbers {
        let splitInputNumbers = inputNumber.components(separatedBy: " ")       // string.subsequence : string의 하위메서드?

        print(inputNumber)
        print(splitInputNumbers)
        
        // 띄어쓰기 로직
        if splitInputNumbers.contains(""){
            print("띄어쓰기쓰지마")
        }

        // 입력안함 로직
        if splitInputNumbers.isEmpty {
            print("값이없어 값은넣어줘야해")
        }
        
        // 중복값 로직
        
        
        // 문자인경우 로직
        
//        for (index,char) in inputNumber.enumerated() {
//            print(index,char)
//            if splitInputNumbers.inputN(""){
//                print("띄어쓰기쓰지마")
//            }
//        }
        // char 에다가
        
//        print(splitInputNumbers[0])
//        print(type(of: splitInputNumbers[0]))
//
        // substring은 왜 문자가 담긴 배열로 나오나요? 궁금합니다.
    }
    
    
}
inputUserNumber()


