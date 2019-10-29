pragma solidity ^0.5.0;

contract Marketplace{
    string public name;
    uint  productCount = 0;
    mapping (uint => Product) public products;
    //Product -purchased, price, name, id 
    struct Product{
        uint id;
        string name;
        uint price;
        address payable owner;
        bool purchased;
        
    }
    
     //create product
     
     function createProduct(string memory _name, uint _price) public {
         //require name greater than zero
       require(bytes(_name).length >0);
         //require price greater than zero
         require(_price >0);
         //increase the price count
         productCount++;
         //update the products mapping with params
         products[productCount] = Product(productCount, _name ,_price, msg.sender,false);
     }
    //ProductPurchased
    
    
    
   
    
    
    
    //
    


}