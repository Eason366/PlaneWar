import pygame
import random
from pygame import *
from bullet import HeroBullet, EnemyBullet
from bomb import Bomb


class HeroPlain(object):
    def __init__(self, screen):
        # 导入玩家
        self.player = pygame.image.load("images/me1.png")
        self.x = (480 - 102) / 2
        self.y = 500
        # 设置玩家飞机速度
        self.speed = 10
        self.screen = screen
        self.bullets = []
        self.isKilled = False
        self.bomb = Bomb(screen, 3)
        self.isBomb = False
        self.life = 3

    def Key_control(self):
        # 设置键盘监听
        key_pressed = pygame.key.get_pressed()

        # 设置向上
        if key_pressed[K_w] or key_pressed[K_UP]:
            if 0 <= self.y - self.speed <= 700 - 126:
                self.y -= self.speed
            else:
                self.y = 0
        # 设置向下
        if key_pressed[K_s] or key_pressed[K_DOWN]:
            if 0 <= self.y + self.speed <= 700 - 126:
                self.y += self.speed
            else:
                self.y = 700 - 126
        # 设置向左
        if key_pressed[K_a] or key_pressed[K_LEFT]:
            if 0 <= self.x - self.speed <= 480 - 102:
                self.x -= self.speed
            else:
                self.x = 0
        # 设置向右
        if key_pressed[K_d] or key_pressed[K_RIGHT]:
            if 0 <= self.x + self.speed <= 480 - 102:
                self.x += self.speed
            else:
                self.x = 480 - 102
        # 设置发射子弹
        if key_pressed[K_SPACE] and not self.isKilled:
            bullet = HeroBullet(self.screen, self.x + 102 / 2 - 2, self.y)
            self.bullets.append(bullet)

    def display(self):
        if not self.isKilled:
            self.screen.blit(self.player, (self.x, self.y))
        for bullets in self.bullets:
            bullets.auto_move()
            bullets.display()
        self.bomb.display()


class Enemy(object):
    def __init__(self, screen):
        # 导入玩家
        self.player = pygame.image.load("images/enemy1.png")
        self.x = random.randint(0, 480 - 57)
        self.y = 0
        # 设置玩家飞机速度
        self.speed = 1
        self.screen = screen
        self.bullets = []
        self.move = random.choice([True, False])
        self.isKilled = False

    def display(self):
        if not self.isKilled:
            self.screen.blit(self.player, (self.x, self.y))
        for bullets in self.bullets:
            bullets.auto_move()
            bullets.display()

    def auto_move(self):

        if self.move:
            self.x -= self.speed
        else:
            self.x += self.speed
        self.y += self.speed

        if self.x > 480 - 57:
            self.move = True
        elif self.x < 0:
            self.move = False

    def auto_fire(self):
        if not self.isKilled:
            rand = random.randint(1, 40)
            if rand == 1:
                bullet = EnemyBullet(self.screen, self.x + 58 / 2 - 2, self.y + 30)
                self.bullets.append(bullet)
