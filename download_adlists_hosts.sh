DownloadDirPath="$(pwd)/downloads/"
mkdir ${DownloadDirPath}
echo "Set Download Directory as ${DownloadDirPath}"
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O ${DownloadDirPath}steven_black_hosts.txt
wget https://block.energized.pro/ultimate/formats/hosts.txt -O ${DownloadDirPath}energized_ultimate_hosts.txt
wget https://adaway.org/hosts.txt -O ${DownloadDirPath}adaway_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt -O ${DownloadDirPath}good_bye_ads_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-YouTube-AdBlock.txt -O ${DownloadDirPath}good_bye_ads_yt_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Xiaomi-Extension.txt -O ${DownloadDirPath}good_bye_ads_mi_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Samsung-AdBlock.txt -O ${DownloadDirPath}good_bye_ads_samsung_hosts.txt
wget https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Spotify-AdBlock.txt -O ${DownloadDirPath}good_bye_ads_spotify_hosts.txt
wget https://dbl.oisd.nl/ -O ${DownloadDirPath}oisd_nl_hosts.txt
wget https://www.github.developerdan.com/hosts/lists/amp-hosts-extended.txt -O ${DownloadDirPath}developerdan_amp_extended_hosts.txt
wget https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt -O ${DownloadDirPath}developerdan_ads_and_tracking_extended_hosts.txt
wget https://gitlab.com/Dev-i-l/the-quantum-ad-list/-/raw/master/For%20hosts%20file/The_Quantum_Ad-List.txt?inline=true -O ${DownloadDirPath}quantum_ads_hosts.txt
echo "================================Dowload Complete================================"