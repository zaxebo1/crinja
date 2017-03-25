module Crinja
  class Filter::Dictsort < Filter
    name "dictsort"

    arguments({
      :case_sensitive => false,
      :by             => "key",
    })

    def call(target : Any, arguments : Callable::Arguments) : Type
      hash = target.as_h
      array = hash.to_a

      # case_sensitive = arguments[:case_sensitive].truthy?
      # if arguments[:by].to_s == "value"
      #  hash.to_a.sort do |(ak, av), (bk, bv)|
      #    Any.new(av) <=> Any.new(bv)
      #  end
      # else
      #  hash.to_a.sort do |(ak, av), (bk, kv)|
      #    Any.new(ak) <=> Any.new(bk)
      #  end
      # end.as(Array(Tuple(Crinja::Type, Crinja::Type))).map(&.to_a.as(Crinja::Type))
      # Bindings.cast_list(array)
      [] of Type
    end
  end
end
