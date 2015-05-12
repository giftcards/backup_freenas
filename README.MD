## Synopsis  
  
Simple script to take a list of freenas servers and make backup copies of their config database.  
  
## Example  
  
Intended to be run once a day on a cronjob. Communicates over ssh.  
  
## Motivation  
  
Was created after spending significant time rebuilding a complicated storage array.  
  
## Installation  
  
Script is intended to be run once a day on a cron job.  
Copy backup_freenas.conf to /etc/ and modify for your environment.  
This script requires a user with access to /data/*db* on your freenas servers and who has a public/private keypair.  
  
## Contributors  
  
Ryan Munz for Giftcards.com - May 2015  
