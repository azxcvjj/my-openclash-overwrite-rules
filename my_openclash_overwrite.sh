#!/bin/sh
. /usr/share/openclash/ruby.sh
. /usr/share/openclash/log.sh
. /lib/functions.sh

LOG_TIP "Start Running Custom Overwrite Scripts..."
LOGTIME=$(echo $(date "+%Y-%m-%d %H:%M:%S"))
LOG_FILE="/tmp/openclash.log"

CONFIG_FILE="$1"
ruby_merge_hash "$CONFIG_FILE" "['rule-providers']" "'MyAI'=>{'type'=>'http', 'behavior'=>'classical', 'format'=>'text', 'url'=>'https://raw.githubusercontent.com/azxcvjj/my-openclash-overwrite-rules/refs/heads/main/myai.list', 'path'=>'./rule_provider/myai.list', 'interval'=>86400}"

ruby_merge_hash "$CONFIG_FILE" "['rule-providers']" "'MyDIRECT'=>{'type'=>'http', 'behavior'=>'classical', 'format'=>'text', 'url'=>'https://raw.githubusercontent.com/azxcvjj/my-openclash-overwrite-rules/refs/heads/main/mydirect.list', 'path'=>'./rule_provider/mydirect.list', 'interval'=>86400}"

ruby_merge_hash "$CONFIG_FILE" "['rule-providers']" "'MyPROXY'=>{'type'=>'http', 'behavior'=>'classical', 'format'=>'text', 'url'=>'https://raw.githubusercontent.com/azxcvjj/my-openclash-overwrite-rules/refs/heads/main/myproxy.list', 'path'=>'./rule_provider/myproxy.list', 'interval'=>86400}"

ruby_merge_hash "$CONFIG_FILE" "['rule-providers']" "'MyEMBY'=>{'type'=>'http', 'behavior'=>'classical', 'format'=>'text', 'url'=>'https://raw.githubusercontent.com/azxcvjj/my-openclash-overwrite-rules/refs/heads/main/myemby.list', 'path'=>'./rule_provider/myemby.list', 'interval'=>86400}"






exit 0