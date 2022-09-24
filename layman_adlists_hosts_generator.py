import argparse
import os
from python_hosts import Hosts, HostsEntry

# Initialize parser
parser = argparse.ArgumentParser()

# Adding optional argument
parser.add_argument("-d",
                    "--dir",
                    required=True,
                    help="Directory containing only hosts files")
parser.add_argument("-o",
                    "--out",
                    required=True,
                    help="Output hosts file absolute path")

# Read arguments from command line
args = parser.parse_args()

# setting local variables
hosts_dir_path = args.dir
output_hosts_file_absolute_path = args.out

hosts_files_path = []
print("Generating using the following files in : ", hosts_dir_path)
for entry in os.scandir(hosts_dir_path):
    if entry.is_file():
        hosts_files_path.append(
            os.path.abspath(hosts_dir_path + os.path.sep + entry.name))
        print(os.path.abspath(hosts_dir_path + os.path.sep + entry.name))

print("Extracting Domains")
hosts_domains_list = []
for host_file_path in hosts_files_path:
    hosts = Hosts(path=host_file_path)
    for entry in hosts.entries:
        if entry.entry_type in ['ipv4', 'ipv6']:
            for domain in entry.names:
                hosts_domains_list.append(domain)
print("Extracted Domains Count : ", len(hosts_domains_list))

print("Listing Unique Domains")
hosts_domains_list = list(set(hosts_domains_list))
print("Unique Domains Count : ", len(hosts_domains_list))

print("Generating Layman Adlists Hosts File at : ",
      output_hosts_file_absolute_path)
layman_adlists_hosts = Hosts(output_hosts_file_absolute_path)

# Generating Hosts File Comment
layman_adlists_hosts.add(
    [HostsEntry(entry_type='comment', comment='Layman Adlists')])
layman_adlists_hosts.add([
    HostsEntry(entry_type='comment',
               comment='https://github.com/pishangujeniya/layman-adlist')
])
layman_adlists_hosts.add([
    HostsEntry(
        entry_type='comment',
        comment=
        'https://raw.githubusercontent.com/pishangujeniya/layman-adlist/master/layman_adlist_hosts.txt'
    )
])
layman_adlists_hosts.add(
    [HostsEntry(entry_type='comment', comment='License: MIT License')])

for domain in hosts_domains_list:
    new_entry = HostsEntry(entry_type='ipv4',
                           address='127.0.0.1',
                           names=[domain])
    layman_adlists_hosts.add([new_entry])
layman_adlists_hosts.write()