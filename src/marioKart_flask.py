"""
"""
from flask import Flask, jsonify, request
import os
import sys
import pandas as pd
from tabulate import tabulate
from dotenv import load_dotenv
from sqlalchemy import create_engine, text
from sqlalchemy.exc import OperationalError, ProgrammingError
from IPython.display import display, Markdown

config_map = {
    'user':'CMSC508_USER',
    'password':'CMSC508_PASSWORD',
    'host':'CMSC508_HOST',
    'database':'FLASK_DB_NAME'
}
# load and store credentials
load_dotenv()
config = {}
for key in config_map.keys():
    config[key] = os.getenv(config_map[key])
flag = False
for param in config.keys():
    if config[param] is None:
        flag = True
        print(f"Missing {config_map[param]} in .env file")

# build a sqlalchemy engine string
engine_uri = f"mysql+pymysql://{config['user']}:{config['password']}@{config['host']}/{config['database']}"

try:
    conn = create_engine(engine_uri)
except ArgumentError as e:
    print(f"create_engine: Argument Error: {e}")
    #sys.exit(1)
except NoSuchModuleError as e:
    print(f"create_engine: No Such Module Error: {e}")
    #sys.exit(1)
except Exception as e:
    print(f"create_engine: An error occurred: {e}")
    #sys.exit(1)

def my_sql_wrapper( query ):
    """ takes a query and returns a pandas dataframe for output """
    try:
        df = pd.read_sql( query, conn )
    except Exception as e:
        df = pd.DataFrame({'Query error': ["(see error message above)"]})
        msg = str(e).replace(") (",")\n(")
        print(msg)
    return df

def my_sql_statement( statement ):
    """ used with DDL, when the statement doesn't return any results. """
    try:
        with conn.begin() as x:
            x.execute(text(statement))
            x.commit()
    #    conn = create_engine(engine_uri)
        result = ""
    except Exception as e:
        result = f"Error: {str(e)}"
#    conn = create_engine(engine_uri)
    return result


engine = create_engine(engine_uri)

#Create a FLASK WEB APPLICATION
app = Flask(__name__)

#Define a route and a view function

@app.route('/data', methods=['GET'])
def get_data():
    data = MyData.query.all()
    dat_list = []

@app.route('/api/characters', methods=['GET'])
def api_characters():
    try:
        # Create a SQL query to select vehcile data from your database
        query = "SELECT * FROM characters"
        
        # Execute the query using SQLAlchemy and fetch the data into a DataFrame
        df = pd.read_sql(query, engine)
        
        # Convert the DataFrame to a list of dictionaries and return it as JSON
        character_data = df.to_dict(orient='records')
        
        return jsonify(character_data)
    except Exception as e:
        # Handle any exceptions that may occur during database access
        return jsonify({'error': str(e)})
    
@app.route('/api/vehicles')
def api_vehicles():
    try:
        # Create a SQL query to select vehcile data from your database
        query = "SELECT * FROM vehicles"
        
        # Execute the query using SQLAlchemy and fetch the data into a DataFrame
        df = pd.read_sql(query, engine)
        
        # Convert the DataFrame to a list of dictionaries and return it as JSON
        vehicle_data = df.to_dict(orient='records')
        
        return jsonify(vehicle_data)
    except Exception as e:
        # Handle any exceptions that may occur during database access
        return jsonify({'error': str(e)})
    
@app.route('/api/wheels')
def api_wheels():
    try:
        # Create a SQL query to select vehcile data from your database
        query = "SELECT * FROM wheels"
        
        # Execute the query using SQLAlchemy and fetch the data into a DataFrame
        df = pd.read_sql(query, engine)
        
        # Convert the DataFrame to a list of dictionaries and return it as JSON
        wheel_data = df.to_dict(orient='records')
        
        return jsonify(wheel_data)
    except Exception as e:
        # Handle any exceptions that may occur during database access
        return jsonify({'error': str(e)})
    
@app.route('/api/gliders')
def api_gliders():
    try:
        # Create a SQL query to select vehcile data from your database
        query = "SELECT * FROM gliders"
        
        # Execute the query using SQLAlchemy and fetch the data into a DataFrame
        df = pd.read_sql(query, engine)
        
        # Convert the DataFrame to a list of dictionaries and return it as JSON
        glider_data = df.to_dict(orient='records')
        
        return jsonify(glider_data)
    except Exception as e:
        # Handle any exceptions that may occur during database access
        return jsonify({'error': str(e)})

#Run the application
if __name__ == '__main__':
   app.run()