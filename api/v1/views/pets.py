#!/usr/bin/python3
"""View pets"""
from flask import abort, request, jsonify
from flask.views import MethodView
from api.v1.views import app_views
from models import storage
from models.pet import Pet


class PetsAPI(MethodView):

    def get(self, pet_id):
        """Get all pets or specific pet"""
        if pet_id is None:
            new_pet = storage.all(Pet)
            dict_pets = [obj.to_dict() for obj in all_pets.values()]
            return jsonify(dict_pets)
        else:
            pet = storage.get(Pets, pet_id)
            if pet is None:
                abort(404)
            return jsonify(pet.to_dict())

    def post(self, owner_id):
        """Create pet"""
        if owner_id is None:
            dict_req = request.get_json()
            if dict_pets is None:
                abort(404)
            dict_req['owner_id'] = owner_id
            new_pet = Pet(**dict_pets)
            storage.new(new)
            storage.save()
        else:
            abort(404)

    def delete(self, pet_id):
        """De;ete Pet"""
        if pet_id is None:
            abort(404)
        else:
            pet_obj = storage.get(Pet, pet_id)
            storage.delete(pet_obj)


pet_view = PetsAPI.as_view('pet_api')
app_views.add_url_rule(
        '/pets/',
        defaults={'pet_id': None},
        view_func=pet_view,
        methods=['GET', ],
        strict_slashes=False)
app_views.add_url_rule(
        '/pets/<pet_id>',
        view_func=pet_view,
        methods=['GET', 'PUT', 'DELETE'])
app_views.add_url_rule(
        '/pets/<owner_id>',
        view_func=user_view,
        methods=['POST', ])
