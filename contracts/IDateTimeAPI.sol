// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;
/*
  ______                     _       
 |  ____|                   (_)      
 | |__   _ __ ___   ___ _ __ _  ___  
 |  __| | '_ ` _ \ / _ \ '__| |/ _ \ 
 | |____| | | | | |  __/ |  | | (_) |
 |______|_| |_| |_|\___|_|  |_|\___/ 
                                     
  Copyright (c) 2022 EmerioLabs
  https://github.com/EmerioLabs/DateTimeBSC
*/

interface IDateTimeAPI {
  
  function getYear(uint timestamp) external pure returns (uint16);
  function getMonth(uint timestamp) external pure returns (uint8);
  function getDay(uint timestamp) external pure returns (uint8);
  function getHour(uint timestamp) external pure returns (uint8);
  function getMinute(uint timestamp) external pure returns (uint8);
  function getSecond(uint timestamp) external pure returns (uint8);
  function getWeekday(uint timestamp) external pure returns (uint8);

  function toTimestamp(uint16 year, uint8 month, uint8 day) external pure returns (uint timestamp);
  function toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour) external pure returns (uint timestamp);
  function toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour, uint8 minute) external pure returns (uint timestamp);
  function toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour, uint8 minute, uint8 second) external pure returns (uint timestamp);
}