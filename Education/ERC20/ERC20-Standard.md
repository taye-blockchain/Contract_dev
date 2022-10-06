# ERC20 Standard
ERC20 at its simplest level is a standard interface for tokens. The EIP allows for the implementation of a standard API for tokens within smart contracts subsequently giving tokens basic functionality and the ability to be transferred and spent by another on-chain third-party. 

## Required Methods
---
### **name** - optional
Returns(string), the name of the token
```
function name() public view returns (string)
```
### **symbol** - optional
Returns(string), the symbol of the token
```
function symbol() public view returns (string)
```
### **decimals** - optional
Returns(uint8), the number of decimals the token divides into
```
function decimals() public view returns (uint8)
```
### **<span style="color:aqua">total Supply</span>**
Returns(uint256), the total supply of the token
```
function totalSupply() public view returns (uint256)
```
### **<span style="color:aqua">balanceOf</span>**
Returns(uint256), the balance of another account with address `_owner`
```
function balanceOf(address _owner) public view returns (uint256 balance)
```
### **<span style="color:aqua">transfer</span>**
Transfers `_value` amount of tokens to address `_to`, and MUST fire the `Transfer` event. The function SHOULD `throw` if the message caller’s account balance does not have enough tokens to spend.
```
function transfer(address _to, uint256 _value) public returns (bool success)
```
### **<span style="color:aqua">transferFrom</span>**
Transfers `_value amount` of tokens from address `_from` to address `_to`, and MUST fire the `Transfer` event.

The `transferFrom` method is used for a withdraw workflow, allowing contracts to transfer tokens on your behalf. This can be used for example to allow a contract to transfer tokens on your behalf and/or to charge fees in sub-currencies. The function SHOULD `throw` unless the `_from` account has deliberately authorized the sender of the message via some mechanism.
```
function transferFrom(address _from, address _to, uint256 _value) public returns (bool success)
```
### **<span style="color:aqua">approve</span>**
Allows `_spender` to withdraw from your account multiple times, up to the `_value` amount. If this function is called again it overwrites the current allowance with `_value`.
```
function approve(address _spender, uint256 _value) public returns (bool success)
```
### **<span style="color:aqua">allowance</span>**
Returns the amount which `_spender` is still allowed to withdraw from `_owner`.
```
function allowance(address _owner, address _spender) public view returns (uint256 remaining)
```
## Events
---
### **<span style="color:teal">Transfer</span>**
MUST trigger when tokens are transferred, including zero value transfers.

A token contract which creates new tokens SHOULD trigger a Transfer event with the `_from` address set to `0x0` when tokens are created.
```
event Transfer(address indexed _from, address indexed _to, uint256 _value)
```
### **<span style="color:teal">Approval</span>**
MUST trigger on any successful call to `approve(address _spender, uint256 _value)`.
```
event Approval(address indexed _owner, address indexed _spender, uint256 _value)
```
## Implementation
Example implementations are available at
- [OpenZeppelin implementation](https://github.com/OpenZeppelin/openzeppelin-solidity/blob/9b3710465583284b8c4c5d2245749246bb2e0094/contracts/token/ERC20/ERC20.sol)
- [ConsenSys implementation](https://github.com/ConsenSys/Tokens/blob/fdf687c69d998266a95f15216b1955a4965a0a6d/contracts/eip20/EIP20.sol)
