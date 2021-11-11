import random
import pygame


class Bomb():
    def __init__(self, screen, count):
        # 导入炸弹
        self.bomb = pygame.image.load("images/bomb.png")  # 63 57   480 700
        self.screen = screen
        self.count = count

    def display(self):
        self.screen.blit(self.bomb, (5, 700 - 57 - 5))


class BombSupply():
    def __init__(self, screen):
        # 导入炸弹
        self.bomb = pygame.image.load("images/bomb_supply.png")  # 60 107   480 700
        self.screen = screen
        self.x = random.randint(0,480-107)
        self.y = 5
        self.speed = 2
        self.isUsed = False

    def display(self):
        if not self.isUsed:
            self.screen.blit(self.bomb, (self.x, self.y))

    def auto_move(self):
        self.y += self.speed