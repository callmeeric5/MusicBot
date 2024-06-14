# Music Recommender Bot

## Version

| Data       | Version | Comment                  | Editor |
| ---------- | ------- | ------------------------ | ------ |
| 2024.05.15 | 0.0.1   | Draft                    | E.W    |
| 2024.05.19 | 0.0.11  | Revise object and future | E.W    |
|            |         |                          |        |

## Background

It is a product-type project for the deep learning class. 

Music is a common way for most people to release stress, seek comfort, and pass the time. However, major music streaming platforms like Spotify and Apple Music lack mood-based recommendation features. Additionally, they do not seem to effectively integrate AI technology into their products, which can come across as insensitive to users' needs.

## Object

To fill the blank in the market, this project aims to develop a chatbot, leveraging AI to recommend the most suitable playlists based on user input. Users can write down a few sentences about their feelings and then receive their recommendations of music that is close to the mood

## Components

![](https://cdn.jsdelivr.net/gh/callmeeric5/imageHost/img/Flowchart.jpg)

### Webapp

it is a local host web using Streamlit framework. One page with the chat window only allows users to send text information.

Features:

Webpage; Error reminder; Rate the response; Regenerate

### API

**Make_recommand**: 

```json
{
  "request": {
    "input": [
      "I am happy"
    ]
  }
}

{
  "response": {
    "output": [
      {
        "0": {
          "happy": 0.9
        }
      },
      {
        "1": {
          "Happy": 0.9
        }
      },
      {
        "2": {
          "Happy": 0.9
        }
      },
      {
        "3": {
          "Happy": 0.9
        }
      },
      {
        "4": {
          "Happy": 0.9
        }
      }
    ]
  }
}
```



**Save_result**

```json
{
  "request": {
    "input": [
      {
        "0": {
          "Happy": 0.9,
          "rating": 5
        }
      },
      {
        "1": {
          "Happy": 0.9,
          "rating": 5
        }
      },
      {
        "2": {
          "Happy": 0.9,
          "rating": 5
        }
      },
      {
        "3": {
          "Happy": 0.9,
          "rating": 5
        }
      },
      {
        "4": {
          "Happy": 0.9,
          "rating": 5
        }
      }
    ]
  }
}

{
  "response": {
    "output": [
      "data saved successfully!"
    ]
  }
}
```



### Model

Sentencetransfomer will encode the text into a vector -> search for the most similar vector of the input -> Create an Index using FAISS

### DB

Save the recommendation to the DB for future improvement.

## Future

* Return the songs directly via Spotify API
* Add LM to understand users' moods then generate a guide sentence  
* Remember the content of one dialogue
* Collaborative recommendation by user portrait