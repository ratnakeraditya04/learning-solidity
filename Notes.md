## Notes to be revised frequently.

# 24_02_2023 - Re-entrancy Attack

An example about it. 


The attacker can call the "withdrawBalance" function in the target contract multiple times before it completes its execution by sending Ether to the attacker's contract. Here is an example of how the attack can be executed:

1. The attacker sends Ether to the target contract, calling the "withdrawBalance" function.
2. The "withdrawBalance" function sends the balance to the attacker's contract and sets the balance to zero.
3. Before the "withdrawBalance" function can complete its execution, the fallback function in the attacker's contract is called.
4. The fallback function calls the "withdrawBalance" function in the target contract again, even though the balance has already been withdrawn.
5. Steps 2-4 are repeated multiple times, draining the target contract's balance.
This is an example of a reentrancy attack, as the attacker is repeatedly calling a function in the target contract before it has completed its execution, exploiting the fact that the function can call another function in the same contract.


# Data Locations 
In Solidity, data locations refer to the location where data is stored in memory or storage. There are three data locations in Solidity: memory, storage, and calldata.

Memory: This is a temporary data location that is used to store data during function execution. When a function is called, Solidity creates a new section of memory to store the function's data. Once the function completes execution, the memory is freed up. For example, when you declare a variable inside a function in Solidity, it is stored in memory by default.

Storage: This is a permanent data location that is used to store data between function calls. Data stored in storage is persistent and can be accessed by any function within the contract. When you declare a state variable in Solidity, it is stored in storage by default.

Calldata: This is a special data location that contains the function arguments when a contract is called externally. It is read-only, meaning that you cannot modify the data stored in it. Calldata is used for passing arguments to functions and is generally used when calling functions from other contracts.

Understanding data locations in Solidity is important because it affects how variables are stored and accessed. For example, storing data in memory is faster than storing data in storage, but the data in memory is only available during function execution. In contrast, data stored in storage is available throughout the life of the contract, but it is more expensive to access and modify. Therefore, it is important to choose the appropriate data location for your variables based on your specific use case.