// I don't know why but I am running out of heap space really quickly, so
// I could not increase the amount of partciles to do more fun things
// I used the intro picture of my favourite Russian cartoon as a kid, so the 
// idea behind the project is that even after many years have passed since those
// memories as a child, I still remember chunks of it

// I also tried modifying the pixel example with the Welcome and picture change
// to have more than 2 iterations, I have spent 4 hours on that but could not 
// figure out why I could not make it work, I used counter instead of if imagetoggled
// and tried changing the for loops but it did not work
// The idea was the exploration of languages. I wrote Hello in 5 different languages (images in folder lang)
// For some people it might look like scrambled pixels but native speakers will be able to recognize
// the words straight away with the help from their subconsciousness. It is very interesting how our
// brains can fill in the blanks.

// This also takes a while to start running on my laptop for some reason, not sure why


Particle[] particles;

PImage smeshariki;

void setup() {
  size(720,480,P2D);
  smeshariki = loadImage("smeshariki.png");
  
  particles = new Particle [200];
  for (int i=0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < particles.length; i++) {
    particles[i].display();
    particles[i].move();  
  }
}
