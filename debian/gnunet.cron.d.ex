#
# Regular cron jobs for the gnunet package
#
0 4	* * *	root	[ -x /usr/bin/gnunet_maintenance ] && /usr/bin/gnunet_maintenance
