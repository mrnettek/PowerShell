get-childitem c:\ -include *.tmp -recurse | foreach ($_) {remove-item $_.fullname}
  


