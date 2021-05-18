import re
from pprint import pprint as pp

regex1 = re.compile(r'(?P<vendor>[a-z0-9]{4})\s+(?P<vendor_name>.*)')
regex2 = re.compile(r'\t(?P<device>[a-z0-9]{4})\s+(?P<device_name>.*)')
regex3 = re.compile(r'\t\t(?P<subvendor>[a-z0-9]{4})\s+(?P<subdevice>[a-z0-9]{4})\s+(?P<subsystem_name>.*)')

data = []

with open("pci.ids", "rb") as fp:
    for line in fp:
        m = regex1.match(line)
        if m:
            d = m.groupdict()
            d['devices'] = []
            data.append(d)
        else:
            m = regex2.match(line)
            if m:
                d = m.groupdict()
                d['subdevices'] = []
                data[-1]['devices'].append(d)
            else:
                m = regex3.match(line)
                if m:
                    data[-1]['devices'][-1]['subdevices'].append(m.groupdict())

pp(data)
