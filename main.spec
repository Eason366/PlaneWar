# -*- mode: python ; coding: utf-8 -*-

block_cipher = None


a = Analysis(['main.py'],
             pathex=['bullet.py', 'plain.py', 'ScoreBoard.py', 'bomb.py', 'C:\\Users\\Eason\\PycharmProjects\\plain_game'],
             binaries=[],
             datas=[
                    ('images\\*.png', 'images'),
                    ('images\\icon.ico', 'images'),
                    ('data\\simhei.ttf','data'),
                    ],
             hiddenimports=['plain', 'bullet', 'ScoreBoard', 'bomb', 'pygame'],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          [],
          exclude_binaries=True,
          name='PlaneWar',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          console=True, icon='images\\icon.ico')
coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas,
               strip=False,
               upx=True,
               upx_exclude=[],
               name='main')
