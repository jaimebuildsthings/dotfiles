# Place this in your Fish functions folder to make it available immediately
# e.g. ~/.config/fish/functions/envsource.fish
#
# Usage: envsource <path/to/env>

function envsource
  for line in (cat $argv | grep -v '^#' | grep -v '^$')
    # Remove 'export ' prefix if present (case insensitive)
    set clean_line (string replace -r '^export\s+' '' $line)
    
    # Skip empty lines after cleaning
    if test -z "$clean_line"
      continue
    end
    
    set item (string split -m 1 '=' $clean_line)
    
    # Only proceed if we have both key and value
    if test (count $item) -eq 2
      set key $item[1]
      set value $item[2]
      
      # Convert ${variable} notation to Fish's $variable notation
      set value (string replace -ra '\$\{([^}]+)\}' '$$$1' $value)
      
      set -gx $key $value
      echo "Exported key $key"
    end
  end
end