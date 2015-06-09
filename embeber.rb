require 'ffi'

module Hola
  extend FFI::Library
  ffi_lib 'target/release/libembeber.dylib'
  attach_function :procesar, [], :void
end

Hola.procesar

puts 'completado!'

