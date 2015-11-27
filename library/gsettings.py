#!/usr/bin/python

from gi.repository import Gio
from gi.repository import GLib

def get_value(params):
    gsettings = Gio.Settings.new(params['schema'])
    return gsettings.get_value(params['key'])

def set_value(params):
    gsettings = Gio.Settings.new(params['schema'])
    gsettings.set_value(params['key'], GLib.Variant.new_string(params['value']))

def main():
    module = AnsibleModule(
        argument_spec={
            'schema': { 'required': True },
            'key': { 'required': True },
            'value': { 'required': True },
        },
        supports_check_mode=True)


    oldvalue = get_value(module.params)
    newvalue = GLib.Variant.new_string(module.params['value'])
    changed = oldvalue.compare(newvalue) != 0

    if changed and not module.check_mode:
        set_value(module.params)

    module.exit_json(
        changed=changed,
        key=module.params['key'],
        value=module.params['value'],
        oldvalue=str(oldvalue))

from ansible.module_utils.basic import *
if __name__ == '__main__':
    main()
