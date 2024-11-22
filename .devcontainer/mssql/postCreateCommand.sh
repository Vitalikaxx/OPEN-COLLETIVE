CREATE DATABASE ApplicationDB;
GO

//*curl -sSL "https://mempool.space/api/v1/lightning/nodes/rankings"

{
  "topByCapacity": [
    {
      "publicKey": "033d8656219478701227199cbd6f670335c8d408a92ae88b962c49d4dc0e83e025",
      "alias": "bfx-lnd0",
      "capacity": 54361697486
    },
    {
      "publicKey": "03864ef025fde8fb587d989186ce6a4a186895ee44a926bfc370e2c366597a3f8f",
      "alias": "ACINQ",
      "capacity": 36010516297
    },
    ...
  ],
  "topByChannels": [
    {
      "publicKey": "03864ef025fde8fb587d989186ce6a4a186895ee44a926bfc370e2c366597a3f8f",
      "alias": "ACINQ",
      "channels": 2908
    },
    {
      "publicKey": "035e4ff418fc8b5554c5d9eea66396c227bd429a3251c8cbc711002ba215bfc226",
      "alias": "WalletOfSatoshi.com",
      "channels": 2771
    },
    ...
  ]
}