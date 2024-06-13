#[allow(unused_const, unused_type_parameter, unused_field, unused_use)]
module sca::sca {

  use std::option;
  use std::type_name::{Self, TypeName};
  use sui::url;
  use sui::transfer;
  use sui::tx_context::{Self, TxContext};
  use sui::coin::{Self, Coin, CoinMetadata};
  use sui::event;
  use sui::math;
  use sui::object::{Self, UID};

  use x_supply::x_supply::{Self, XSupply, XSupplyCap};

  const EHardCapExceeded: u64 = 503;

  // ======== SCA Metadata ========
  const Decimals: u8 = 9u8;
  const HardCapDecimalAmount: u64 = 250_000_000;
  const Symbol: vector<u8> = b"SCA";
  const Name: vector<u8> = b"Scallop";
  const Description: vector<u8> = b"SCA is the native token of Scallop Protocol.";
  const IconUrl: vector<u8> = b"https://vrr7y7aent4hea3r444jrrsvgvgwsz6zi2r2vv2odhgfrgvvs6iq.arweave.net/rGP8fARs-HIDcec4mMZVNU1pZ9lGo6rXThnMWJq1l5E";

  struct SCA has drop {}

  struct ScaTreasury has key {
    id: UID,
    hard_cap: u64,
    x_supply: XSupply<SCA>,
  }

  struct ScaTreasuryCap has key, store {
    id: UID,
    x_supply_cap: XSupplyCap<SCA>,
  }

  // ======== events ========
  struct ScaMintedFromIssuer has copy, drop {
    issuer_type: TypeName,
    amount: u64,
  }

  struct ScaMintedWithCap has copy, drop {
    amount: u64,
  }

  struct ScaIssuerAdded has copy, drop {
    issuer_type: TypeName,
  }

  struct ScaIssuerRemoved has copy, drop {
    issuer_type: TypeName,
  }

  public fun mint<IssuerType: drop>(
    _issuer: IssuerType,
    _treasury: &mut ScaTreasury,
    _amount: u64,
    _ctx: &mut TxContext
  ): Coin<SCA> {
    abort 0
  }

  public fun mint_with_cap(
    _treasury_cap: &ScaTreasuryCap,
    _treasury: &mut ScaTreasury,
    _amount: u64,
    _ctx: &mut TxContext
  ): Coin<SCA> {
    abort 0
  }

  public fun add_issuer<IssuerType: drop>(
    _treasury_cap: &ScaTreasuryCap,
    _treasury: &mut ScaTreasury,
  ) {
    abort 0
  }

  public fun remove_issuer<IssuerType: drop>(
    _treasury_cap: &ScaTreasuryCap,
    _treasury: &mut ScaTreasury,
  ) {
    abort 0
  }

  public fun current_supply(_treasury: &ScaTreasury): u64 {
    abort 0
  }
}
