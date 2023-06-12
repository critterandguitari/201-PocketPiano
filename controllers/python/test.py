import pygame
import time

# Initialize Pygame
pygame.init()

# Set up the display
circle_radius = 16
circle_margin = 16
width = 3 * circle_radius * 2 + 2 * circle_margin
height = circle_radius * 2
screen = pygame.display.set_mode((width, height))
pygame.display.set_caption("Colorful Circles")

# Define colors
colors = [
    (0, 0, 0),
    (255, 0, 0),
    (255, 255, 0),
    (0, 255, 0),
    (0, 255, 255),
    (0, 0, 255),
    (128, 0, 128),
    (255, 255, 255),
]

# Background color
bg_color = (211, 211, 211)

# Circle position
circle_y = height // 2

# Game loop
running = True
while running:
    for color in colors:
        screen.fill(bg_color)  # Clear the screen with light gray

        for i in range(3):
            # Calculate the x position for each circle
            circle_x = i * (circle_radius * 2 + circle_margin) + circle_radius

            # Draw the circle
            pygame.draw.circle(screen, color, (circle_x, circle_y), circle_radius)

        # Update the display
        pygame.display.flip()

        # Wait for 500ms
        time.sleep(0.5)

        # Handle events
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False

# Quit Pygame
pygame.quit()

