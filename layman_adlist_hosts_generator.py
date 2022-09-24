import argparse
import os
from python_hosts import Hosts

parser = argparse.ArgumentParser()
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

# Getting Hosts File Paths
hosts_files_path = []
print("Generating using the following files in : ", hosts_dir_path)
for entry in os.scandir(hosts_dir_path):
    if entry.is_file():
        hosts_files_path.append(
            os.path.abspath(hosts_dir_path + os.path.sep + entry.name))
        print(os.path.abspath(hosts_dir_path + os.path.sep + entry.name))

# Reading Domains from all hosts files
print("Extracting Domains")
hosts_domains_list = []
for host_file_path in hosts_files_path:
    hosts = Hosts(path=host_file_path)
    for entry in hosts.entries:
        if entry.entry_type in ['ipv4', 'ipv6']:
            for domain in entry.names:
                hosts_domains_list.append(domain)
print("Extracted Domains Count : ", len(hosts_domains_list))

# Filtering only Unique domains
print("Listing Unique Domains")
hosts_domains_list = list(set(hosts_domains_list))
print("Unique Domains Count : ", len(hosts_domains_list))

# Generating Host file content
print("Generating Layman Adlists Hosts File Content")
hosts_lines = []
hosts_lines.append('# Layman Adlist')
hosts_lines.append('\n')
hosts_lines.append('# https://github.com/pishangujeniya/layman-adlist')
hosts_lines.append('\n')
hosts_lines.append(
    '# https://raw.githubusercontent.com/pishangujeniya/layman-adlist/main/layman_adlist_hosts.txt')
hosts_lines.append('\n')
hosts_lines.append('\n')

for i in hosts_domains_list:
    hosts_lines.append('\n127.0.0.1 '+i)
hosts_lines.append('\n')

# Writing Hosts file
print("Writing hosts file : ", output_hosts_file_absolute_path)
file_object = open(output_hosts_file_absolute_path, 'w')
file_object.writelines(hosts_lines)
file_object.close()
