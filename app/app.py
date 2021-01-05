import web

urls = ("/", "index")

class index:
    def GET(self):
        data = web.input()
        a = int(data.a)
        b = int(data.b)
        c = a + b
        print(c)
        return "Twoja odpowiedz to: "+ str(c)
        # http://<addr>:<port>/?a=3&b=4

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()