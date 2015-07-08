
cat install-size-history.txt | grep -vE 'zclean|end|Used = 0K' | \
  sed 's/^.*repository\///' | sed 's/sh: .* Used = /sh,/' | sed 's/K.$//' | sed 's/.*: install/install/' | sed 's/\.\/inst-/inst-/' > list-script-size.txt

sort -t"," -k2n list-script-size.txt | uniq

# Ignore 'zclean|end|Used = 0K'
# Add separate(,) after script name.
# Add separate(,) after date. Don't retain time.
# Add separate(,) total size.
# Remove K. at the end.
# Clean up scriptname: Remove up to repository/
# Clean up scriptname: Remove up : install.sh/
cat install-size-history.txt | grep -vE 'zclean|end|Used = 0K' | \
  sed 's/\.sh: /.sh, /' | \
  sed 's/_........: CLDS: . Total size = /, /' | \
  sed 's/K. Space Used = /, /' | \
  sed 's/K.$//' | \
  sed 's/.*repository\///' | \
  sed 's/.*: install.sh/install.sh/' > list-script-size-clean.txt
  
