#!/bin/sh

test_wrapper() {
	local ref=$1
	shift
	local msg=$1
	shift
	local score=$1
	shift
	local server=$1
	shift
	local workstation=$1

	RED='\033[0;31m'
	GREEN='\033[0;32m'
	YELLOW='\033[1;33m'
	NC='\033[0m'

	# -- count the totals for the baseline
	if [[ $score == 'Yes' ]]; then
		if [[ $server == 'Server1' ]]; then
			score_server1_total=$((score_server1_total+1))
		fi
		if [[ $server == 'Server1' || $server == 'Server2' ]]; then
			score_server2_total=$((score_server2_total+1))
		fi
		if [[ $workstation == 'Workstation1' ]]; then
			score_workstation1_total=$((score_workstation1_total+1))
		fi
		if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
			score_workstation2_total=$((score_workstation2_total+1))
		fi
	else
		if [[ $server == 'Server1' ]]; then
			noscore_server1_total=$((noscore_server1_total+1))
		fi
		if [[ $server == 'Server1' || $server == 'Server2' ]]; then
			noscore_server2_total=$((noscore_server2_total+1))
		fi
		if [[ $workstation == 'Workstation1' ]]; then
			noscore_workstation1_total=$((noscore_workstation1_total+1))
		fi
		if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
			noscore_workstation2_total=$((noscore_workstation2_total+1))
		fi
	fi

	if [[ -f ./test/${ref}.sh ]]; then
		bash ./test/${ref}.sh ${args} > /dev/null 2>/dev/null
		if [[ "$?" -eq 0 ]]; then
			echo -e "${GREEN}PASS${NC} - $ref - ${msg}"
			
			# -- count the success for the baseline
			if [[ $score == 'Yes' ]]; then
				if [[ $server == 'Server1' ]]; then
					score_server1_ok=$((score_server1_ok+1))
				fi
				if [[ $server == 'Server1' || $server == 'Server2' ]]; then
					score_server2_ok=$((score_server2_ok+1))
				fi
				if [[ $workstation == 'Workstation1' ]]; then
					score_workstation1_ok=$((score_workstation1_ok+1))
				fi
				if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
					score_workstation2_ok=$((score_workstation2_ok+1))
				fi
			else
				if [[ $server == 'Server1' ]]; then
					noscore_server1_ok=$((noscore_server1_ok+1))
				fi
				if [[ $server == 'Server1' || $server == 'Server2' ]]; then
					noscore_server2_ok=$((noscore_server2_ok+1))
				fi
				if [[ $workstation == 'Workstation1' ]]; then
					noscore_workstation1_ok=$((noscore_workstation1_ok+1))
				fi
				if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
					noscore_workstation2_ok=$((noscore_workstation2_ok+1))
				fi
			fi
		else
			echo -e "${RED}FAIL${NC} - $ref - ${msg}"
		fi
	else
		echo -e "${YELLOW}SKIP${NC} - $ref - ${msg}"
	fi
}

if [[ $(whoami) != "root" ]]; then
        echo "You must run this script as root"
        exit 1
fi

echo "CIS CentOS Linux 7 Benchmark (v3.0.0 - 06-25-2020)"
echo
echo hostname : `hostname`
echo time     : `date`
echo =================================================================================
test_wrapper 1.1.1.1 "Ensure mounting of cramfs filesystems is disabled (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.1.2 "Ensure mounting of squashfs filesystems is disabled (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.1.3 "Ensure mounting of udf filesystems is disabled (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.1.4 "Ensure mounting of FAT filesystems is limited (Manual)" Yes Server1 Workstation1
test_wrapper 1.1.2 "Ensure /tmp is configured (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.3 "Ensure noexec option set on /tmp partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.4 "Ensure nodev option set on /tmp partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.5 "Ensure nosuid option set on /tmp partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.6 "Ensure /dev/shm is configured (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.7 "Ensure noexec option set on /dev/shm partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.8 "Ensure nodev option set on /dev/shm partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.9 "Ensure nosuid option set on /dev/shm partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.10 "Ensure separate partition exists for /var (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.11 "Ensure separate partition exists for /var/tmp (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.12 "Ensure noexec option set on /var/tmp partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.13 "Ensure nodev option set on /var/tmp partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.14 "Ensure nosuid option set on /var/tmp partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.15 "Ensure separate partition exists for /var/log (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.16 "Ensure separate partition exists for /var/log/audit (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.17 "Ensure separate partition exists for /home (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.18 "Ensure nodev option set on /home partition (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.19 "Ensure noexec option set on removable media partitions (Manual)" No Server1 Workstation1
test_wrapper 1.1.20 "Ensure nodev option set on removable media partitions (Manual)" No Server1 Workstation1
test_wrapper 1.1.21 "Ensure nosuid option set on removable media partitions (Manual)" No Server1 Workstation1
test_wrapper 1.1.22 "Ensure sticky bit is set on all world-writable directories (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.23 "Disable Automounting (Automated)" Yes Server1 Workstation1
test_wrapper 1.1.24 "Disable USB Storage (Automated)" Yes Server1 Workstation1
test_wrapper 1.2.1 "Ensure GPG keys are configured (Manual)" Yes Server1 Workstation1
test_wrapper 1.2.2 "Ensure package manager repositories are configured (Manual)" Yes Server1 Workstation1
test_wrapper 1.2.3 "Ensure gpgcheck is globally activated (Automated)" Yes Server1 Workstation1
test_wrapper 1.4.1 "Ensure AIDE is installed (Automated)" Yes Server1 Workstation1
test_wrapper 1.4.2 "Ensure filesystem integrity is regularly checked (Automated)" Yes Server1 Workstation1
test_wrapper 1.5.1 "Ensure bootloader password is set (Automated)" Yes Server1 Workstation1
test_wrapper 1.5.2 "Ensure permissions on bootloader config are configured (Automated)" Yes Server1 Workstation1
test_wrapper 1.5.3 "Ensure authentication required for single user mode (Automated)" Yes Server1 Workstation1
test_wrapper 1.6.1 "Ensure core dumps are restricted (Automated)" Yes Server1 Workstation1
test_wrapper 1.6.2 "Ensure XD/NX support is enabled (Automated)" Yes Server1 Workstation1
test_wrapper 1.6.3 "Ensure address space layout randomization (ASLR) is enabled (Automated)" Yes Server1 Workstation1
test_wrapper 1.6.4 "Ensure prelink is disabled (Automated)" Yes Server1 Workstation1
test_wrapper 1.7.1.1 "Ensure SELinux is installed (Automated)" Yes Server1 Workstation1
test_wrapper 1.7.1.2 "Ensure SELinux is not disabled in bootloader configuration (Automated)" Yes Server1 Workstation1
test_wrapper 1.7.1.3 "Ensure SELinux policy is configured (Automated)" Yes Server1 Workstation1
test_wrapper 1.7.1.5 "Ensure the SELinux mode is enforcing (Automated)" Yes Server1 Workstation1
test_wrapper 1.7.1.6 "Ensure no unconfined services exist (Automated)" Yes Server1 Workstation1
test_wrapper 1.7.1.7 "Ensure SETroubleshoot is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 1.7.1.8 "Ensure the MCS Translation Service (mcstrans) is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 1.8.1.1 "Ensure message of the day is configured properly (Automated)" Yes Server1 Workstation1
test_wrapper 1.8.1.2 "Ensure local login warning banner is configured properly (Automated)" Yes Server1 Workstation1
test_wrapper 1.8.1.3 "Ensure remote login warning banner is configured properly (Automated)" Yes Server1 Workstation1
test_wrapper 1.8.1.4 "Ensure permissions on /etc/motd are configured (Automated)" Yes Server1 Workstation1
test_wrapper 1.8.1.5 "Ensure permissions on /etc/issue are configured (Automated)" Yes Server1 Workstation1
test_wrapper 1.8.1.6 "Ensure permissions on /etc/issue.net are configured (Automated)" Yes Server1 Workstation1
test_wrapper 1.9 "Ensure updates, patches, and additional security software are installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.1.1 "Ensure xinetd is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.1.1 "Ensure time synchronization is in use (Manual)" Yes Server1 Workstation1
test_wrapper 2.2.1.2 "Ensure chrony is configured (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.1.3 "Ensure ntp is configured (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.2 "Ensure X11 Server components are not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.3 "Ensure Avahi Server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.4 "Ensure CUPS is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.5 "Ensure DHCP Server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.6 "Ensure LDAP server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.7 "Ensure nfs-utils is not installed or the nfs-server service is masked (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.8 "Ensure rpcbind is not installed or the rpcbind services are masked (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.9 "Ensure DNS Server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.10 "Ensure FTP Server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.11 "Ensure HTTP server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.12 "Ensure IMAP and POP3 server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.13 "Ensure Samba is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.14 "Ensure HTTP Proxy Server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.15 "Ensure net-snmp is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.16 "Ensure mail transfer agent is configured for local-only mode (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.17 "Ensure rsync is not installed or the rsyncd service is masked (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.18 "Ensure NIS server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.2.19 "Ensure telnet-server is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.3.1 "Ensure NIS Client is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.3.2 "Ensure rsh client is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.3.3 "Ensure talk client is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.3.4 "Ensure telnet client is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 2.3.5 "Ensure LDAP client is not installed (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.1 "Audit system file permissions (Manual)" Yes Server1 Workstation1
test_wrapper 6.1.2 "Ensure permissions on /etc/passwd are configured (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.3 "Ensure permissions on /etc/shadow are configured (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.4 "Ensure permissions on /etc/group are configured (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.5 "Ensure permissions on /etc/gshadow are configured (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.6 "Ensure permissions on /etc/passwd- are configured (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.7 "Ensure permissions on /etc/shadow- are configured (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.8 "Ensure permissions on /etc/group- are configured (Automated)" Yes Server1 Workstation1 
test_wrapper 6.1.9 "Ensure permissions on /etc/gshadow- are configured (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.10 "Ensure no world writable files exist (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.11 "Ensure no unowned files or directories exist (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.12 "Ensure no ungrouped files or directories exist (Automated)" Yes Server1 Workstation1
test_wrapper 6.1.13 "Audit SUID executables (Manual)" Yes Server1 Workstation1
test_wrapper 6.1.14 "Audit SGID executables (Manual)" Yes Server1 Workstation1
test_wrapper 6.2.2 "Ensure /etc/shadow password fields are not empty (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.3 "Ensure root is the only UID 0 account (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.4 "Ensure root PATH Integrity (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.5 "Ensure all users' home directories exist (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.6 "Ensure users' home directories permissions are 750 or more restrictive (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.7 "Ensure users own their home directories (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.8 "Ensure users' dot files are not group or world writable (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.9 "Ensure no users have .forward files (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.10 "Ensure no users have .netrc files (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.11 "Ensure users' .netrc Files are not group or world accessible (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.12 "Ensure no users have .rhosts files (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.13 "Ensure all groups in /etc/passwd exist in /etc/group (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.14 "Ensure no duplicate UIDs exist (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.15 "Ensure no duplicate GIDs exist (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.16 "Ensure no duplicate user names exist (Automated)" Yes Server1 Workstation1
test_wrapper 6.2.17 "Ensure no duplicate group names exist (Automated)" Yes Server1 Workstation1


echo
echo Results
echo
echo "Scored (Server)"
echo ====================================
echo Server 1 = $score_server1_ok / $score_server1_total
echo Server 2 = $score_server2_ok / $score_server2_total

echo
echo "Scored (Workstation)"
echo ====================================
echo Workstation 1 = $score_workstation1_ok / $score_workstation1_total
echo Workstation 2 = $score_workstation2_ok / $score_workstation2_total

echo
echo "Not Scored (Server)"
echo ====================================
echo Server 1 = $noscore_server1_ok / $noscore_server1_total
echo Server 2 = $noscore_server2_ok / $noscore_server2_total
echo
echo "Not Scored (Workstation)"
echo ====================================
echo Workstation 1 = $noscore_workstation1_ok / $noscore_workstation1_total
echo Workstation 2 = $noscore_workstation2_ok / $noscore_workstation2_total
