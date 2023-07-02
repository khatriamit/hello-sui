module first_demo::example{
  use sui::object::{UID, Self};
  use sui::tx_context::TxContext;
  use sui::transfer;

  struct S has key{
    id:UID,
    v:u64,
    b:bool,
    t:T
  }

  struct T has store{
    x:u64
  }

  fun init(ctx: &mut TxContext){
    transfer::share_object(
      S{id: object::new(ctx), v:7, b:false, t:T{x:5}}
    )
  }
}
