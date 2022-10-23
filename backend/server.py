import fastapi
import json
from typing import List, Dict, Optional, Tuple

class Task:
    def __init__(
        self,
        name: str,
        description: str,
        due: str,
        id: int,
        checkpointNames: List[str],
        checkpointDescriptions: List[str]):
    # body starts
        self.name = name
        self.description = description
        self.due = due
        self.id = id
        self.checkpointNames = checkpointNames
        self.checkpointDescriptions = checkpointDescriptions

    def as_json(self):
        return json.dumps({
            "name": self.name,
            "description": self.description,
            "due": self.due,
            "id": self.id,
            "checkpointNames": self.checkpointNames,
            "checkpointDescriptions": self.checkpointDescriptions
        })

class User:
    def __init__(self, user_login: str,
                password: str,
                tasks: List[Task]):
        self.login = user_login
        self.password = password
        self.tasks = tasks

    def as_json(self):
        return json.dumps({
            "login": self.login,
            "password": self.password,
            "tasks": [task.as_json() for task in self.tasks]
        }).encode()


class DB:
    def __init__(self, path_to_db):
        # TODO: actually read from db
        self.users = [
            User("user1", "password1", [Task("task1", "description1", "11-11-2022 22:15", 0, ["checkpoint1", "check point1 description"], ["checkpoint2", "checkpoint2 description"])]),
            User("user2", "password2", [Task("task2", "description2", "11-11-2022 22:15", 1, ["checkpoint1", "check point1 description"], ["checkpoint2", "checkpoint2 description"])]),
            User("user3", "password3", [Task("task3", "description3", "11-11-2022 22:15", 2, ["checkpoint1", "check point1 description"], ["checkpoint2", "checkpoint2 description"])]),
        ]

    def get_user(self, user_login):
        for u in self.users:
            if u.login == user_login:
                return u
        return None
    
    def get_all(self):
        return json.dumps('['+''.join([f'{u.as_json()},' for u in self.users])+']'.replace('/', ''))

    def add_user(self, user_login: str, password: str, tasks: Optional[Task]):
        self.users.append(User(user_login, password, tasks))

    def add_task(self, user_login: str, task: Task):
        user = self.get(user_login)
        user.tasks.append(task)


app = fastapi.FastAPI()
db = DB("db.json")

# @app.get("/data")
def get_data(user: str = 'all'):
    if id == 'all':
        return db.get_all()
    else:
        return (db.get_user(user))

# run app
if __name__ == "__main__":
    # import uvicorn
    # uvicorn.run(app)
    d = db.get_all()
    print(d)