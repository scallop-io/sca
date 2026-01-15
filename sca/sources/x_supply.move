//
// x_supply is an enhanced version of the supply module that allows for multiple issuers
// to manage the supply of a single token. This is useful for tokens to be issued by different
// entities, but still be able to be used interchangeably.
#[allow(unused_const, unused_type_parameter, unused_field, unused_use)]
module sca::x_supply {
  use std::type_name::{Self, TypeName};
  use sui::balance::{Self, Supply, Balance};
  use sui::object::{Self, UID, ID};
  use sui::tx_context::TxContext;
  use sui::types;
  use sui::vec_set::{Self, VecSet};

  const ERequireOTW: u64 = 401;
  const EUnauthorizedIssuer: u64 = 403;
  const EInvalidCap: u64 = 407;

  struct XSupply<phantom T> has store {
    supply: Supply<T>,
    issuers: VecSet<TypeName>,
    cap_id: ID,
  }

  struct XSupplyCap<phantom T> has key, store {
    id: UID
  }

  public fun create_x_supply<T: drop>(supply: Supply<T>, ctx: &mut TxContext): (XSupply<T>, XSupplyCap<T>) {
    abort 0
  }

  public fun increase_supply<T: drop, IssuerType: drop>(
    _issuer: IssuerType,
    x_supply: &mut XSupply<T>,
    amount: u64
  ): Balance<T> {
    abort 0
  }

  public fun decrease_supply<T: drop, IssuerType: drop>(
    _issuer: IssuerType,
    x_supply: &mut XSupply<T>,
    balance: Balance<T>
  ): u64 {
    abort 0
  }

  public fun increase_supply_with_cap<T: drop>(
    x_supply_cap: &XSupplyCap<T>,
    x_supply: &mut XSupply<T>,
    amount: u64
  ): Balance<T> {
    abort 0
  }

  public fun decrease_supply_with_cap<T: drop>(
    x_supply_cap: &XSupplyCap<T>,
    x_supply: &mut XSupply<T>,
    balance: Balance<T>
  ): u64 {
    abort 0
  }

  public fun supply_value<T: drop>(
    x_supply: &XSupply<T>
  ): u64 {
    abort 0
  }

  public fun is_authorized_issuer<T: drop, IssuerType: drop>(
    x_supply: &mut XSupply<T>
  ): bool {
    abort 0
  }

  public fun add_issuer<T: drop, IssuerType: drop>(
    x_supply_cap: &XSupplyCap<T>,
    x_supply: &mut XSupply<T>,
  ) {
    abort 0
  }

  public fun remove_issuer<T: drop, IssuerType: drop>(
    x_supply_cap: &XSupplyCap<T>,
    x_supply: &mut XSupply<T>,
  ) {
    abort 0
  }
}
