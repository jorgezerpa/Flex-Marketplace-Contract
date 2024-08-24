use core::option::OptionTrait;
use core::traits::TryInto;
use core::array::ArrayTrait;
use core::serde::Serde;
use core::debug::PrintTrait;
use core::ResultTrait;
use snforge_std::{ declare, ContractClassTrait, BlockId, ContractClass };
use openedition::interfaces::IFlexDrop::{
    IFlexDropDispatcher
};

use starknet::{ContractAddress, get_caller_address, get_contract_address, contract_address_const};


fn deploy_contract(name:ByteArray) -> ContractAddress {
    let contract = declare(name).unwrap();
    let owner: ContractAddress = contract_address_const::<'owner'>();
    
    let mut args: Array<felt252> = array![];

    args.append(owner.into());

    let (contract_address,_) = contract.deploy(@args).unwrap();
    contract_address
}

#[test]
fn test_deploy() {
    let contract_address = deploy_contract("ERC721OpenEdition");
    print!("Contract address {:?}", contract_address);
}
