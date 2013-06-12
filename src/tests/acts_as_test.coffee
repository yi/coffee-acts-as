require "../index"

class A

  this.toString = ->
    'ClassA'

  # after mixed in, use this method to detect who behaves like who (duck typing)
  this.isA = (obj) ->
    #console.log "@ is #{@}"
    return if obj? then Boolean(obj["__is#{@}"]) else false

  a: ->
    console.log "[A.a] called"
    "AAA"

class B
  b: ->
    console.log "[B.b] called"
    "BBB"

class C
  @acts_as A,B
  c: ->
    console.log "[C.c] called"
    "CCC"

i = new C
console.dir i
console.log "i.a():#{i.a()}"
console.log "i.b():#{i.b()}"
console.log "i.c():#{i.c()}"
console.log "i behave like A? : #{A.isA(i)}"

