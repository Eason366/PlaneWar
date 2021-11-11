import random
import pygame
from pygame import *
import time
from plain import HeroPlain, Enemy
from ScoreBoard import ScoreBoard
from bomb import BombSupply


def main():
    pygame.init()
    # 设置界面
    screen = pygame.display.set_mode(size=(480, 700), flags=0)
    # 导入背景图片
    background = pygame.image.load("images/background.png")
    # 创建玩家飞机
    player = HeroPlain(screen)
    # 创建敌人飞机
    start = time.time()
    # 创建炸弹补给
    supplys = []
    # 创建计分板
    score = ScoreBoard(screen, player.bomb.count)
    # 创建敌机列表
    enemies = []
    # 导入结束图片
    GameOver = pygame.image.load("images/gameover.png")
    Restart = pygame.image.load("images/again.png")
    clock = pygame.time.Clock()
    difficulty = 60
    start_time = pygame.time.get_ticks()

    while True:
        clock.tick(difficulty)
        end_time = pygame.time.get_ticks()
        GameTime = (end_time - start_time) // 1000
        if GameTime == 10:
            start_time = end_time
            difficulty += 10
        now = time.time()
        if now - start > 1:
            for num in range(0, score.text // 1000 + 1):
                enemy = Enemy(screen)
                enemies.append(enemy)
                start = time.time()
        screen.blit(background, (0, 0))
        # 设置事件监听
        for events in pygame.event.get():
            # 关闭程序
            if events.type == pygame.QUIT:
                pygame.quit()
                exit()

            elif events.type == pygame.KEYDOWN and not player.isBomb and events.key == pygame.K_RETURN:
                player.isBomb = True

            elif events.type == pygame.MOUSEBUTTONUP and player.isKilled:
                x, y = events.pos
                if (480 - 300) / 2 <= x <= (480 - 300) / 2 + 300 and 700 - 300 - 41 <= y <= 700 - 300:
                    main()
                elif (480 - 300) / 2 <= x <= (480 - 300) / 2 + 300 and 300 <= y <= 700 - 300 + 41:
                    pygame.quit()
                    exit()

        for enemy in enemies:
            for bullet in player.bullets:
                if enemy.x <= bullet.x <= enemy.x + 57 and enemy.y <= bullet.y <= enemy.y + 30 and not enemy.isKilled and not player.isKilled and not bullet.isUsed:
                    bullet.isUsed = True
                    enemy.isKilled = True
                    score.text += 100
        for enemy in enemies:
            for bullet in enemy.bullets:
                if player.x <= bullet.x <= player.x + 102 and player.y <= bullet.y <= player.y + 126 and not bullet.isUsed:
                    bullet.isUsed = True
                    player.life -= 1
                    if player.life == 0:
                        player.isKilled = True
        for supply in supplys:
            supply_x = set(range(supply.x, supply.x + 60))
            supply_y = set(range(supply.y, supply.y + 107))
            player_x = set(range(int(player.x), int(player.x + 102)))
            player_y = set(range(player.y, player.y + 126))
            if not len(supply_x & player_x) == 0 and not len(supply_y & player_y) == 0 and not supply.isUsed:
                supply.isUsed = True
                player.bomb.count += 1
                score.bomb += 1

        if player.isKilled:
            screen.blit(Restart, ((480 - 300) / 2, 700 - 300 - 41))
            screen.blit(GameOver, ((480 - 300) / 2, 300))
            score.allupdata()

        else:
            player.Key_control()
            # 显示玩家飞机
            player.display()
            # 显示计分板
            score.miniupdata()
            # 创建炸弹补给
            isSupply = random.randint(0, 1000)
            if isSupply == 1:
                supply = BombSupply(screen)
                supplys.append(supply)
            # 显示炸弹补给
            for supply in supplys:
                supply.auto_move()
                supply.display()
            # 显示敌人飞机
            for enemy in enemies:
                enemy.auto_move()
                enemy.display()
                # 敌机自动开火
                enemy.auto_fire()
            # 显示炸弹个数
            score.bombCount()
            # 使用炸弹
            if player.isBomb and player.bomb.count > 0:
                player.bomb.count -= 1
                score.bomb -= 1
                for enemy in enemies:
                    if not enemy.isKilled:
                        score.text += 100
                enemies = []
                player.isBomb = False
        # 显示屏幕
        pygame.display.update()
        # 暂停 0.01s （保持视觉暂留）
        out_bound(enemies)
        out_bound(player.bullets)


def out_bound(lists):
    index = []
    for num in range(0, len(lists)):
        if lists[num].y > 700 or lists[num].y < 0:
            index.append(num)
    for num in index:
        lists.pop(num)


if __name__ == '__main__':
    main()
