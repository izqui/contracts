pragma solidity ^0.4.4;

contract Provident {
  // Insurer related
  function getNumberOfInsurancePlans() constant public returns (uint16);
  function getInsurancePlanPrice(uint16 plan) constant public returns (uint256);
  function getInsuredProfile(address insured) constant returns (int256 plan, int256 startDate, int256 finalDate);

  function buyInsurancePlan(uint16 plan) payable public;
  function createClaim(uint16 claimType, string evidence, address beneficiary) returns (int);

  // Investor related
  function getTokenAddress() constant returns (address); // ERC20 Compliant Token
  function getCurrentTokenOffer() constant returns (uint256 price, uint256 availableTokens);

  function buyTokens(address tokenHolder);
  function withdrawDividends();

  // Fallback function, buys tokens for sender.
  function ();
}