# Linux-cis-benchmark
Based on CIS RedHat Linux 7 Benchmark v3.0.0 - 06-25-2020

## How to run the audit
To run the audit, execute these steps

```bash
git clone https://github.com/massyn/centos-cis-benchmark
cd centos-cis-benchmark
sudo bash run-cis-benchmark.sh
```
The following tests must be executed manually.  These are dependent on your own site configuration, and needs a manual check.  By default, the audit scripts will fail these checks.

* 1.2.1 - Ensure package manager repositories are configured (Not Scored)
* 2.4   - Ensure nonessential services are removed or masked (Manual)
* 3.4.2 - Ensure /etc/hosts.allow is configured (Scored)
* 3.4.3 - Ensure /etc/hosts.deny is configured (Scored)
* 3.6.4 - Ensure outbound and established connections are configured (Not Scored)
* 5.5   - Ensure root login is restricted to system console (Not Scored)
* 3.5.1.7 Ensure unnecessary services and ports are not accepted (Manual)

## Remediation
Some remediation scripts are also included, however use them at your own risk.  While most of the scripts would correct the problem, they could cause outages on your system, so be sure to have a proper roll back plan before you execute the scripts.

## Acknowledgement
* https://github.com/radsec/CentOS7-CIS

##[Optional]
* 3.5.1.2 Ensure iptables-services package is not installed (Automated)
* 3.5.1.5 Ensure default zone is set (Automated)
* 3.5.1.6 Ensure network interfaces are assigned to appropriate zone (Manual)
* 3.5.2.1 Ensure nftables is installed (Automated)
* 3.5.2.3 Ensure iptables-services package is not installed (Automated)
* 3.5.2.4 Ensure iptables are flushed (Manual)
* 3.5.2.5 Ensure a table exists (Automated)
* 3.5.2.6 Ensure base chains exist (Automated)
* 3.5.2.10 Ensure nftables service is enabled (Automated)
* 3.5.2.11 Ensure nftables rules are permanent (Automated)
* 3.5.3.1.1 Ensure iptables packages are installed (Automated)
* 3.5.3.2.1 Ensure default deny firewall policy (Automated)
* 3.5.3.2.2 Ensure loopback traffic is configured (Automated)
* 3.5.3.2.3 Ensure outbound and established connections are configured (Manual)
* 3.5.3.2.4 Ensure firewall rules exist for all open ports (Manual)
* 3.5.3.2.5 Ensure iptables rules are saved (Automated)
* 3.5.3.2.6 Ensure iptables is enabled and running (Automated)
* 3.5.3.3.1 Ensure IPv6 default deny firewall policy (Automated)
* 3.5.3.3.2 Ensure IPv6 loopback traffic is configured (Automated)
* 3.5.3.3.3 Ensure IPv6 outbound and established connections are configured (Manual)
* 3.5.3.3.4 Ensure IPv6 firewall rules exist for all open ports (Manual)
* 3.5.3.3.5 Ensure ip6tables rules are saved (Automated)
* 3.5.3.3.6 Ensure ip6tables is enabled and running (Automated)
* 3.5.3.1.3 Ensure firewalld is not installed or stopped and masked (Automated)
* 3.5.2.2 Ensure firewalld is not installed or stopped and masked (Automated)
