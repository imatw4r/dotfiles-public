#!/usr/bin/env python3

import requests
import os

response = requests.get('https://api.gemini.com/v1/pricefeed')
jsonResponse = response.json()

labels = []

cryptos = {
  "BTCUSD": "",
  "ETHUSD": "ﲹ",
}
count = 0
for i in jsonResponse:
    pair = i["pair"]
    if count == len(cryptos):
      text = ' '.join(labels)
      print(text)
      cmd = f"sketchybar -m --set crypto label={text!r}"
      os.system(cmd)
      break
    
    if pair in cryptos:
        count += 1
        percentChange = str(round((float(i["percentChange24h"]) * 100), 2))
        price = i["price"]
        text = f"{cryptos[pair]} ${price} ({percentChange}%)"
        labels.append(text)