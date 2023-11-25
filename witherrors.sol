// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenName = "token1";
    string public tokenAbbrv = "tkn1";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint (address _address, uint _value) public {
        require (_value > 10, "should be greater than 10");
        if (_value > 20) {
            revert("should be less than 20");
        }
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn (address _address, uint _value) public {
        if (balances[_address] >= _value) {
            assert(_value == 5);
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
