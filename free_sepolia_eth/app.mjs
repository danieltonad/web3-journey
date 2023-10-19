import { TatumSDK, Network, Ethereum } from '@tatumio/tatum'

const tatum = await TatumSDK.init<Ethereum>({
  network: Network.ETHEREUM_SEPOLIA,
})

testnet_address = "0xD11886Bb9B9405C89A96c63a66486dBEF5Be25dd"

const res = await tatum.faucet.fund(testnet_address)

if (res.data) {
  console.log(res.data)
} else {
  console.error(res.error)
}

