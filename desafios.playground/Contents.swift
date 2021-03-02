import UIKit

// 1 - Insira o código abaixo que formate o valor para 2 casas após a vígulas
let value = 10.124
let valFormatado = String(format : "%.2f", value);
print(valFormatado)



// 2 - Como eu apresento para o Usuário a seguinte frase: O ano atual é 2021? Utilizando interpolação?
let str1 = "O ano atual é"
let year = 2021
print("\(str1) \(year)")

// 3 - Existe um problema para o código abaixo? Se sim qual seria ele?
//let complementAddress : Int?
//print(complementAddress)

//nao pode usar sem ser inicializada? acho que é isso :D

// 4 - Defina um valor para a váriavel complementAddress e imprima ela de forma segura, caso seu valor for nulo imprima: "Não existe endereço complementar"

var complementAddresss : Int?
complementAddresss = nil

if let endereco = complementAddresss {
  print(endereco)

}
else{
  print("Não existe endereço comlementar")

}

// 5 - Faça uma ternária que verifique se a nota é maior que 7 caso afimativo imprima: "Aprovado" caso contrário "Em exame".

let nota = 6.98

func verificaNota(nota : Double) -> Bool{
  

  if nota > 7 {
    return true
  }else{
    return false
  }
}
var verifica = verificaNota(nota : nota) ? "Aprovado" : "Em exame"

print(verifica)

//6 - Verifique a validade de uma senha fornecida pelo usuário. A senha válida é o número 1234. Devem ser impressas as seguintes mensagens: ACESSO PERMITIDO caso a senha seja válida. ACESSO NEGADO caso a senha seja inválida.

let password = 2314
let realPassword = 1234

if password == realPassword {
  "Acesso permitido"

}
else{
  "Acesso Negado"

}



//7 - Dadas medidas dos lados de um triângulo e escreva se ele é Equilátero, Isósceles ou Escaleno. Sendo que:
    //− Triângulo Equilátero: possui os 3 lados iguais.
    //− Triângulo Isóscele: possui 2 lados iguais.
    //− Triângulo Escaleno: possui 3 lados diferentes.

let l1 = 10
let l2 = 10
let l3 = 12

  if l1 == l2{
    if l2 == l3{
      print("Equilatero")
    }
    else{
      print("Isoscele")
    }
  }

 if l2 == l3{
    if l1 == l2{
      print("Equilatero")
    }
    else{
      print("Isoscele")
    }
 }

 if l1 == l3{
    if l2 == l3{
      print("Equilatero")
    }
    else{
      print("Isoscele")
 }
 }
 if l1 != l2 && l2 != l3 && l2 != l3 {
   print("Escaleno")
 }



//8 - Percorra todo o array adicionando a string Nome: em cada elemento
let names = ["João","Maria","José","Matheus"]
let nomes = names.map({(it:String) -> String in
    return "Nome: \(it)"
})


//9 - Percorra o array e exiba o maior valor, verifique se o array é vazio caso afirmativo exiba na tela a mensagem: "Array vazio"

let array = [1,10,23,50,2]
var maior = 0

if array.isEmpty{
    
    print("Array vazio");
    
}
else{
    for numeros in array{
        if numeros > maior  {
            maior = numeros
        }
        
    }
    }

print(maior)

    


//10 - Imprima o primeiro elemento do array do exercicio anterior, verifique se o valor é nulo
var posicao0 : Int = 0

for  number in array{
    if array[0] == number {
        
        posicao0 = number
            print(posicao0)
        break
        
        }
        
    }
    


//11 - Adicione um elemento no array e imprima o último valor inserido

var arrays = [1,2,4,5,6,7,8]
var varaleatoria = [9]

arrays.append(contentsOf: varaleatoria)
if let arrayes = arrays.last {
    print(arrayes)
}


//array ta como let
//dai criei um novo array


//12 - Crie uma struct com o modelo do carro e seu ano, após isso crie um carro com o modelo Ferrari e ano 2020

struct Cars {
    var modelo: String
    var ano: Int
}
let carro = Cars(modelo: "Ferrari", ano: 2020);
print(carro)

//13 - Crie outra struct que receba um peso em Kg e tenha uma propriedade computada que retorne o peso em gramas. Crie um peso com 10Kg e imprima os 2 atributos em Kg e grama

struct Peso {
    var kg : Float
    
    
    func convert() -> Float {
        let grama = kg * 1000
        return grama
    }
}

var peso1 = Peso(kg: 10)
var peso2 = Peso(kg: 45.322)

print(peso1, peso1.convert(), peso2, peso2.convert())


//14 - Crie uma função que imprima a seguinte frase: "Essa é minha primeira função"

func ola(){
    return print("Essa é a minha primeira função")
    
}
print(ola())

//15 - Crie uma função que receba 2 valores Inteiros como parâmetro e imprima a multiplicação entre eles


func multiplica1(a:Int,b:Int){
    let a = a
    let b = b
    
    print(a * b);
}

multiplica1(a: 2, b: 3)
//16 - Crie uma função que receba 2 valores Inteiros como parâmetro e retorne a multiplicação entre eles e imprima seu resultado

func multiplica2(a:Int,b:Int) -> Int{
    let a = a
    let b = b
    
    return a * b
}

print(multiplica2(a: 6, b: 23))

//17 - Utilizando map concatene a string Nome: em cada elemento, e imprima o array

let names22 = ["João","Maria","José","Matheus"]
var nomes22 = names22.map({(it:String) -> String in
        
    return("Nome: \(it)")
})

    print(nomes22)

//18 - Utilizando filter retorne todo os nomes que iniciem com a letra M

var filtro = names22.filter({( it: String) -> Bool in
    var nome: String
    if it.first == "M"{
            nome = it
            return true
                                    
        }
        else{
            return false
        }
    
    
    })

print(filtro)
