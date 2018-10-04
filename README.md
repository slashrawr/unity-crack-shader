# unity-crack-shader

A simple shader to simulate a broken surface like a crack, crevice or hole without manipulating the surface mesh.

## Getting Started

Apply the TransparentWithZWrite shader to a mesh overlaying the break in the surface. Ensure the surface mesh is later in the render queue than the overlay mesh and that ther overlay mesh
is later in the render queue than other objects you might want visible in the crack, crevice or hole.