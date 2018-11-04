

contract raiseit{
    address owner;
    uint public goal;
    uint public closetime;
    uint public total = 0;
    
    mapping(address=>uint) donations;
    
    constructor(uint _goal, uint _finaltime) public {
        owner = msg.sender;
        goal = _goal;
        closetime = now + _finaltime;
    }
