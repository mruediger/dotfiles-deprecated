#!/usr/bin/env python

import i3
import argparse

def get_current_workspace():
    current = [ws for ws in i3.get_workspaces() if ws["focused"] is True ]
    return current[0] if current else None

def move_container_to_workspace(workspace):
    return i3.msg(0, "move container to workspace number {}".format(workspace))

def move_container_to_workspace_left():
    move_container_to_workspace(max(1, get_current_workspace()["num"] - 1))

def move_container_to_workspace_right():
    move_container_to_workspace(get_current_workspace()["num"] +1)

def goto_workspace(workspace):
    return i3.msg(0, "workspace {}".format(workspace))

def goto_workspace_left():
    goto_workspace(max(1, get_current_workspace()["num"] - 1))

def goto_workspace_right():
    goto_workspace(get_current_workspace()["num"] +1)


parser = argparse.ArgumentParser()

parser.add_argument("direction")

args = parser.parse_args()

if args.direction == "left":
    move_container_to_workspace_left()
    goto_workspace_left()

if args.direction == "right":
    move_container_to_workspace_right()
    goto_workspace_right()
