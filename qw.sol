

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
function add() payable public {
        require(now < endTime, "Fundraising is closed.");
        require(total < goal, "We reached a goal.");
        require(msg.value > 0, "You need to send some ether");
        donations[msg.sender] += msg.value; 
        total += msg.value;
    }
