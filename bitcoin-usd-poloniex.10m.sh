#!/bin/bash

# <bitbar.title>Bitcoin USD price at Poloniex</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Istom1n</bitbar.author>
# <bitbar.author.github>Ivan-Istomin</bitbar.author.github>
# <bitbar.desc>Shows the last Bitcoin price (in USD) on the Poloniex exchange for Bitbar</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/monerohow/misc/master/mac-menu-bar-light-and-dark.jpg</bitbar.image>
# <bitbar.abouturl>https://github.com/Ivan-Istomin</bitbar.abouturl>
#


bitcoinIconBase64='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACWklEQVQ4T42TTUhUURTH/+e9GZ2ZRIIWfYDIQApBlkqLok9ESRMJAmtTkEJjZouoaBW0bFtEpkKrCEddFAhigSEuIqJIJEErTaJsUaTo5Lyvc068Z86HhHThwr3c+/+de8/5H8K64Tw6XC1KbRCvRsClEAaE5wx4LwyRroLE5HiuhNY2OtgUc5ZX7ql4rRABlFenD8isBarSE/m9dIWufk372gDgi+2U9YyED2kg2ggQQMci6ZV6HxIA7N7jDwFp9aPlAcIxGMWlkB8TANsBePU8mN3RjpmL5CSbqhXu27Xn+hcoXAQjXguYEZBZANq+D+7zy0B6IQtQBitXkZVs6CZoIheAcBFCVW0wy5oAJwUYJryXt8HTT6HqZfKi4Adk9zZ+BPHOPIAIzIpzCFWch91bCzNeh9DBm/DGbsGbGsgCxJ2mdF+jYyiH1wPCdXdBm+Pg8R5Q0Q6Yu8/CHbkOnhnKAERc598ACqPwzBD40yB08XMghmfBeXIa6iznA+xkwwdAy9ZeQFvKYZafghGvgzvcDvn+BuauZoT234A7fAn8ZTT7BeUpsvoau0i5LWOa4hIYJUcR8qOyBbWXQJu2Qq0FOAMnofZiTg7kPjn9JypV5F1eGYtLEdrTAvUB315BU/OQn5OAtZRXRgOyNzCSlazvJuVEnpEAGNsqIfOvAXb+2jprJIXXGWuf7Vi1cn9z1PZ+DZPqkf+xsrI3Go26DdQyZ2Wbqf9A1LZjd0BeYqNeEOHOaGH6mi/ONFNuezqPj1WKxwmBUwNGPPA9ubMGMELCPYUX3k/k3v8DYxPSmsIlIBoAAAAASUVORK5CYII='

btcLast=$(curl -s https://poloniex.com/public?command=returnTicker | tr '}' '\n' | grep USDT_BTC | tr -d '{}"' | tr ':,' '\n' | grep -A1 "last" | tail -1)
printf "$%.*f | image=%s\n" 2 "$btcLast" "$bitcoinIconBase64"

