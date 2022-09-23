DownloadDirPath="./downloads/"
echo "Set Download Directory as $(pwd)/${DownloadDirPath}"
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -o ${DownloadDirPath}steven_black_hosts.txt
wget https://block.energized.pro/ultimate/formats/hosts.txt -o ${DownloadDirPath}energized_ultimate_hosts.txt
wget https://adaway.org/hosts.txt -o ${DownloadDirPath}./adaway_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt -o ${DownloadDirPath}./good_bye_ads_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-YouTube-AdBlock.txt -o ${DownloadDirPath}./good_bye_ads_yt_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Xiaomi-Extension.txt -o ${DownloadDirPath}./good_bye_ads_mi_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Samsung-AdBlock.txt -o ${DownloadDirPath}./good_bye_ads_samsung_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Spotify-AdBlock.txt -o ${DownloadDirPath}./good_bye_ads_spotify_hosts.txt
wget https://dbl.oisd.nl/ -o ${DownloadDirPath}./oisd_nl_hosts.txt
wget https://www.github.developerdan.com/hosts/lists/amp-hosts-extended.txt -o ${DownloadDirPath}./developerdan_amp_extended_hosts.txt
wget https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt -o ${DownloadDirPath}./developerdan_ads_and_tracking_extended_hosts.txt
wget https://gitlab.com/Dev-i-l/the-quantum-ad-list/-/raw/master/For%20hosts%20file/The_Quantum_Ad-List.txt?inline=true -o ${DownloadDirPath}./quantum_ads_hosts.txt
echo "================================Dowload Complete================================"