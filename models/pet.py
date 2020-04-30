#!/usr/bin/python3
""" holds class pet"""

import models
from models.base_model import BaseModel, Base
from os import getenv
import sqlalchemy
from sqlalchemy import Column, String, Integer, ForeignKey
from sqlalchemy.orm import relationship


class Pet(BaseModel, Base):
    if models.storage_t == "db":
        __tablename__ = 'pets'
        name = Column(String(128), nullable=False)
        age = Column(Integer, nullable=False)
        color = Column(String(20), nullable=False)
        owner_id = Column(Integer, ForeignKey('owner.uuid'))
        owner = relationship("Owner", back_populates="pet")

    else:
        name = ""
        age = 0
        color = ""
