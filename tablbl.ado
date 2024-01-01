*! version 0.1  31dec2023  Thomas Goldring, thomasgoldring@gmail.com
program tablbl
	version 8
	syntax varlist(min=1 max=2) [if] [in] [fweight aweight iweight] [, Mask(string asis) *]
  
	foreach v in `varlist' {
		local lblname : value label `v'
		if "`lblname'" != "" {
      tempvar V
      tempfile file1 file2
      tempname lblin lblout lbltmp
      
      clonevar `V' = `v'
      
      qui label save `lblname' using `"`file1'"'
      file open `lblin' using `"`file1'"', r
      file open `lblout' using `"`file2'"', w
      file read `lblin' line
      
      while r(eof) == 0 {
        local line: subinstr local line " `lblname' " " `lbltmp' "
        file write `lblout' `"`line'"' _n
        file read `lblin' line
      }
      file close `lblout'
      
      qui do `"`file2'"' 
      
			numlabel `lbltmp', add mask(`mask')
			label val `V' `lbltmp'
			local newlist `newlist' `V'
		}
		else local newlist `newlist' `v'
	}
  
	tab `newlist' `if' `in' [`weight' `exp'] , `options'
end
