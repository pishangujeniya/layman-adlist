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

# Merged Single Layman Adlists hosts file
layman_adlists_hosts="layman_adlists_hosts.txt"

# Logic
cd ${DownloadDirPath}
cat ${steven_black_hosts} ${energized_ultimate_hosts} ${adaway_hosts} ${good_bye_ads_hosts} ${good_bye_ads_yt_hosts} ${good_bye_ads_mi_hosts} ${good_bye_ads_samsung_hosts} ${good_bye_ads_spotify_hosts} ${oisd_nl_hosts} ${developerdan_amp_extended_hosts} ${developerdan_ads_and_tracking_extended_hosts} ${quantum_ads_hosts} > ./../${layman_adlists_hosts}