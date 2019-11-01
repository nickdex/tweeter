import asyncdispatch
import jester
import ../views/user, ../views/general


routes:
    get "/":
        resp renderMain(renderLogin())

runForever()
