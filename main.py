import pygame


class Game:
    """Main class of the game"""

    def __init__(self, size=(1280, 640), screen=None):
        self.size = size
        self.screen = screen if screen is not None else pygame.display.set_mode(self.size)
        self.is_game_over = False

    def run(self) -> None:
        """
        Main loop

        :return: None
        """

        pygame.init()
        while not self.is_game_over:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    self.is_game_over = True


def main():
    game = Game()
    game.run()


if __name__ == '__main__':
    main()
