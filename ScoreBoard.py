import pygame
import pygame.freetype

pygame.init()
GOLD = 255, 251, 0


class ScoreBoard():

    def __init__(self, screen, bomb):
        self.screen = screen
        self.text = 0
        self.bomb = bomb

    def miniupdata(self):
        f1 = pygame.freetype.Font("data/simhei.ttf", 24)
        f1.render_to(self.screen, (5, 5), str(self.text), fgcolor=GOLD)

    def allupdata(self):
        f1 = pygame.freetype.Font("data/simhei.ttf", 50)
        w = f1.get_rect(str(self.text)).w
        f1.render_to(self.screen, ((480 - w) / 2, 220), str(self.text), fgcolor=GOLD)

    def bombCount(self):
        f1 = pygame.freetype.Font("data/simhei.ttf", 40)
        f1.render_to(self.screen, (5 + 63 + 5, 700 - 50), ": " + str(self.bomb), fgcolor=GOLD)
