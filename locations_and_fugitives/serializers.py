from builtins import object

class LocationSerializer(object):
    def __init__(self, body):
        self.body = body

    @property
    def all_locations(self):
        output = {'locations': []}

        for location in self.body:
            location_details = {
                'name': location.name,
                'address': location.address,
                'phone': location.phone,
                'description': location.description
            }
            output['locations'].append(location_details)

        return output

    @property
    def location_detail(self):
        return {
            'name': self.body.name,
            'address': self.body.address,
            'phone': self.body.phone,
            'description': self.body.description
        }