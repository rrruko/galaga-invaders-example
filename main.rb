=begin
Reflecting on Principle
1) How are Ruby modules (and similar features from other langs)
   different from a class, in their purpose?

    A module cannot be instantiated.

    A module can be used as a namespace or a mixin. Using a module as a mixin 
    has an effect similar to inheriting from a class, because unfamiliar
    messages will be passed up to the module.

2) What is LSP?

    Liskov Substitution Principle: a subtype should always be usable where its
    supertype is expected.

3) Briefly describe how the template method pattern works.

    A default implementation of a method is defined in a superclass. Subclasses
    can define specialized implementations, but aren't required to explicitly
    call super.

=end
