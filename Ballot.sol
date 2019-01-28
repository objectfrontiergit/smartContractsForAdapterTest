pragma solidity 0.4.21;

contract Ballot{


    mapping (int => string) private votesForFoo;
    mapping (int => string) private votesForBar;
    int private fooCounter = 0;
    int private barCounter = 0;

    function voteForFoo(string _voterDetails) public {

       fooCounter++;
       votesForFoo[fooCounter] = _voterDetails;
    }

    function voteForBar(string _voterDetails) public {

       barCounter++;
       votesForBar[barCounter] = _voterDetails;
    }

     function voterDetailsOfFoo(int index) public view  returns(string){

        return votesForFoo[index];
    }

    function voterDetailsOfBar(int index) public view  returns(string){

        return votesForBar[index];
    }

    function getVoteCounts() public view  returns(int,int){

        return (fooCounter,barCounter);

    }

}
