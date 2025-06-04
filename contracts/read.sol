// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

contract MetaleReaderState {
    event Love(address book, address reader, bool state);
    mapping(address => mapping(address => bool)) public love;

    event Comment(address book, address reader, string comment);

    event Read(address book, address reader, uint256 state);
    mapping(address => mapping(address => uint256)) public read;

    event Sign(address reader);

    function loveBook(address book, address reader, bool state) external {
        love[book][reader] = state;
        emit Love(book, reader, state);
    }

    function sendComment(
        address book,
        address reader,
        string memory comment
    ) external {
        emit Comment(book, reader, comment);
    }

    function readBook(address book, address reader, uint256 state) external {
        read[book][reader] = state;
        emit Read(book, reader, state);
    }

    function sign(address reader) external {
        emit Sign(reader);
    }
}
