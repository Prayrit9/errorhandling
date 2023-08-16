// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    function requireTest(uint256 x, uint256 y) external pure returns (uint256) {
        require(x > y, "x must be greater than y");
        uint256 result = x - y;
        return result;
    }
    
    function assertTest(uint256 x, uint256 y) external pure returns (uint256) {
        assert(x > y);
        uint256 result = x - y;
        return result;
    }
    
    function revertTest(uint256 x, uint256 y) external pure returns (uint256) {
        if (x <= y) {
            revert("x must be greater than y");
        }
        uint256 result = x - y;
        return result;
    }
}
