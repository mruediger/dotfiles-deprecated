#!/usr/bin/python

from gi.repository import Gio

import re

def command_present(params):
    customs = Gio.Settings.new("org.gnome.settings-daemon.plugins.media-keys").get_strv("custom-keybindings")
    for custom in customs:
        gsettings = Gio.Settings.new_with_path("org.gnome.settings-daemon.plugins.media-keys.custom-keybinding",
                                               custom)

        if ( gsettings.get_string('binding') == params['binding'] and
             gsettings.get_string('command') == params['command'] and
             gsettings.get_string('name') == params['name'] ):
            return True
    return False

def add_command(params):
    customs = Gio.Settings.new("org.gnome.settings-daemon.plugins.media-keys").get_strv("custom-keybindings")
    for custom in customs:
        gsettings = Gio.Settings.new_with_path("org.gnome.settings-daemon.plugins.media-keys.custom-keybinding",
                                               custom)

        if ( gsettings.get_string('name') == params['name'] ):
            gsettings.set_string('command', params['command'])
            gsettings.set_string('binding', params['binding'])
            return


    newcustom = countNextCustom(customs)
    Gio.Settings.new("org.gnome.settings-daemon.plugins.media-keys").set_strv("custom-keybindings", customs + [newcustom])

    gsettings = Gio.Settings.new_with_path("org.gnome.settings-daemon.plugins.media-keys.custom-keybinding",
                                           newcustom)
    gsettings.set_string('name', params['name'])
    gsettings.set_string('command', params['command'])
    gsettings.set_string('binding', params['binding'])


def countNextCustom(customs):
    if ( len(customs) == 0 ):
        return "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
    else:
        m = re.search('(.*)([0-9]+)/', customs[-1])
        return "{}{}/".format(m.group(1), int(m.group(2)) + 1)




def main():
    module = AnsibleModule(
        argument_spec=dict(
            name=dict(default=None),
            command=dict(default=None),
            binding=dict(default=None)
        ),
        required_together=[['name', 'command']])

    if command_present(module.params):
        module.exit_json(msg="command present")
    else:
        result = add_command(module.params)
        module.exit_json(msg="command added")


from ansible.module_utils.basic import *
if __name__ == '__main__':
    main()











"""
from gi.repository import Gio
import re
gsettings = Gio.Settings.new("org.gnome.settings-daemon.plugins.media-keys")

customs = gsettings.get_strv("custom-keybindings")

m = re.search('(.*)([0-9]+)/', customs[-1])

customs.append("{}{}/".format(m.group(1), int(m.group(2)) + 1))

print(customs)

gsettings = Gio.Settings.new_with_path("org.gnome.settings-daemon.plugins.media-keys.custom-keybinding","/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/")

print(gsettings.get_string('command'))

import sys
import json

args_file = sys.argv[1]
args_data = file(args_file).read()

args = dict()
for arg in args_data.split():
    (key,value) = arg.split("=")
    args[key] = value

checkargs(args)


gsettings = Gio.Settings.new("org.gnome.settings-daemon.plugins.media-keys")
customs = gsettings.get_strv("custom-keybindings")




for custom in customs:
    if contains(custom, args):
        print json.dumps({"changed" : False })
        exit



gs_commands = Gio.Settings.new("org.gnome.settings-daemon.plugins.media-keys")


print json.dumps(args)

def checkargs(command):
    if ! 'binding' in command


def contains(custom, command):
    gsettings = Gio.Settings.new_with_path("org.gnome.settings-daemon.plugins.media-keys.custom-keybinding",
                                           custom)

    all([gsettings.get_string('binding') == command.binding,
         gsettings.get_string('command') == command.command,
         gsettnigs.get_string('name') == command.name])

"""
