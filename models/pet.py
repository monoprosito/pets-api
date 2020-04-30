#!/usr/bin/python3
""" holds class owner"""

import models
from models.base_model import BaseModel, Base
from models.owner import Owner
from os import getenv
import sqlalchemy
from sqlalchemy import Column, String
from sqlalchemy.orm import relationship


class Pet(Base):
    if models.storage_t == "db":
        __tablename__ = 'pet'
        name = Column(String(128), nullable=False)
        age = Column(Integer, nullable=False)
        color = Column(String(20), nullable=False)
        owner = Column(Integer, ForeignKey('owner.uuid'))
        owner = relationship("Owner", back_populates="pet")

    else:
        name = ""
        age = 0
        color = ""

