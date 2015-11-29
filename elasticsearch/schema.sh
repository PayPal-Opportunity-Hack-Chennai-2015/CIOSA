#!/bin/bash
HOST='localhost'
PORT='9200'
DB_NAME='sahayak'

curl -XPUT http://$HOST:$PORT/$DB_NAME -d '{
  "mappings": {
    "ngodetails": {
      "properties": {
        "name": {
          "type": "string"
        },
        "logo": {
          "type": "string"
        },
        "address": {
          "properties": {
            "line1": {
              "type": "string"
            },
            "line2": {
              "type": "string"
            },
            "area": {
              "type": "string"
            },
            "city": {
              "type": "string"
            },
            "state": {
              "type": "string"
            }
          }
        },
        "location": {
          "type": "geo_point"
        },
        "poc": {
          "type": "string"
        },
        "phone": {
          "type": "string"
        },
        "email": {
          "type": "string"
        },
        "website": {
          "type": "string"
        },
        "desc": {
          "type": "string"
        },
        "categories": {
          "type": "long"
        }
      }
    },
    "categories_db": {
      "properties": {
        "name": {
          "type": "string"
        }
      }
    },
	"temp_ngodetails": {
      "properties": {
        "name": {
          "type": "string"
        },
        "logo": {
          "type": "string"
        },
        "address": {
          "properties": {
            "line1": {
              "type": "string"
            },
            "line2": {
              "type": "string"
            },
            "area": {
              "type": "string"
            },
            "city": {
              "type": "string"
            },
            "state": {
              "type": "string"
            }
          }
        },
        "location": {
          "type": "geo_point"
        },
        "poc": {
          "type": "string"
        },
        "phone": {
          "type": "string"
        },
        "email": {
          "type": "string"
        },
        "website": {
          "type": "string"
        },
        "desc": {
          "type": "string"
        },
        "categories": {
          "type": "long"
        }
      }
    }
  }
}'

