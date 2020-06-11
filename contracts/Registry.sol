pragma solidity ^0.6.4;
contract Registry {
  mapping(address => uint) public registrantIndex;
  address[] public registrants;
  event newRegistrant(address, uint, address);
  // Add any address provided as a parameter to the registry.
  function addRegistrant(address _registrant) public {
    if(registrantIndex[_registrant] != 0){
      revert();
    }
    require(registrants.length < 3126,"list is full");
    registrants.push(_registrant);
    registrantIndex[_registrant] = registrants.length - 1;
    emit newRegistrant(_registrant, registrantIndex[_registrant], registrants[registrants.length - 1]);
  }

  function getIndexByAddress(address _registrant) public returns (uint) {
    return registrantIndex[_registrant];
  }

  function getAddressByIndex(uint _index) public returns (address) {
    return registrants[_index];
  }
}
