## Hyapi
A Flutter implementation of the Hypixel API and launcher
**Note**: This will probably be broken up later.

### Future Design Plans
I don't want to overdesign something this early, but even immediately there is a lot
of bridging of general logic and networking. It doesn't *explicitly* have to be it's own
package, but at least internally decoupling the launcher manager from the authentication
stack is on my radar.