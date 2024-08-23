use snforge_std::{ declare, ContractClassTrait };
use openedition::interfaces::IFlexDrop::{
    IFlexDropDispatcher
};

use starknet::{ContractAddress, get_caller_address, get_contract_address, contract_address_const};


fn deploy_erc721_open_edition_contract() {
    let contract = declare("ERC721OpenEdition").unwrap();
    let (contract_address, _) = contract.deploy(@array![]).unwrap();

    print!("contract address: {:?}", contract_address);
}


// fn deploy_erc721_open_edition_contract() -> (
//     IFlexDropDispatcher, ContractAddress
// ) {
//     let contract = declare("ERC721OpenEdition").unwrap();
//     let owner: ContractAddress = contract_address_const::<'owner'>();

//     let mut constructor_calldata = array![owner.into()];

//     let contract_address = contract.deploy(@constructor_calldata).unwrap();

//     let dispatcher = IFlexDropDispatcher { contract_address };

//     (dispatcher, contract_address)
// }



// #[test]
// fn test_constructor() {
//     let (erc721_token, erc721_token_address) = deploy_erc721_open_edition_contract();

//     println!("Running this!");
//     // assert_eq!(pepperoni_count, array![10]);
//     // assert_eq!(pineapple_count, array![10]);
//     // assert_eq!(pizza_factory.get_owner(), owner());
// }



