import wikipedia, nltk, re
from bottle import route, run, get, post, request # or route
from bottle import template
@route('/')
def hello():
    return '''
            <h1>Hello World!</h1>
            <a href='./app'>go to app</a>
          '''
@get('/app')
def app(reply=""):
    return template('./views/app',reply=reply)
@post('/app')
def reply(reply=""):
    myRequest = request.forms.get('myRequest')
    reply = myRequest
    if myRequest.startswith( 'what is ' ):
        title = find_between( myRequest, "what is", "?" )
        print title
        result = wikipedia.summary(title, sentences=1)
        print "result"+result
        reply = result
    else:
        tokens = nltk.word_tokenize(myRequest)
        tagged = nltk.pos_tag(tokens)
        print(tagged)
    return app(reply)

def find_between( s, first, last ):
    try:
        start = s.index( first ) + len( first )
        end = s.index( last, start )
        return s[start:end]
    except ValueError:
        return ""

run(host='127.0.0.1',port=8081)
