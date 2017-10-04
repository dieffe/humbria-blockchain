pragma solidity ^0.4.4;

contract Humbria {

    struct Truffle {
        string tipo;
        int peso;
    }

    Truffle[] database;

    function addTruffle(string tipo, int peso) public {
        var newTruffle=Truffle(tipo,peso);
        database.push(newTruffle);
    }

    function getDb() constant returns (uint) {
        return database.length;
    }

    function getItem(uint quale) constant returns (string, int) {
        var item = database[quale];
        return (item.tipo, item.peso);
    }

}
