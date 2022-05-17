# TudoSobreGenerics
<li>Referencias: </li>
<ul> 1 - https://www.programiz.com/swift-programming/generics </ul>
<ul> 2 - </ul>

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
<p>Por exemplo: func addition<T: Numeric>(num: T){} Não é possivel chamar dessa forma: addition<Int>(num: 5). O certo é: addition(num: 5)</p>
