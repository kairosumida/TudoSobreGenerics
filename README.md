# TudoSobreGenerics
<li>Referencias: </li>
<ul> 1 - https://www.programiz.com/swift-programming/generics </ul>
<ul> 2 - https://docs.swift.org/swift-book/LanguageGuide/Generics.html </ul>

<h1> Função Genérica </h1>
<p>Criamos uma função generica quando </p>
<p>1 - colocamos ao lado do nome da função &ltT&gt(T é apenas representativo, poderia ser U).</p> 
<p>2 - Criamos um parâmetro dentro da entrada da função</p>

```Swift
func displayData<T>(data: T){
...
}
```

<p>Não é possivel criar uma variavel vazia do tipo T e não passar um parâmetro na entrada</p>
<p>Ex: func displayData<T>(){var data: T ...}</p>
</br>
<h1>Classe Genérica</h1>
<p>Criamos uma classe genérica: </p>
<p>1 - Ao lado do nome da classe informamos que a classe é do tipo T</p>

```Swift
class Information<T>{
...
}
```

<p>Observe que só declarar que a classe é Genérica ainda não tem utilidade alguma. Porem agora dentro da classe podemos declarar o tipo T</p>

```Swift
class Information<T>{
  var data: T
  init(data: T){
    self.data = data
  }
}
```
<p>Observe que não é possivel declarar um valor do tipo T sem declarar o tipo T. e declaramos o tipo T quando instanciamos a classe. </p>
<p>Portanto fica obrigatório passar o valor T no construtor se tivermos uma variavel T</p>

```Swift
class Information<T>{
  var data: T //não possui um valor, o compilador vai obrigar a criar um construtor e atribuir o valor de data
}
```

<h1> Tipos restritos com genérics</h1>
<p>As vezes queremos passar um tipo generico com algumas caracteristicas ou com alguma restrição. </p>
<p>É possivel falando que aquele tipo deve ser implementado pela classe que usa o generic</p>
<p>Para isso criamos</p>
<p>1 - Uma função e ao lado colocamos o &ltT : 'Classe'&gt</p>
<p>2 - No parametro da função passamos o T</p>

```Swift
func addition<T: Numeric>(num1: T, num2: T){
    ...
}
```

<p>Obs: Não é possivel passar um tipo na hora de criar a classe, mesmo que esteja em conformidade com o tipo T</p>
<p>Por exemplo: func addition&ltT: Numeric&gt(num: T){} Não é possivel chamar dessa forma: addition$ltInt$gt(num: 5). O certo é: addition(num: 5)</p>

  
<h1> Clausula where </h1>
<p> Usamos uma clausula where quando queremos usar uma funcionalidade em algum método</p>
<h2> Na função </h2>

```Swift
  struct Informationt<T>{
    
    var data: T
    init (data: T){
        self.data = data
    }
    func getData() -> T where T == Int{ //So vai ser possivel chamar esse metodo se o valor de T for uma int
        return self.data
    }
}
```

<p> Isso nos permite ter varios metodos com a mesma assinatura porem com where diferentes</p>

```Swift
extension Informationt {
    func getCalcula() -> String where T == Int{
        return String("é uma Int")
    }
    func getCalcula() -> String where T == String{
        return String("é uma String")
    }
}
```

<h2> No extension</h2>

```Swift
extension Informationt where T == Int{
    func getCalcula() -> String{
        return String("é uma Int")
    }
    
}
```

<p> O mesmo vale para o extension, podemos ter varios metodos que se comportam de alguma maneira quando o genérico é uma Int e se comportam de outra maneira quando ele é uma String</p>

```Swift
extension Informationt where T == Int{
    func getCalcula() -> String {
        return String("é uma Int")
    }
}
extension Informationt where T == String{
    func getCalcula() -> String {
        return String("é uma String")
    }
}
```

