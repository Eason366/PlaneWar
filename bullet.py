import pygame


class HeroBullet():
    def __init__(self, screen, x, y):
        # 导入子弹
        self.bullet = pygame.image.load("images/bullet1.png")
        self.x = x
        self.y = y
        # 设置子弹速度
        self.speed = 15
        self.screen = screen
        self.isUsed = False

    def display(self):
        if not self.isUsed:
            self.screen.blit(self.bullet, (self.x, self.y))

    def auto_move(self):
        self.y -= self.speed


class EnemyBullet():
    def __init__(self, screen, x, y):
        # 导入子弹
        self.bullet = pygame.image.load("images/bullet2.png")
        self.x = x
        self.y = y
        # 设置子弹速度
        self.speed = 5
        self.screen = screen
        self.isUsed = False

    def display(self):
        if not self.isUsed:
            self.screen.blit(self.bullet, (self.x, self.y))

    def auto_move(self):
        self.y += self.speed
