# Tic-Tac-Toe

> Ruby program - LS

*Execute **app.rb** to run the programm*

## Classes

> See code comments to get more information about the methods

### Interface

*from **lib/views/interface.rb** :*

Allows to manage the whole app process in order to, for example, run multiple games, keep score and display informations

- \# player1 (attr) *=> Player object*
- \# player2 (attr) *=> Player object*
- \# status *=> boolean*
- \# initialize
- \# init_players
- \# continues? *=> boolean*
- \# show_score
- \# start

### Game

*from **lib/app/game.rb** :*

Allows to process a single game which can be initialized multiple times in app.

- \# player1 (attr) *=> Player object*
- \# player2 (attr) *=> Player object*
- \# choices (attr) *=> array of possible choices*
- \# initialize(player1, player2)
- \# ending
- \# perform_duel
- \# choice => *string for user choice*

### Board

*from **lib/app/board.rb** :*

Allows to process actions in a single game and to provide information about current board situation.

- \# case_state (attr) *=> array of bord cases situations*
- \# initialize
- \# full? *=> boolean*
- \# line? *=> boolean*
- \# who_win *=> string with winner symbol (ex : "X")*
- \# winning_line *=> string with line which made game end*
- \# fill_case(choice, sign)

### Player

*from **lib/app/player.rb** :*

Allows to initialize an object with importants variables like names of the users, the sign that each of them will use during the game, and personal scores.

- \# wins (attr) => integer
- \# name (attr) => string
- \# sign (attr) => string
- \# intialize(name)

### GraphicBoard

*from **lib/views/graphic_board.rb** :*

Displays a view of the board during the game.

- \# cases_state (attr)
- \# initialize(board_instance)
