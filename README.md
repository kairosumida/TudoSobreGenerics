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

Observe que só declarar que a classe é Genérica ainda não tem utilidade alguma. Porem agora dentro da classe podemos declarar o tipo T
```Swift
class Information<T>{
  var data: T
  init(data: T){
    self.data = data
  }
}
```
Observe que não é possivel declarar um valor do tipo T sem declarar o tipo T. e declaramos o tipo T quando instanciamos a classe. 
Portanto fica obrigatório passar o valor T no construtor se tivermos uma variavel T
```Swift
class Information<T>{
  var data: T //não possui um valor, o compilador vai obrigar a criar um construtor e atribuir o valor de data
}
```


