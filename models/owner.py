#!/usr/bin/python3
""" holds class owner"""

import models
from models.base_model import BaseModel, Base
from models.pet import Pet
from os import getenv
import sqlalchemy
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship


class Owner(BaseModel, Base):
    """Representation of owner"""
    if models.storage_t == 'db':
        __tablename__ = 'owners'
        first_name = Column(String(128), nullable=False)
        last_name = Column(String(128), nullable=False)
        pet = relationship("Pet", uselist=False, back_populates="owner")

    else:
        first_name = ""
        last_name = ""


    if models.storage_t != "db":
        @property
        def pet(self):
            """getter for list of pet instance related to the owner"""
            pet_list = []
            all_pets = models.storage.all(Pet)
            for pet in all_pets.values():
                if pet.owner == self.uuid:
                    pet_list.append(Pet)
            return pet_list
