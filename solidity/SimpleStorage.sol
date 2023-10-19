// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage{

    uint256 private unsignedNum;
    int256 private signedNum;

    struct People {
        uint256 id;
        string nickname;
    }

    // People public  person = People({id: 234, nick_name: "otondo"});

    People[] public  people; //People array

    mapping(string => uint256) public nickNameToID; //mapping nick to string
    mapping(uint256 => string) public idToNickname;

    // working with array
    function addPerson(string memory _nickname, uint256 _id) public {
        people.push(People(_id, _nickname)); //add to people array
        // index mappers
        nickNameToID[_nickname] = _id;
        idToNickname[_id] = _nickname;
    }

    // function store_signedNum(int256 no) public {
    //     signedNum = no;
    // }

    // function store_unsignedNum(uint256 no) public {
    //     unsignedNum = no;
    // }

    // // view just returns 
    // function view_signedNum() public view returns(int256) {
    //     return signedNum;
    // }

    // // does some computation
    // function pure_signedNum(int256 no) public pure returns(int256) {
    //     no + no;
    //     return no;
    // }
}