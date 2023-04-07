# VotingBook
 Sistema de votación por medio de un libro para decidir entre 5 personas

## Tabla de contenidos
- [VotingBook](#votingbook)
  * [Caracteristicas](#caracteristicas)
  * [Descargar e instalar](#descargar-e-instalar)
  * [Como usar el datapack](#como-usar-el-datapack)
  * [Personalización](#personalizacion)
    + [already.mcfunction](#alreadymcfunction)
    + [p1.mcfunction](#p1mcfunction)
    + [p2.mcfunction](#p2mcfunction)
    + [p3.mcfunction](#p3mcfunction)
    + [p4.mcfunction](#p4mcfunction)
    + [p5.mcfunction](#p5mcfunction)
    + [winner.mcfunction](#winnermcfunction)
    + [draw.mcfunction](#drawmcfunction)
    + [draw_action.mcfunction](#draw-actionmcfunction)
  * [Notas](#notas)

## Caracteristicas
- Totalmente configurable a tus necesidades con unos pocos comandos.
- Al ser vanilla no se necesita tener conocimientos avanzados en programación para modificarlo a tu gusto.
- Funciones listas para que lo puedas personalizar y dar tu toque único.

## Descargar e instalar
Primero necesitaremos [***descargar***](https://github.com/Julioxidop/VotingBook/releases/tag/1.0 "aquí")  el datapack, tenemos que elegir cual se adapta a nuestras necesidades:
- **p22voting1w** Es para cuando solo necesitamos tener 1 ganador
- **p22voting2w** Es para cuando necesitamos tener 2 ganadores

Una vez seleccionado y descargado, lo descomprimimos en la carpeta **datapacks** de nuestro mundo y ejercutaremos el comando **/reload** para que esté listo para funcionar.

## Como usar el datapack

- Para usarlo primero hay que añadir las tags a los 5 personas que saldrán en las votaciones:

```
/tag add <JUGADOR1> vote1
/tag add <JUGADOR2> vote2
/tag add <JUGADOR3> vote3
/tag add <JUGADOR4> vote4
/tag add <JUGADOR5> vote5
```
Donde cambiaremos `<JUGADORX>` por el usuario o selector de la persona o entidad que queramos que sea votada.

- Después hay que ejecutar este comando sobre las personas que queremos que voten, para que les de el libro y **los deje votar**:
```
/execute as <JUGADORES> run function voting:_start
```
Donde cambiaremos `<JUGADORES>` por el usuario o selector de usuarios que queramos que puedan votar.

**NOTA: Es importante que sea en este orden para que en el libro se vean los nombres de los jugadores!**

- Ahora pues solo basta dejar que voten, y cuando sea el momento usar la siguiente función para seleccionar al ganador o ganadores:
```
/function voting:_winner
```

- Si queremos resetear las votaciones y quitar el libro a las personas usamos la siguiente función
```
/function voting:_reset
```

- Si queremos quitar las personas que se están votando, resetear las votaciones y quitar el libro a las personas usamos la siguiente función
```
/function voting:_clean
```


## Personalización
Este datapack está planeada para la personalización de eventos específicos, las funciones para ajustar estan en `p22votingXw/data/voting/functions/modify/` aqui tenemos 9 funciones listas para 9 eventos diferentes.
### already.mcfunction
Esta función se ejecuta sobre los jugadores cuando intentan votar por alguien que ya han votado.
### p1.mcfunction
Esta función se ejecuta sobre un jugador cuando vota por el participante 1.
### p2.mcfunction
Esta función se ejecuta sobre un jugador cuando vota por el participante 2.
### p3.mcfunction
Esta función se ejecuta sobre un jugador cuando vota por el participante 3.
### p4.mcfunction
Esta función se ejecuta sobre un jugador cuando vota por el participante 4.
### p5.mcfunction
Esta función se ejecuta sobre un jugador cuando vota por el participante 5.
### winner.mcfunction
Esta función se ejecuta sobre el jugador o jugadores que ganaron las votaciones.
### draw.mcfunction
Esta función se ejecuta en general cuando hay un empate.
### draw_action.mcfunction
Esta función se ejecuta sobre los jugadores que ganaron las votaciones cuando hay un empate.

Sientete libre de modificar las demás funciones si necesitas mayor personalización.
## Notas
- Los jugadores pueden cambiar su voto en cualquier momento.
- En caso adverso que se presente la situación que no deje votar a alguien, debemos de ejecutar el siguiente comando:
```
/scoreboard players enable <JUGADOR> .trigger
```
- Si encuentras algun fallo, tienes alguna duda o quieres contactar conmigo, mi user de discord es: **hugme#8792**
