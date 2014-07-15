" search.vim - search in browser
" Author:       xdf <xudafeng@126.com>
" URL:          http://github.com/xudafeng/vim-info/
" Version:      1.2
" ReleaseDate:  2014 jun 09

" check the vim supports python

if !has('python')
  echo 'Error: Required vim compile with +python'
  finish
endif

" define command
python << EOF
import urllib

class Info:
    def do(self):
    	self.log('info test')
    def log(self, msg):
    	print msg
EOF
command! -nargs=0 Info exec('py Info().do()')