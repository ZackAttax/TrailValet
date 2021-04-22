TrailValet

User
    -name
    -email
    -passworddigest
    -has many  Maintenance/Features
    -has many tools
    -has many comments

Trail
    -name
    -region
    -location
    -has many Maintenance/Features
    -has many users through M/F

Maintenance/Feature
    -Location
    -image
    -issue
    -tools needed
    -feature or issue
    -belongs to/has many user
    -belongs to trail
Tools
    -use
    belongs to user
    has many M/F


MF/Comments
    -content
    -belongs to user
    -belongs to M/f