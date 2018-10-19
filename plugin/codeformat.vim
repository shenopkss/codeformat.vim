function! Foo()
python3 << EOF
import vim
import json
import http.client, urllib.parse

source = '<div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>'
params = urllib.parse.urlencode({'html': source})
headers = {"Content-type": "application/x-www-form-urlencoded; charset=UTF-8", "Accept": "application/json"}
url='http://tool.oschina.net/action/format/html'
conn = http.client.HTTPConnection("tool.oschina.net")
conn.request("POST", url, params, headers)
response = conn.getresponse()
data = response.read()
conn.close()

b = vim.current.buffer
l = len(b)
del b[0:l]
data = json.loads(data)
data = data['fhtml']

i = 0
for r in data.split('\n'):
    vim.current.buffer.append(r, i)
    i += 1
EOF
endfunction
