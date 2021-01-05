import web

urls = ("/", "index")

class index:
    def GET(self):
        data = web.input()
        a = int(data.a)
        b = int(data.b)
        c = a + b
        print(c)
        return "Your answer is: "+ str(c)

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
