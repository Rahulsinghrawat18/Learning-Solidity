//SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage1{
    uint256 numberOfPersons;

        function store(uint256 _favoriteNumber) public virtual {
        numberOfPersons = _favoriteNumber;
    }

    struct Person{
        uint personNumber;
        string personName;
    }
    Person[] public P1set;

    function setter(uint256 _personNumber, string memory _personName) public  {

        Person memory newP1 = Person(_personNumber, _personName);
        P1set.push(newP1);

    }

    function getter(uint index) view  public returns(string memory){
        return P1set[index].personName;
    }
}