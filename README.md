```
  ______                     _       
 |  ____|                   (_)      
 | |__   _ __ ___   ___ _ __ _  ___  
 |  __| | '_ ` _ \ / _ \ '__| |/ _ \ 
 | |____| | | | | |  __/ |  | | (_) |
 |______|_| |_| |_|\___|_|  |_|\___/ 
                                     
  Copyright (c) 2022 EmerioLabs
```
# DateTimeBSC
 Date Time API for Binance Smart Chain 

Contract Deployments: 

- Mainnet: [`0x4b037163eb26dc235f3b42928ea33af0992d4de7`](https://bscscan.com/address/0x4b037163eb26dc235f3b42928ea33af0992d4de7)
- Testnet: [`0x4b037163eb26dc235f3b42928ea33af0992d4de7`](https://testnet.bscscan.com/address/0x4b037163eb26Dc235F3b42928eA33af0992D4de7)

### DateTime struct

The following **struct** is used to represent date-time object.

```
struct DateTimeObject {
        uint16 year;
        uint8 month;
        uint8 day;
        uint8 hour;
        uint8 minute;
        uint8 second;
        uint8 weekday;
        bool isLeapYear;
}
```


### API

* `isLeapYear(uint16 year) public pure returns (bool)`

Given an integer year value, returns whether it is a leap year.


* `parseTimestamp(uint timestamp) public pure returns (DateTimeObject d)`

Given a unix timestamp, returns the `DateTimeObject` representation of it.


* `getYear(uint timestamp) public pure returns (uint16)`

Given a unix timestamp, returns the year.


* `getMonth(uint timestamp) public pure returns (uint16)`

Given a unix timestamp, returns the month number.


* `getDay(uint timestamp) public pure returns (uint16)`

Given a unix timestamp, returns the day number.


* `getHour(uint timestamp) public pure returns (uint16)`

Given a unix timestamp, returns the hours.


* `getMinute(uint timestamp) public pure returns (uint16)`

Given a unix timestamp, returns the minutes.


* `getSecond(uint timestamp) public pure returns (uint16)`

Given a unix timestamp, returns the seconds.


* `getWeekday(uint timestamp) public pure returns (uint8)`

Given a unix timestamp, returns the weeekday number.


* `toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour, uint8 minute, uint8 second) public pure returns (uint timestamp)`
* `toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour, uint8 minute) public pure returns (uint timestamp)`
* `toTimestamp(uint16 year, uint8 month, uint8 day, uint8 hour) public pure returns (uint timestamp)`
* `toTimestamp(uint16 year, uint8 month, uint8 day) public pure returns (uint timestamp)`

Returns the unix timestamp representation for the given date and time values.
