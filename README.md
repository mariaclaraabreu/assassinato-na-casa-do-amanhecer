# Assassinato na casa do amanhecer
<p> O objetivo é descrever os fatos ocorridos na Casa do Amanhecer e investigados por Sherlock Holmes em um programa em PROLOG. A partir dos fatos observados, eu deduzi quem, dentre os envolvidos, é o terrível assassino de Anna. </>
 


<p>Domingo de manhã no apartamento compartilhado 'Casa do Amanhecer', o grande detetive Sherlock Holmes foi convocado para resolver um misterioso caso de assassinato. Ao investigar a cena e conversar com os envolvidos, Holmes obtém os seguintes fatos:</p>

<ul>
 <li>Anna foi assassinada com um instrumento semelhante a um taco.</li> 
 <li>A hora da morte é avaliada como tendo ocorrido quinta ou sexta-feira.</li> 
 <li>Não há indícios que indique mais de um assassino.</li> 
 <li>As indicações são de que o motivo do crime é dinheiro, ciúmes ou insanidade, e que o assassino deve ser encontrado entre as pessoas que compartilham o apartamento.</li> 
 <li>Sherlock Holmes estabeleceu que a arma do crime é um taco de beisebol que foi roubada do pobre Ben na quinta-feira em Odensee ou na quarta-feira em Copenhague; ou um martelo que foi roubado da caixa de ferramentas no apartamento de Anna quarta ou quinta-feira.</li> 
 <li>O assassino entrou no quarto de Anna usando uma chave que foi roubada de Anna na segunda-feira em Copenhague ou terça-feira em Odensee.</li> 
 <li>Uma quantia considerável de dinheiro também foi removida do quarto de Anna. A pobre amiga de Anna, Beth, tem uma cópia da chave.</li>
 <li>Anna tem um relacionamento com Ben, que por sua vez teve um relacionamento com a garota rica Karen.</li>
 <li>Além disso, Anna tinha um relacionamento com Peter, que é pobre, mas tinha um relacionamento com a garota rica Hannah, que por sua vez tinha um relacionamento com o igualmente rico Harry.
</li>
 <li>Harry estava romanticamente envolvido com a pobre garota Marie, que costumava se envolver com Adrian, que é rico, e costumava se envolver com a garota rica Karen.</li>
 <li>Peter estava em Copenhague na segunda e terça-feira, na quarta-feira de Odensee, em Copenhague, na quinta-feira, e depois retornara ao apartamento.</li>
 <li>Karen esteve em Odensee de segunda a quarta-feira, em Copenhague, na quinta-feira e no flat na sexta-feira.
</li>
 <li>Harry estivera no apartamento na segunda-feira, em Odensee, na terça-feira, e depois voltara para o apartamento.</li>
 <li>Beth passou a segunda-feira no apartamento, esteve em Odensee na terça e quarta-feira, em Copenhague, na quinta-feira, e voltou para casa na sexta-feira de manhã.</li>
 <li>Adrian estava em Copenhague na quarta-feira e em casa pelo resto da semana.</li>
 <li>Hannah estava em Odensee terça e quarta-feira, no apartamento segunda, quinta e sexta-feira.</li>
 <li>Ben esteve em Copenhague segunda e terça-feira, em Odensee na quarta-feira, em Copenhague novamente na quinta-feira, e em casa sexta-feira.</li>
 <li>Marie estava em Copenhague de terça a quinta-feira e no apartamento segunda e sexta-feira.</li>
 <li>Adrian e Marie têm visto um terapeuta por causa de distúrbios psicóticos que ocasionalmente se manifestam como comportamento violento desmotivado.
</li>
</ul>


# Objetivo
Acredita-se que para ter cometido o assassinato, o assassino precisou de um motivo, insanidade, pobreza ou inveja, e de ter acesso à chave do quarto no dia do crime e a arma do crime.


<h1>Passos para a descoberta</h1>
<h3>1º passo:</h3>
<p> A morte é avaliada como tendo ocorrido na quinta ou sexta-feira, portanto, é possível inferir que a pessoa que estava no apartamento nestes dias ou em um deles é o(a) assassino(a):</p>

```

 estava(X,quinta,apartamento);estava(X,sexta,apartamento)</li>
 X=peter,karen,harry,beth,adrian,hannah,ben,marie (estavam no apartamento na quinta ou sexta)

```
<p><b>X</b> foi a saída</p>

<h3>2º passo: </h3>
<p>Sherlock Holmes estabeleceu que a arma do crime poderia ser um taco de beisebol que foi roubado de Ben na quinta em Odensee ou na quarta em Copenhague. Para saber se isso é verdade, necessitou-se verificar a veracidade dessas afirmações:</p>

```
estava(ben,quinta,odensee);estava(ben,quarta,copenhague).

```
<p>A resposta fornecida foi false para ambas as consultas, ou seja, não foi um taco que matou anna, foi um martelo.</p>

<h3>3º passo:</h3>
<p>Sabendo que a arma que matou anna foi um martelo e que este tivera sido roubado do apartamento na quarta ou quinta-feira, é possível deduzir que dentre as pessoas que estavam lá nestes dias ou em um deles, uma delas roubou a arma. Para saber quem estava no AP no dia em que o martelo foi roubado, a seguinte consulta foi realizada:</p>

```
estava(X,quarta,apartamento);estava(X,quinta,apartamento).
X=harry,adrian,hannah

```
<p><b>X</b> foi a saída</p>

<h3>4º passo:</h3>
<p>O assassino entrou no quarto usando a chave que foi roubada de Anna na segunda em Copenhague ou na terça em Odensee. Assim, para saber quem estava nestes locais nos dias informados, a seguinte consulta foi realizada:</p>

```
estava(X,segunda,copenhague);estava(X,terca,odensee).
X=peter,ben,karen,harry,beth,hannah

```

<p><b>X</b> foi a saída</p>

<h3>5º passo:</h3>
<p>O assassino pode ter matado por motivo de ciúme. Com isso, para saber quem o pode ter feito, é necessário saber com quem anna se relacionou e, por sua vez, com quem estas pessoas se relacionaram. Assim, a seguinte consulta pode ser realizada:</p>

```
relacionamento(anna,X),relacionamento(P,X).
```

<p>Com isso, deduziu-se que anna se realacionou com peter e peter se relacionou com hannah </p>


<h3>Conclusão:</h3>
<p>Hannah foi a assassina que, motivada pelo ciúme, cometeu o crime utilizando um martelo :(</p> 

 
 
 
