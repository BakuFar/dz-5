import Foundation

//DZ#1

print("Введите любое количество слов")

var text: String = readLine()!
var word = ""
var minWord = ""
var maxWord = ""
var countSymbol = 0
var symbolMin = 100
var symbolMax = 0
var minString: [String] = []
var maxString: [String] = []

for i in text {
    if i == " " || i == "." || i == "," {
        if countSymbol < symbolMin {
            symbolMin = countSymbol
            countSymbol = 0
            minWord = "\(word),"
            word = ""
        }
        if countSymbol == symbolMin {
            countSymbol = 0
            minWord += "\(word),"
            word = ""
        }
        countSymbol = 0
        word = ""
        continue
    }
    else {
        word += "\(i)"
        countSymbol += 1
    }
}
if countSymbol < symbolMin {
    symbolMin = countSymbol
    countSymbol = 0
    minWord = "\(word),"
    word = ""
}
if countSymbol == symbolMin {
    countSymbol = 0
    minWord += "\(word),"
    word = ""
}
countSymbol = 0
word = ""

for i in text {
    if i == " " || i == "." || i == "," {
        if countSymbol > symbolMax {
            symbolMax = countSymbol
            countSymbol = 0
            maxWord = "\(word),"
            word = ""
        }
        if countSymbol == symbolMax {
            countSymbol = 0
            maxWord += "\(word),"
            word = ""
        }
        countSymbol = 0
        word = ""
        continue
    }
    else {
        word += "\(i)"
        countSymbol += 1
    }
}
if countSymbol > symbolMax {
    symbolMax = countSymbol
    countSymbol = 0
    maxWord = "\(word),"
    word = ""
}
if countSymbol == symbolMax {
    countSymbol = 0
    maxWord += "\(word),"
    word = ""
}

word = ""
for i in minWord {
    if i == "," {
        minString.append(word)
        word = ""
        continue
    }
    word += "\(i)"
}

word = ""
for i in maxWord {
    if i == "," {
        maxString.append(word)
        word = ""
        continue
    }
    word += "\(i)"
}

print("Самое короткое слово(а) - \(minString)")
print("Самое длинное слово(а) - \(maxString)")

//DZ#2

var contacts: String = "Бахадыр - 030361,Айчурок - 140282,Жибек - 678275,Нурсултан - 113232,Асылбек - 901001,Эрулан - 299944,Алтын - 008777,Арслан - 459832,Алтынбек - 207704,Сталбек - 006777,Фархат - 633333,Оскон - 649264,Талант - 999910,Айнура - 533800,Самат - 720229,Макар - 477609,Адилет - 557729,Сыймык - 020891,Медер - 050292,Рахат - 080888,"
var contact = ""
var a: [String] = []
var b: [String] = []
var j: [String] = []
var m: [String] = []
var n: [String] = []
var o: [String] = []
var r: [String] = []
var s: [String] = []
var t: [String] = []
var f: [String] = []
var e: [String] = []
for i in contacts {
    if i == "," {
        for i in contact {
            if i == "А" {
                a.append(contact)
                contact = ""
                break
            }
            if i == "Б" {
                b.append(contact)
                contact = ""
                break
            }
            if i == "Ж" {
                j.append(contact)
                contact = ""
                break
            }
            if i == "М" {
                m.append(contact)
                contact = ""
                break
            }
            if i == "Н" {
                n.append(contact)
                contact = ""
                break
            }
            if i == "О" {
                o.append(contact)
                contact = ""
                break
            }
            if i == "Р" {
                r.append(contact)
                contact = ""
                break
            }
            if i == "С" {
                s.append(contact)
                contact = ""
                break
            }
            if i == "Т" {
                t.append(contact)
                contact = ""
                break
            }
            if i == "Ф" {
                f.append(contact)
                contact = ""
                break
            }
            if i == "Э" {
                e.append(contact)
                contact = ""
                break
            }
        }
        continue
    }
    contact += "\(i)"
}
print("Контакты на букву А - \(a)")
print("Контакты на букву Б - \(b)")
print("Контакты на букву Ж - \(j)")
print("Контакты на букву М - \(m)")
print("Контакты на букву Н - \(n)")
print("Контакты на букву О - \(o)")
print("Контакты на букву Р - \(r)")
print("Контакты на букву С - \(s)")
print("Контакты на букву Т - \(t)")
print("Контакты на букву Ф - \(f)")
print("Контакты на букву Э - \(e)")

//DZ#3

var qRound1: [String] = ["Национальны цветок Японии","Самая большая страна","Царь зверей"]
var qRound2: [String] = ["Сколько лапок у паука?","Сталица Кыргызстана","Замёрзшая вода"]
var qRound3: [String] = ["Самый короткий месяц","Сколько пальцев у человека?","Самый маленький палец"]
var qRound4: [String] = ["Школьный стол","Номер скорой помощи","Внучка Деда Мороза"]
var qRound5: [String] = ["Тормоз корабля","Главный на корабле","10 сантиметров"]
var aRound1: [String] = ["сакура","россия","лев"]
var aRound2: [String] = ["8","бишкек","лёд"]
var aRound3: [String] = ["февраль","20","мизинец"]
var aRound4: [String] = ["парта","103","снегурочка"]
var aRound5: [String] = ["якорь","капитан","дециметр"]
var sum = 0
var rounds = 0

print(qRound1[1])
var answer = readLine()
if answer?.lowercased() == aRound1[1] {
    print(qRound1[2])
    var answer = readLine()
    if answer?.lowercased() == aRound1[2] {
        print(qRound1[0])
        var answer = readLine()
        if answer?.lowercased() == aRound1[0] {
            sum += 100000
            rounds += 1
            print(qRound2[1])
            var answer = readLine()
            if answer?.lowercased() == aRound2[1] {
                print(qRound2[2])
                var answer = readLine()
                if answer?.lowercased() == aRound2[2] || answer?.lowercased() == "лед" {
                    print(qRound2[0])
                    var answer = readLine()
                    if answer?.lowercased() == aRound2[0] || answer?.lowercased() == "восемь" {
                        sum += 100000
                        rounds += 1
                        print(qRound3[1])
                        var answer = readLine()
                        if answer?.lowercased() == aRound3[1] || answer?.lowercased() == "двадцать" {
                            print(qRound3[2])
                            var answer = readLine()
                            if answer?.lowercased() == aRound3[2] {
                                print(qRound3[0])
                                var answer = readLine()
                                if answer?.lowercased() == aRound3[0] {
                                    sum += 100000
                                    rounds += 1
                                    print(qRound4[1])
                                    var answer = readLine()
                                    if answer?.lowercased() == aRound4[1] {
                                        print(qRound4[2])
                                        var answer = readLine()
                                        if answer?.lowercased() == aRound4[2] {
                                            print(qRound4[0])
                                            var answer = readLine()
                                            if answer?.lowercased() == aRound4[0] {
                                                sum += 100000
                                                rounds += 1
                                                print(qRound5[1])
                                                var answer = readLine()
                                                if answer?.lowercased() == aRound5[1] {
                                                    print(qRound5[2])
                                                    var answer = readLine()
                                                    if answer?.lowercased() == aRound5[2] || answer?.lowercased() == "дм" {
                                                        print(qRound5[0])
                                                        var answer = readLine()
                                                        if answer?.lowercased() == aRound5[0] {
                                                            sum += 100000
                                                            rounds += 1
                                                            print("Поздравляю! Вы выиграли! \nВаш выигрыш - \(sum) сом \nКоличество пройденных раундов - \(rounds)")
                                                        }
                                                        else {
                                                            print("Правильный ответ - \(aRound5[0]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                                                        }
                                                    }
                                                    else {
                                                        print("Правильный ответ - \(aRound5[2]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                                                    }
                                                }
                                                else {
                                                    print("Правильный ответ - \(aRound5[1]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                                                }
                                            }
                                            else {
                                                print("Правильный ответ - \(aRound4[0]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                                            }
                                        }
                                        else {
                                            print("Правильный ответ - \(aRound4[2]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                                        }
                                    }
                                    else {
                                        print("Правильный ответ - \(aRound4[1]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                                    }
                                }
                                else {
                                    print("Правильный ответ - \(aRound3[0]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                                }
                            }
                            else {
                                print("Правильный ответ - \(aRound3[2]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                            }
                        }
                        else {
                            print("Правильный ответ - \(aRound3[1]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                        }
                    }
                    else {
                        print("Правильный ответ - \(aRound2[0]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                    }
                }
                else {
                    print("Правильный ответ - \(aRound2[2]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
                }
            }
            else {
                print("Правильный ответ - \(aRound2[1]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
            }
        }
        else {
            print("Правильный ответ - \(aRound1[0]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
        }
    }
    else {
        print("Правильный ответ - \(aRound1[2]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
    }
}
else {
    print("Правильный ответ - \(aRound1[1]) \nКоличество пройденных раундов - \(rounds) \nВаш выигрыш - \(sum) сом")
}


