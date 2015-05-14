#########################################################
# All export variables and functions
# NOTE: Exporting a variable doesn't make it available to parent processes. Use source.
# Reference: http://stackoverflow.com/a/1158231
#########################################################

# Prefix this variable in echo to log echoed string. CLDS stands for Custom Live Debian System.
export GV_LOG="CLDS:"


# Log total size
GF_LOG_TOTAL_SIZE ()
{
  echo "${GV_LOG} * Total size = $(du -s -BK --exclude=/proc / | head -n 1 | cut -f1)."
}

export -f GF_LOG_TOTAL_SIZE

