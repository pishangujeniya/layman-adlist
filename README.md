<h1>🚫Layman Adlist</h1>

[![license](https://img.shields.io/github/license/pishangujeniya/layman-adlist.svg)](https://github.com/pishangujeniya/layman-adlist/blob/main/LICENSE)
[![contributors](https://img.shields.io/github/contributors/pishangujeniya/layman-adlist.svg)](https://github.com/pishangujeniya/layman-adlist/graphs/contributors)
[![last commit](https://img.shields.io/github/last-commit/pishangujeniya/layman-adlist.svg)](https://github.com/pishangujeniya/layman-adlist/commits/main)
[![commit activity](https://img.shields.io/github/commit-activity/y/pishangujeniya/layman-adlist.svg)](https://github.com/pishangujeniya/layman-adlist/commits/main)

##  Features

- **unique domains:** Every domain in the hosts file is unique.
- **hosts based:** all the bad stuffs blocked with `0.0.0.0`
- **any device:** compatible with all devices, regardless of OS, blocking on network wide.
- **blockings:** strictly blocks `advertisements, malwares, spams, statistics & trackers` on both web browsing and applications.
- **speed you need:** reduces page loading time!
- **privacy:** with all these annoyances blocking, it also `increases` privacy.
- **saves expense:** greatly decreases data consumption `saving` expense.
- **clean:** no `extra` bullshit!

## What is a hosts file?

A hosts file, named `hosts` (with no file extension), is a plain-text file used
by all operating systems to map hostnames to IP addresses.

In most operating systems, the `hosts` file is preferential to `DNS`. Therefore
if a domain name is resolved by the `hosts` file, the request never leaves your
computer.

Having a smart `hosts` file goes a long way towards blocking malware, adware,
and other irritants.

For example, to nullify requests to some doubleclick.net servers, adding these
lines to your hosts file will do it:

```text
# block doubleClick's servers
0.0.0.0 ad.ae.doubleclick.net
0.0.0.0 ad.ar.doubleclick.net
0.0.0.0 ad.at.doubleclick.net
0.0.0.0 ad.au.doubleclick.net
0.0.0.0 ad.be.doubleclick.net
# etc...
```

## We recommend using `0.0.0.0` instead of `127.0.0.1`

Traditionally most host files use `127.0.0.1`, the _loopback address_, to
establish an IP connection to the local machine.

We prefer to use `0.0.0.0`, which is defined as a non-routable meta-address used
to designate an invalid, unknown, or non-applicable target.

Using `0.0.0.0` is empirically faster, possibly because there's no wait for a
timeout resolution. It also does not interfere with a web server that may be
running on the local PC.

## Sources
This repository is hosts file aggregator containing hosts scraped and unified into single host file by removing duplicates.
 1. [StevenBlack/hosts](https://github.com/StevenBlack/hosts)
 2. [EnergizedProtection](https://github.com/EnergizedProtection/block/tree/master/ultimate)
 3. [adaway](https://adaway.org/)
 4. [GoodbyeAds](https://github.com/jerryn70/GoodbyeAds)
 5. [GoodbyeAds YouTube Adblock](https://github.com/jerryn70/GoodbyeAds/tree/master/Extension)
 6. [GoodbyeAds Xiaomi AdBlock](https://github.com/jerryn70/GoodbyeAds/tree/master/Extension)
 7. [GoodbyeAds Samsung Adblock](https://github.com/jerryn70/GoodbyeAds/tree/master/Extension)
 8. [GoodbyeAds Spotify AdBlock](https://github.com/jerryn70/GoodbyeAds/tree/master/Extension)
 9. [oisd](https://oisd.nl/)
 10. [Developer Dan - AMP Hosts](https://www.github.developerdan.com/hosts/) 
 11. [Developer Dan - Ads and Tracking](https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt)
 12. [The Quantum Ad-List](https://gitlab.com/The_Quantum_Alpha/the-quantum-ad-list)

## How can I contribute hosts records?

If you discover sketchy domains you feel should be included here, Create an [issue](https://github.com/pishangujeniya/layman-adlist/issues) and we will add it for you.

## Support

Maintaining a quality blocking project takes a lot of time. We fight for our users. We also need to eat bread. This is where you can help.

This donation is just as a tip to us. Your support will help us keep the project running and provide you quality service.
- [PayPal](https://paypal.me/Pishang)
	

##  Disclaimer

Layman Adlist Hosts are basically `hosts` files to block access to domains. If you don't know how it works, then please try this at your own risk. I won't be responsible for any damage or loss. Never forget to make backups.
