//SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;
import "./SimpleStorage1.sol";

contract SimpleFactory{

    SimpleStorage1[] public  SS1;
    
    function createContractSimpleStorage() public {
        SimpleStorage1 newContract = new SimpleStorage1();

        SS1.push(newContract); 
    }

    function SFset(uint256 index, uint256 contractNumber) public {
        SimpleStorage1 C1 = SS1[index];
        C1.store(contractNumber);
    }
}