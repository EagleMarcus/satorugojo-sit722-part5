from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

SQLALCHEMY_DATABASE_URL = "postgresql://assignment9_2_user:Xw4oTggfRZpgEL6UKfOw1P4pHKvjknKC@dpg-crpvv7rv2p9s738dgf60-a.oregon-postgres.render.com/assignment9_2"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
