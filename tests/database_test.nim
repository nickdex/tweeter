import database

import os, times

when isMainModule:
    removeFile("tweeter_test.db")
    var db = newDatabase("tweeter_test.db")
    db.setup()

    db.create(User(username: "nick"))
    db.create(User(username: "geek"))

    db.post(Message(username: "geek", time: getTime() - 4.seconds(), msg: "hello there"))
    db.post(Message(username: "geek", time: getTime(), msg: "Bumper sale"))
    
    var nick: User
    doAssert db.findUser("nick", nick)
    var geek: User
    doAssert db.findUser("geek", geek)
    db.follow(nick, geek)

    # Rereads user information for nick for updated followers
    doAssert db.findUser("nick", nick)

    let messages = db.findMessage(nick.following)
    echo(messages)
    doAssert(messages[0].msg == "Bumper sale")
    doAssert(messages[1].msg == "hello there")
    
    echo("All tests finished successfully")