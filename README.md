#acts-as

a simple class-level mixin module for Node.JS, which provides a handy "composition over inheritance" for writting complex programs


## How To Use

```coffee
require "acts_as"

class A
  a: ->
    console.log "[AAA]" #"AAA"

class B
  b: ->
    console.log "[BBB]" #"BBB"

class C
  @acts_as A,B
  c: ->
    console.log "[CCC]" #"CCC"

i = new C
console.dir i
console.log "i.a():#{i.a()}"
console.log "i.b():#{i.b()}"
console.log "i.c():#{i.c()}"
```

# Reference
This little module is inspired by:
1. discussion on coffee-script mixin:  https://github.com/jashkenas/coffee-script/issues/452#issuecomment-3699651
2. acts_as in the Ruby's way: http://yehudakatz.com/2009/11/12/better-ruby-idioms/



