#!/bin/bash
# Description: Return window ID of an application.
# Reference:
#   -http://superuser.com/questions/382616/detecting-currently-active-window

TITLE=$1

CMD_EXAMPLES="e.g.: $0 TITLE"

if [ $# -ne 1 ]; then
  echo "Error: Window title is required. Aborted!"
  echo "${CMD_EXAMPLES}"
  exit 1;
fi


case "${TITLE}" in
  
  ':active:'|':ACTIVE:')
    WIN_ID=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f2)
    ;;

  *)
    WIN_ID=$(wmctrl -l | grep "${TITLE}" | cut -d' ' -f1)
    ;;

  '')
    echo "Error: Window title can't be empty. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1
    ;;
esac

if [ -z "${WIN_ID}" ]; then
  echo "Error: Window "${TITLE}" not found. Aborted!"
  echo "${CMD_EXAMPLES}"
  exit 1;
fi

WIN_ID_COUNT=$(echo "${WIN_ID}" | wc -l)
if [ "${WIN_ID_COUNT}" -gt 1 ]; then
  echo "Error: Window '"${TITLE}"' returns many WIN_IDs:"
  echo "${WIN_ID}"
  echo "Aborted!"
  echo "${CMD_EXAMPLES}"
  exit 1;
fi

echo "${WIN_ID}"