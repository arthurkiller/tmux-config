sar -n DEV -r -u 1 1| grep Average | awk '{if (NR==2) printf("idle: %s%% | ",$8); else if (NR==4) printf("mem: %s%% | ", $4); else if (NR==8) printf("↑ %s ↓ %s\n", $6, $5);}'
