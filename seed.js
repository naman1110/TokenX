const hdkey = require('ethereumjs-wallet/hdkey')
const bip39 = require('bip39');
const read=require("readline-sync");

let seed=read.question('YOUR SEED? ');


var buf = Buffer.from(seed, 'utf8');
;


const hdwallet = hdkey.fromMasterSeed(buf);


const bu=hdwallet._hdkey._privateKey;
const priv= bu.toString('hex');
const path = "m/44'/60'/0'/0/0";
const wallet = hdwallet.derivePath(path).getWallet();
const address = `0x${wallet.getAddress().toString('hex')}`;
console.log(`Private KEY: 0x${priv}`);

console.log(`Address: ${address}`);

//These are the commands :-
//npm i readline-sync
//npm i bip39
//npm i ethereumjs-wallet@0.6.5