val global2address : int M.t ref (* global var -> address *)
val global2type : Type.t M.t ref (* global var -> type*)
val record  : Syntax.t -> Syntax.t   (*The function of record global variables and malloc their addresses (return Unit)*)
val address : int ref