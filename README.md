# Drone Trigger

Super simple downstream trigger for kicking of builds.

Use it something like this in your drone.yml file. It just expects a few environment variables.

```
trigger_deploy:
  image: corylogan/drone-trigger:latest
  secrets: [ DRONE_TOKEN, DRONE_SERVER ]
  environment:
    - DRONE_SERVER=${DRONE_SERVER}
    - DRONE_SERVER=${DRONE_TOKEN}
    - REPOSITORY=user/repo
  when:
    event: push
    branch: master
    success: true
```
