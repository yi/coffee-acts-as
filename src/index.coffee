
# refer to
# https://github.com/jashkenas/coffee-script/issues/452#issuecomment-3699651

# enable coffeescript class for javascript mixin
Function::acts_as = (argv...) ->
  #console.log "[Function::acts_as]: argv #{argv}"
  for cl in argv
    @::["__is#{cl}"] = true
    for key, value of cl::
      @::[key]=value
  @


# How To Use

#class A
  #a: ->
    #console.log "[AAA]"
    #"AAA"

#class B
  #b: ->
    #console.log "[BBB]"
    #"BBB"

#class C
  #@acts_as A,B
  #c: ->
    #console.log "[CCC]"
    #"CCC"

#i = new C
#console.dir i
#console.log "i.a():#{i.a()}"
#console.log "i.b():#{i.b()}"
#console.log "i.c():#{i.c()}"


