import pygame
import time
from pythonosc import dispatcher, osc_server
from pythonosc.udp_client import SimpleUDPClient

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

# Initialize circle colors
circle_colors = [colors[0]] * 3

# Function to handle OSC messages
def set_circle_color_handler(unused_addr, led_num, color_index):
    global circle_colors
    circle_colors[led_num[0]] = colors[color_index]



# Set up OSC dispatcher and server
dispatcher = dispatcher.Dispatcher()
dispatcher.map("/led1", set_circle_color_handler, 0)
dispatcher.map("/led2", set_circle_color_handler, 1)
dispatcher.map("/led3", set_circle_color_handler, 2)

server = osc_server.ThreadingOSCUDPServer(("localhost", 4001), dispatcher)

# Start the OSC server in a separate thread
import threading
osc_thread = threading.Thread(target=server.serve_forever)
osc_thread.start()

# Game loop
running = True
while running:
    screen.fill(bg_color)  # Clear the screen with light gray

    for i in range(3):
        # Calculate the x position for each circle
        circle_x = i * (circle_radius * 2 + circle_margin) + circle_radius

        # Draw the circle with the current color
        pygame.draw.circle(screen, circle_colors[i], (circle_x, circle_y), circle_radius)

    # Update the display
    pygame.display.flip()

    # Handle events
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    # Limit frame rate to 60 FPS
    pygame.time.Clock().tick(60)

# Quit Pygame and OSC server
pygame.quit()
server.shutdown()

