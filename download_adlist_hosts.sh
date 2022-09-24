# Setting variables
DownloadDirPath="$(pwd)/bin/hosts/"
# File Names Variables
steven_black_hosts="steven_black_hosts.txt"
energized_ultimate_hosts="energized_ultimate_hosts.txt"
adaway_hosts="adaway_hosts.txt"
good_bye_ads_hosts="good_bye_ads_hosts.txt"
good_bye_ads_yt_hosts="good_bye_ads_yt_hosts.txt"
good_bye_ads_mi_hosts="good_bye_ads_mi_hosts.txt"
good_bye_ads_samsung_hosts="good_bye_ads_samsung_hosts.txt"
good_bye_ads_spotify_hosts="good_bye_ads_spotify_hosts.txt"
oisd_nl_hosts="oisd_nl_hosts.txt"
developerdan_amp_extended_hosts="developerdan_amp_extended_hosts.txt"
developerdan_ads_and_tracking_extended_hosts="developerdan_ads_and_tracking_extended_hosts.txt"
quantum_ads_hosts="quantum_ads_hosts.txt"

# Logic
mkdir -p ${DownloadDirPath}
echo "Set Download Directory as ${DownloadDirPath}"
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O ${DownloadDirPath}${steven_black_hosts}
wget https://block.energized.pro/ultimate/formats/hosts.txt -O ${DownloadDirPath}${energized_ultimate_hosts}
wget https://adaway.org/hosts.txt -O ${DownloadDirPath}${adaway_hosts}
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt -O ${DownloadDirPath}${good_bye_ads_hosts}
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-YouTube-AdBlock.txt -O ${DownloadDirPath}${good_bye_ads_yt_hosts}
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Xiaomi-Extension.txt -O ${DownloadDirPath}${good_bye_ads_mi_hosts}
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Samsung-AdBlock.txt -O ${DownloadDirPath}${good_bye_ads_samsung_hosts}
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Spotify-AdBlock.txt -O ${DownloadDirPath}${good_bye_ads_spotify_hosts}
wget https://dbl.oisd.nl/ -O ${DownloadDirPath}${oisd_nl_hosts}
wget https://www.github.developerdan.com/hosts/lists/amp-hosts-extended.txt -O ${DownloadDirPath}${developerdan_amp_extended_hosts}
wget https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt -O ${DownloadDirPath}${developerdan_ads_and_tracking_extended_hosts}
wget https://gitlab.com/Dev-i-l/the-quantum-ad-list/-/raw/master/For%20hosts%20file/The_Quantum_Ad-List.txt?inline=true -O ${DownloadDirPath}${quantum_ads_hosts}
echo "================================Dowload Complete================================"