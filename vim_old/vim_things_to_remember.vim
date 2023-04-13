" This is a list of cool functions I've found along the way that I wanted to
" remember
" get count of listed buffers
"   len(map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr'))
"     getbufinfo() - returns a ton of info on all buffers
"     copy() - creates a copy. For lists and dictionaries, it creats a copy so
"     if the origianl list or dictionary is changed, the copy will remain
"     unchanged
"     filter() - filter a list or dictionary (basically select() in ruby. If you
"     want to select only the info of certain buffers you can filter out the
"     buffer info yo udon't want
"       v:val - the item being filtered
"       v:val.listed - when v:val is the information for a single buffer, then v:val.listed is a boolean that returns 0
"         if not listed and 1 if listed
"       listed - listed is one of many attributes of a buffer. I cannot remember exactly what it means but basically I
"        think listed buffers are the buffers that are not, for lack of better term, hidden (an example of a hidden buffer,
"        and I know there is a better term than hidden), is nerd tree. You would never want to open nerd tree as you are 
"        scrolling through your buffers. You only open nerd tree with a command. Not
"        by scrolling. However, even though nerd tree works different, it is still a
"        buffer. That's why it can be important to want to know how many listed
"        buffers there are as opposed to all buffers
"     map - exact same as map in ruby. As used above, it returns a list of only
"     the buffer number. So at this point, we have a list of all buffer numbers
"     that are listed
"     len - returns the length of a list. So at this point we have the total
"       number of listed buffers. You would think that map would be an uneccesary
"       step because you would think you could just do: len(filter(...)) rather
"       than len(map(filter...)), but len(filter(...)) errors
"       errors I guess because 
"       
"  buffer stuff
"  
"   there are (IMO) 3 key things to know about a buffer (regarding it's
"   status / type / whatever)
"     loaded / unloaded - is it loaded.
"     active / hidden - active is currently in a window, hidden is loaded but not
"       currently in a window. (note to be active or hidden, a buffer
"       must be loaded. Non-loaded buffers are neigher active nor hidden. When
"       attempting to get info on a non-loaded buffer, there will be an error
"       because non-loaded buffers do not have status or anything like that)
"     listed / unlisted - for simplicity, listed are normal buffers that as
"       I know, almost always represent files. Unlised buffers are, as far as
"       I know, special buffers that serve a special purpose / function (ex.
"       the file explorer)
"       
"     so really all that matters is listed / unlisted because loaded,
"     unloaded, active and hidden are really self explanatory. Listed kind of
"     makes sense because you can think of listed buffers as like your tabs on
"     google chrome - these are the buffers you want to switch back and forth
"     from. These buffers are 'listed' on the list of buffers you are edited.
"     And unlisted buffers are special (like the settings section in google
"     chrome and are not on the list of buffers you want to use switch back
"     and forth editng but really only use as needed). Still, listed isn't
"     self explanatory while the others are...so if you know listed, then you
"     are good to go
"    
"   vim loads buffers as needed. Think of it like opening and closing a file.
"   You can open a file (ie load a buffer) and you can close a file (ie delete
"   a buffer). If you close a file, it is still stored on your computer and
"   you can open it again. it's just not currently open. Same with buffers.
"   When you delete a buffer, you are unloading the buffer contents (usually a
"   file, but not always) from vim. But you can always open it again later
"   (assuming you saved it)
"   
" get list of loaded buffer numbers based on certain states / data on that buffer. 
"   A buffer must be loaded for it to be included here (because getbufinfo()
"   only pertains to loaded buffers)
"
"   :echo map(filter(copy(getbufinfo()), 'v:val.SOME_KEY == 1'), 'v:val.bufnr')
"
"   possible keys to check out:
"     lnum
"     bufnr
"     variables
"     signs
"     name
"     changed
"     loaded
"     windows
"     hidden
"     listed
"     changedtick
"     NOTE: active is not one of the values, but you can find if a buffer is
"     active if loaded == 1 and hidden == 0 (this is the same as active)
"
"     I found these keys by doing this:
"       :for key in keys(filter(copy(getbufinfo()), 'v:val.bufnr == bufnr()')[0])
"          echo key
"        endfor
"
" get info on current buffer
"   :echo filter(copy(getbufinfo()), 'v:val.bufnr == bufnr()')[0].SOME_KEY
"   bufnr() gets current buffer. You can replace it with any integer if you
"   know the buffer number
"       
"         
"         
"         
"         
" some unorganized notes... searched stach overflow far and wide for these examples and don't know
" where to keep them...
" fitler for these attributes and get all info for those that pass:
"   echo getbufinfo({'bufloaded': 1, 'buflisted': 1})
" get buffer numbers only in an array
"   echo map(copy(getbufinfo()), 'v:val.bufnr')
" get filter for these attributes and buffer numbers only in an array
"   echo map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')
"   echo map(filter(copy(getbufinfo()), 'v:val.hidden == 1 && v:val.listed == 1'), 'v:val.bufnr')
" rather than doing copy or filter / copy, you can also do:
"  let l:blist = getbufinfo()
"  let l:listed_hidden = []
"  for l:item in l:blist
"    if l:item.listed == 1 && l:item.hidden == 1
"      call add(l:listed_hidden, l:item.bufnr)
"    endif
"  endfor
"  NOTE: in vim loops, you can use 'continue' and it has the same effect as
"  ruby 'next'
