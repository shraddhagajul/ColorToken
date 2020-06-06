pragma solidity >=0.5.0;

// IMPORT ERC721Full token class
import 'openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol';

// Inherit the ERC721Full
contract Color is ERC721Full{
	constructor() ERC721Full("Color","COLOR") public{

	}
  string[] public colors;
  mapping(string => bool) _colorExists;


  function mint(string memory _color) public {

      // maintain list of colors and mint Color token
      require(!_colorExists[_color]);
      uint _id = colors.push(_color);
      _mint(msg.sender, _id);
      _colorExists[_color] = true;
  }

}
