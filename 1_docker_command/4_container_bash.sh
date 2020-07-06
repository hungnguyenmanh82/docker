# ============================================ run container ==========================
# -id: show log on foreground screen
# /bin/sh  for  Alpine OS  => "exit" command to stop
Docker exec -it <containerId> /bin/sh

# /bin/bash for Ubuntu
Docker exec -it <containerId> /bin/sh
