import requests
import json
import pprint
import sys

host = 'http://localhost:9200'

def read_input():
    s = input()
    return s.strip() 

def do_request(method, url, data):
    fun = getattr(requests, method.lower())
    url = host + url
    if data:
        r = fun(url, data=data) 
    else:
        r = fun(url) 
    pprint.pprint(json.loads(r.text))
    return r.text
    

def parse():
    method = ''
    url = ''
    data = '' 
    method_url = ''
    while not method_url:
        method_url = read_input()
    method, url = method_url.split(' ', 1)
    while 1:
        s = read_input()
        if s == '':
            break
        data += s
    # print(method, url, data)
    do_request(method, url, data)
    

def run():
    TOPLINE = '-'*30 + '\n'
    while 1:
        print(TOPLINE)
        parse()
    pass



if __name__ == "__main__":
    if len(sys.argv) == 2:
        host = sys.argv[1]
    run()
