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
        __tablename__ = 'owner'
        first_name = Column(String(128), nullable=False)
        last_name = Column(String(128), nullable=False)
        pet = relationship("Pet", uselist=False, back_populates="owner")

    else:
        firs_name = ""
        last_name = ""
