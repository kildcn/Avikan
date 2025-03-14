# Avikan - Your Pocket Feather Finder

![Avikan Logo](https://i.ibb.co/Z12vTbFy/birdpin.png)

Avikan is a gamified bird recognition application that helps users identify, catalog, and track birds they spot in the wild. Leveraging machine learning for bird identification, Avikan turns birdwatching into an engaging adventure with experience points, badges, and a community leaderboard.

## Features

### 🔍 Bird Recognition
- Snap a photo of a bird and let our AI identify the species
- Get detailed information about identified birds, including conservation status, habitat, diet, and more

### 🦜 Personal Collection
- Build your digital "flock" of spotted birds
- View your capture history and track your birding progress

### 🗺️ Bird Spotting Map
- See where birds have been spotted on an interactive map
- Filter between all spots and your personal spots
- Add your own bird sightings with location data

### 🏆 Gamification
- Earn experience points (XP) for each bird you capture
- Unlock badges as you progress
- Compete with other users on the global leaderboard

### ℹ️ Educational Content
- Access detailed information about each bird species
- Learn about habitats, migration patterns, and conservation status

## Tech Stack

### Backend
- Ruby on Rails 7.1
- PostgreSQL
- Devise (Authentication)
- Active Storage with Cloudinary (Image storage)
- PG Search (Search functionality)

### Frontend
- Bootstrap 5
- Stimulus.js
- Mapbox GL (Interactive maps)
- FontAwesome (Icons)
- Custom-designed UI with pixel-art aesthetics

### APIs & Services
- External bird recognition API
- Cloudinary for image storage
- Geocoder for location services

## Installation

### Prerequisites
- Ruby 3.1.2
- Rails 7.1.2
- PostgreSQL
- Cloudinary account
- Mapbox API key

### Setup

1. Clone the repository
```bash
git clone git@github.com:yourusername/avikan.git
cd avikan
```

2. Install dependencies
```bash
bundle install
yarn install
```

3. Set up environment variables
Create a `.env` file in the root of the project with the following variables:
```
CLOUDINARY_URL=your_cloudinary_url
MAPBOX_API_KEY=your_mapbox_api_key
```

4. Set up the database
```bash
rails db:create
rails db:migrate
rails db:seed
```

5. Start the server
```bash
rails server
```

6. Visit `http://localhost:3000` in your browser

## Usage

### Capturing Birds
1. Navigate to the camera interface by clicking the camera icon
2. Take a photo of a bird or upload an existing image
3. Wait for the AI to analyze and identify the bird
4. View detailed information about your captured bird

### Exploring the Map
1. Navigate to the map interface
2. View bird sightings marked on the map
3. Toggle between viewing all spots or just your personal spots
4. Click on markers to see details about the bird spotted at that location

### Viewing Your Collection
1. Navigate to "My Flock" to see your captured birds
2. Search for specific birds by name or characteristics
3. Click on a bird card to view detailed information

### Earning Badges
1. Capture birds to earn XP
2. Visit your profile page to view unlocked badges
3. Keep capturing birds to unlock more badges and earn higher rankings

## Development Roadmap

Future development plans for Avikan include:

- Bird call recognition using audio
- Community features for sharing and commenting on sightings
- Challenges and bird-spotting missions
- Enhanced bird data with seasonal information
- Offline functionality improvements

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Credits

- Bird data provided by various ornithological databases
- Map data provided by Mapbox
- Created by the Avikan Team

---

*Avikan - Spot, capture, and learn about the birds around you*
