#!/bin/sh
#
# Determines if there are unused files in the theme.
#

IGNORES="LICENSE.md Makefile README.md images pikalogy pikalogy.edc pikalogy.edj sounds unused.sh"
BASE="`pwd`"

dirs=". images sounds"
for d in $dirs; do
   cd "$d"
   files=`ls`
   for l in $files; do
      ignore=0

      for i in $IGNORES; do
         if [ x"$l" == x"$i" ]; then
            ignore=1
            break
         fi
      done

      if [ $ignore -eq 1 ]; then
         continue
      fi

      grep "$l" "$BASE/pikalogy.edc" 2>&1 > /dev/null
      if [ $? -ne 0 ]; then
         echo "UNUSED IN EDJE: $l"
      fi
   done
   cd - 2>&1 > /dev/null
done

