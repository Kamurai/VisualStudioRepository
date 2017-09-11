using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Chess_Board
{
    class Kemerait_Chess_Board
    {
        static void Main(string[] args)
        {


            //Theory is to build a chess board ( 8 x 8 )
            //Need a board (2 dimensional, with coordinates)
            //Need Coordinate attributes
            //Characters (pieces) must be able to traverse the board
            //Need characters to traverse the board
            //Need Interface to control how characters traverse the board
            //Need User input
            //Need Process to translate input into Character progression
            //Need Display ouput
            //Characters must be able to attack one another
            //Initial design: move ontop of one another, as in chess
            //This needs to be specified per type of piece
            //Characters need only be distinguished by name
            //Need Name attribute
            //Charcters that are dead do not need to be moved
            //Need Status to determine living versus dead characters
            //Remove dead characters from available choices
            //Characters need to be distinguishable by player ownership
            //Mandate 1: Create a player class that contains a list of characters owned (roster)
            //Play can alternate between players, allowing them to select a Character to act with
            //Player needs to be distinguished by name
            //Need name attribute
            //Mandate 2: Create a Character attribute determining its owner
            //Play can alternate characters, allowing assumed ownership control of specified character




            //Declare Variables
            string trash = "0";
            int[] tempnum = new int[2];
            int charactertracker = 0;
            int boardtracker = 0;
            int playertracker = 0;
            bool cherry = true;
            List<Player> VirtualPlayers = new List<Player>();
            List<Character> VirtualCharacters = new List<Character>();
            List<Board> VirtualBoards = new List<Board>();


            //Introduction Prompt
            Console.Write("Welcome to the Kemerait Chess Board!\n");
            Console.Write("We are going to have you play chess.\n");
            Console.Write("The chess pieces will interact on a virtual environment, or 'Board'.\n");

            //containment loop
            while (cherry == true)
            {
                //spacing
                Console.Write("\n");

                //add players: hard code Optional...
                Console.Write("Add the players to the game.\n");

                //containment loop
                for (int x = 0; x < 2; x++)
                {
                    //Name the Player
                    Console.Write("Please define the player " + (x + 1) + "'s name.\n");
                    trash = Console.ReadLine();

                    //spacing
                    Console.Write("\n");


                    //Declare Player List
                    VirtualPlayers.Add(new Player(trash));

                }

                //alternate players to add their characters
                for (playertracker = 0; playertracker < VirtualPlayers.Count; playertracker++)
                {

                    //add characters: hard code Mandate

                    //create pawns
                    for (int x = 0; x < 8; x++)
                    {
                        //Name the Character
                        trash = "Pawn" + (x + 1);

                        //Declare Character in master list
                        VirtualCharacters.Add(new Character(trash, VirtualPlayers[playertracker].PlayerName, "Pawn"));
                        //Add Character to Player's roster
                        VirtualPlayers[playertracker].Roster.Add(VirtualCharacters[VirtualCharacters.Count - 1]);
                    }

                    //create bishops
                    for (int x = 0; x < 2; x++)
                    {
                        //Name the Character
                        trash = "Bishop" + (x + 1);

                        //Declare Character in master list
                        VirtualCharacters.Add(new Character(trash, VirtualPlayers[playertracker].PlayerName, "Bishop"));
                        //Add Character to Player's roster
                        VirtualPlayers[playertracker].Roster.Add(VirtualCharacters[VirtualCharacters.Count - 1]);
                    }

                    //create knights
                    for (int x = 0; x < 2; x++)
                    {
                        //Name the Character
                        trash = "Knight" + (x + 1);

                        //Declare Character in master list
                        VirtualCharacters.Add(new Character(trash, VirtualPlayers[playertracker].PlayerName, "Knight"));
                        //Add Character to Player's roster
                        VirtualPlayers[playertracker].Roster.Add(VirtualCharacters[VirtualCharacters.Count - 1]);
                    }

                    //create rooks
                    for (int x = 0; x < 2; x++)
                    {
                        //Name the Character
                        trash = "Rook" + (x + 1);

                        //Declare Character in master list
                        VirtualCharacters.Add(new Character(trash, VirtualPlayers[playertracker].PlayerName, "Rook"));
                        //Add Character to Player's roster
                        VirtualPlayers[playertracker].Roster.Add(VirtualCharacters[VirtualCharacters.Count - 1]);
                    }

                    //create queen
                    for (int x = 0; x < 1; x++)
                    {
                        //Name the Character
                        trash = "Queen";

                        //Declare Character in master list
                        VirtualCharacters.Add(new Character(trash, VirtualPlayers[playertracker].PlayerName, "Queen"));
                        //Add Character to Player's roster
                        VirtualPlayers[playertracker].Roster.Add(VirtualCharacters[VirtualCharacters.Count - 1]);
                    }

                    //create king/emporer
                    for (int x = 0; x < 1; x++)
                    {
                        //Name the Character
                        trash = "Emporer";

                        //Declare Character in master list
                        VirtualCharacters.Add(new Character(trash, VirtualPlayers[playertracker].PlayerName, "Emporer"));
                        //Add Character to Player's roster
                        VirtualPlayers[playertracker].Roster.Add(VirtualCharacters[VirtualCharacters.Count - 1]);
                    }
                }
                playertracker = 0;

                //assumes 1 board

                //board dimensions: hard code Mandate

                //board width
                tempnum[0] = 8;

                //board length
                tempnum[1] = 8;

                //Declare Board
                VirtualBoards.Add(new Board(tempnum[0], tempnum[1]));

                //Initial Display output
                //VirtualBoards[boardtracker].DisplayBoard();

                //spacing
                Console.Write("\n");

                //Test Display Virtual Players and their characters
                //DisplayCharacters();

                //places chess pieces on board: hard code Mandate

                //Place players
                AddPlayerstoBoard(VirtualBoards[boardtracker], VirtualPlayers);

                //Place characters
                AddPlayerChessPieces(VirtualBoards[boardtracker], VirtualPlayers);
                
                //spacing
                Console.Write("\n");

                //Containment Loop for all player movements: hard code Alternative
                while (cherry == true)
                {
                    //spacing
                    Console.Write("\n");

                    //Final Display output
                    VirtualBoards[boardtracker].DisplayBoard();

                    //spacing
                    Console.Write("\n");

                    //Choose Character
                    charactertracker = VirtualBoards[boardtracker].ChooseCharacter(VirtualPlayers[playertracker]);

                    //spacing
                    Console.Write("\n");

                    //Final Display output
                    VirtualBoards[boardtracker].DisplayBoard();

                    //spacing
                    Console.Write("\n");

                    //Move Character
                    cherry = VirtualBoards[boardtracker].MoveCharacter(VirtualBoards[boardtracker].BoardPlayers[playertracker].Roster[charactertracker]);

                    //spacing
                    Console.Write("\n");

                    //Final Display output
                    //VirtualBoards[boardtracker].DisplayBoard();

                    //spacing
                    Console.Write("\n");

                    //Test Display Character Status
                    //VirtualBoards[boardtracker].DisplayCharacters(VirtualPlayers[playertracker]);

                    //spacing
                    Console.Write("\n");

                    //change player focus
                    playertracker++;
                    if (playertracker >= VirtualPlayers.Count)
                    {
                        playertracker = 0;
                    }

                    //look for next living character
                    while (VirtualPlayers[playertracker].Status.Equals("Dead"))
                    {
                        playertracker++;
                        if (playertracker >= VirtualPlayers.Count)
                        {
                            playertracker = 0;
                        }
                    }

                    //last man standing check
                    tempnum[0] = 0;
                    tempnum[1] = 0;

                    for (int x = 0; x < VirtualPlayers.Count; x++)
                    {
                        if (VirtualPlayers[x].Status.Equals("Alive"))
                        {
                            tempnum[0]++;
                            tempnum[1] = x;
                        }
                    }
                    if (tempnum[0] == 1)
                    {
                        cherry = false;
                        Console.Write(VirtualPlayers[tempnum[1]].PlayerName + ", Congratulations!  You win!\n");
                    }

                }
                cherry = true;

                //Prompt for Continuation
                cherry = ReturnMenu();

                //reset for next game
                if (cherry == true)
                {
                    for (int x = (VirtualCharacters.Count - 1); x > -1; x--)
                    {
                        VirtualCharacters.Remove(VirtualCharacters[x]);
                    }
                    for (int x = (VirtualBoards.Count - 1); x > -1; x--)
                    {
                        VirtualBoards.Remove(VirtualBoards[x]);
                    }
                    for (int x = (VirtualPlayers.Count - 1); x > -1; x--)
                    {
                        VirtualPlayers.Remove(VirtualPlayers[x]);
                    }
                    charactertracker = 0;
                    boardtracker = 0;
                    //Test Display Character Status
                    DisplayCharacters(VirtualCharacters);
                }

            }
        }

        //displays character names and status
        static void DisplayCharacters(List<Character> templist)
        {
            for (int x = 0; x < templist.Count; x++)
            {
                Console.Write("Character Name\t\tStatus\n");
                Console.Write(templist[x].CharacterName + "\t\t" + templist[x].Status + "\n");
            }

        }

        //adds players to a list of board characters
        static void AddPlayerstoBoard(Board boardname, List<Player> playerlist)
        {
            for (int x = 0; x < playerlist.Count; x++)
            {
                boardname.AddPlayer(playerlist[x]);
            }
        }

        //distributes chess pieces amongst players and places them on the board
        static void AddPlayerChessPieces(Board boardname, List<Player> playerlist)
        {
            //int xcoordinate = 0;
            int ycoordinate = 0;

            //each player's pieces are placed
            for (int x = 0; x < playerlist.Count; x++)
            {
                //each of the pawn pieces are placed
                for (int y = 0; y < 8; y++)
                {
                    //if player one
                    if (x == 0)
                    {
                        //place on 2nd row from top
                        ycoordinate = 6;
                    }
                    //if player two
                    else if (x == 1)
                    {
                        //place on 2nd row from bottom
                        ycoordinate = 1;
                    }


                    boardname.AddCharacter(playerlist[x].Roster[y], y, ycoordinate);
                }

                //if player one
                if (x == 0)
                {
                    //then place on the top row
                    ycoordinate = 7;
                }
                else if (x == 1)
                {
                    //then place on the bottom row
                    ycoordinate = 0;
                }

                //place bishops
                boardname.AddCharacter(playerlist[x].Roster[8], 2, ycoordinate);
                boardname.AddCharacter(playerlist[x].Roster[9], 5, ycoordinate);

                //place knights
                boardname.AddCharacter(playerlist[x].Roster[10], 1, ycoordinate);
                boardname.AddCharacter(playerlist[x].Roster[11], 6, ycoordinate);

                //place rooks
                boardname.AddCharacter(playerlist[x].Roster[12], 0, ycoordinate);
                boardname.AddCharacter(playerlist[x].Roster[13], 7, ycoordinate);

                //place queen
                boardname.AddCharacter(playerlist[x].Roster[14], 3, ycoordinate);

                //place king
                boardname.AddCharacter(playerlist[x].Roster[15], 4, ycoordinate);

            }
        }

        //display menu to play again after game has ended
        static bool ReturnMenu()
        {
            bool cherry = true;
            string trash = "0";

            //containment loop
            while (Convert.ToInt32(trash) != 1 && Convert.ToInt32(trash) != 2)
            {
                Console.Write("Would you like to play again?\n");
                Console.Write("1) Yes\n");
                Console.Write("2) No\n");
                trash = Console.ReadLine();

                //spacing
                Console.Write("\n");

                //if user inputs 1
                if (Convert.ToInt32(trash) == 1)
                {
                    cherry = true;
                }
                else if (Convert.ToInt32(trash) == 2)
                {
                    cherry = false;
                }
                else
                {
                    Console.Write("There seems to be an issue.\n");

                    //spacing
                    Console.Write("\n");

                }



            }
            return cherry;

        }

        //Board with 2 dimensions
        public class Board
        {
            public int MaxWidth;
            public int MaxLength;
            public Character[,] Coordinates;
            private Character Empty;
            public List<Character> BoardCharacters = new List<Character>();
            public List<Player> BoardPlayers = new List<Player>();
            public bool[] enpassant = new bool[16];

            public Board(int width, int length)
            {
                //Board dimensions
                MaxWidth = width;
                MaxLength = length;

                //Array that represents the virtual board with the Board Dimensions
                Coordinates = new Character[MaxWidth, MaxLength];

                //Initialize "Empty" Character
                Empty = new Character("Empty", "Board", "Empty");

                //Initialize all Characters as "Empty"
                for (int x = 0; x < MaxWidth; x++)
                {
                    for (int y = 0; y < MaxLength; y++)
                    {
                        Coordinates[x, y] = Empty;
                    }
                }

                //Initialize en passant boolean array
                for (int x = 0; x < 16; x++)
                {
                    enpassant[x] = false;
                }

            }

            //add character to board
            public void AddCharacter(Character tempname, int xcoordinate, int ycoordinate)
            {
                Coordinates[xcoordinate, ycoordinate] = tempname;
                BoardCharacters.Add(tempname);
            }

            //prompts target player to choose a piece to move
            public int ChooseCharacter(Player tempplayer)
            {
                int tracker = 0;

                tracker = tempplayer.ChooseCharacter();

                return tracker;
            }

            //add a player to the board's player list
            public void AddPlayer(Player tempname)
            {
                BoardPlayers.Add(tempname);
            }

            //display the chess board
            public void DisplayBoard()
            {
                for (int x = (this.MaxLength - 1); x >= 0; x--)
                {
                    for (int y = 0; y < this.MaxWidth; y++)
                    {
                        if (this.Coordinates[y, x].CharacterName.Equals("Empty"))
                        {
                            Console.Write("O");
                        }
                        else
                        {
                            Console.Write(Coordinates[y, x].CharacterName.Substring(0, 1));
                        }

                    }
                    Console.Write("\n");
                }
            }

            //displays all characters that belong to the board
            public void DisplayAllCharacters()
            {
                int xcoordinate = 0;
                int ycoordinate = 0;

                //Headers
                Console.Write("Owner\tCharacter Name\tX, Y\tStatus\n");

                for (int z = 0; z < this.BoardCharacters.Count; z++)
                {

                    //walk through array looking for a match
                    for (int x = 0; x < MaxWidth; x++)
                    {
                        for (int y = 0; y < MaxLength; y++)
                        {
                            //if match is found
                            if (Coordinates[x, y] == BoardCharacters[z] && Coordinates[x, y].Owner == BoardCharacters[z].Owner)
                            {
                                //record coordinates
                                xcoordinate = x;
                                ycoordinate = y;
                            }
                        }
                    }
                    Console.Write(BoardCharacters[z].Owner + "\t" + BoardCharacters[z].CharacterName + "\t\t" + (xcoordinate + 1) + ", " + (ycoordinate + 1) + "\t" + BoardCharacters[z].Status + "\n");
                }

            }

            //display characters for a target player
            public void DisplayCharacters(Player tempplayer)
            {
                int xcoordinate = 0;
                int ycoordinate = 0;

                //Headers
                Console.Write("Owner\tCharacter Name\tX, Y\tStatus\n");

                //walk through players
                for (int w = 0; w < BoardPlayers.Count; w++)
                {
                    //for the target player
                    if (BoardPlayers[w] == tempplayer)
                    {
                        //walk through characters
                        for (int z = 0; z < this.BoardPlayers[z].Roster.Count; z++)
                        {
                            //for each character
                            //walk through array looking for a match
                            for (int x = 0; x < MaxWidth; x++)
                            {
                                for (int y = 0; y < MaxLength; y++)
                                {
                                    //if match is found
                                    if (Coordinates[x, y] == BoardCharacters[z] && Coordinates[x, y].Owner == BoardCharacters[z].Owner)
                                    {
                                        //record coordinates
                                        xcoordinate = x;
                                        ycoordinate = y;
                                    }
                                }
                            }
                            Console.Write(BoardCharacters[z].Owner + "\t" + BoardCharacters[z].CharacterName + "\t\t" + (xcoordinate + 1) + ", " + (ycoordinate + 1) + "\t" + BoardCharacters[z].Status + "\n");
                        }
                    }
                }
            }

            //clears flags for which columns had an enpassant last turn
            public void ClearEnpassants()
            {
                for (int x = 0; x < this.enpassant.Length; x++)
                {
                    this.enpassant[x] = false;
                }
            }

            //determine if there are no options available for character
            public bool OptionCheck(List<int> templist, Character tempname)
            {
                int tempnum = 0;
                bool cherry = true;

                //if there are no options
                if (templist.Count == 0 )
                {
                    Console.Write("There are no options.\n");

                    //target player
                    for (int x = 0; x < BoardPlayers.Count; x++)
                    {
                        if (tempname.Owner == BoardPlayers[x].PlayerName)
                        {
                            //choose and move character again
                            tempnum = ChooseCharacter(BoardPlayers[x]);

                            cherry = MoveCharacter(BoardPlayers[x].Roster[tempnum]);

                            //escape
                            x = BoardPlayers.Count;
                        }

                    }
                    
                    cherry = false;
                    

                }
                //return
                return cherry;
            }

            //determines from which column the character began its move
            public int FindOriginalColumn(Character tempname, int width, int length)
            {
                int originalcolumn = 0;

                //walk through array
                for (int x = 0; x < width; x++)
                {
                    for (int y = 0; y < length; y++)
                    {
                        if (this.Coordinates[x, y] == tempname && this.Coordinates[x, y].Owner == tempname.Owner)
                        {
                            originalcolumn = x;
                            
                            //escape
                            y = MaxLength;
                            x = MaxWidth;
                        }
                    }
                }

                return originalcolumn;
            }

            //determine from which rank the character began its move
            public int FindOriginalRank(Character tempname, int width, int length)
            {
                int originalrank = 0;
                //walk through array
                for (int x = 0; x < width; x++)
                {
                    for (int y = 0; y < length; y++)
                    {
                        if (this.Coordinates[x, y] == tempname && this.Coordinates[x, y].Owner == tempname.Owner)
                        {
                            originalrank = y;

                            //escape
                            y = MaxLength;
                            x = MaxWidth;
                        }
                    }
                }

                return originalrank;
            }

            //deterines a pawn's "forward" direction (down for top, up for bottom)
            public int FindYMovement(Character tempname)
            {
                int ymovement = 0;

                //What's forward?
                //forward is relative to which player is moving
                if (tempname.Owner.Equals(this.BoardCharacters[0].Owner))
                {
                    ymovement = (-1);
                }
                else
                {
                    ymovement = (1);
                }

                return ymovement;
            }


            //determines a pawn's starting rank
            public int FindStartingRank(Character tempname)
            {
                int startingrank = 0;

                //What's forward?
                //forward is relative to which player is moving
                if (tempname.Owner.Equals(this.BoardCharacters[0].Owner))
                {
                    startingrank = 6;
                }
                else
                {
                    startingrank = 1;
                }

                return startingrank;
            }

            //determines if a given character has multiple options or not
            public void SpacesCheck(Character tempname, int maximum)
            {
                if (tempname.Class.Equals("Emporer"))
                {
                    //if the Emporer, 2 - maximum
                    Console.Write((2 - maximum) + " Space");
                }
                else
                {
                    //everyone else 8 - maximum
                    Console.Write((8 - maximum) + " Space");

                    if (8 - maximum > 1)
                    {
                        //if more than one space, make it spaces
                        Console.Write("s");
                    }
                }
            }

            //determines if emporer will be in danger from the next move
            public bool CheckTest(Character tempname, int column, int rank, int xdirection, int ydirection)
            {
                //determine if once the piece is moved to the target space, if the emporer will be in check
                //if the king is being moved, it must instead be determined that he will not be in check after moving.

                bool cherry = false;
                //Character tempcharacter;
                Player tempplayer;

                //find current player
                for (int x = 0; x < BoardPlayers.Count; x++)
                {
                    if( BoardPlayers[x].PlayerName.Equals(tempname.Owner))
                    {
                        tempplayer = BoardPlayers[x];
                    }

                }

                
                
                //if the Emporer is being moved: Coordinates[column + xdirection, rank + ydirection]
                if(tempname.Class.Equals("Emporer"))
                {
                    //determine if the Emporer will be put in danger by moving it here
                    cherry = DangerTest(Coordinates[column + xdirection, rank + ydirection], column + xdirection, rank + ydirection, column + xdirection, rank + ydirection);
                }
                //if not being moved:
                else
                {
                    //find Emporer of the current player
                    for (int y = 0; y < MaxLength; y++)
                    {
                        for (int x = 0; x < MaxWidth; x++)
                        {
                            //if Emporer is found
                            if (Coordinates[x, y].Owner.Equals(tempname.Owner) && Coordinates[x, y].Class.Equals("Emporer"))
                            {
                                //determine if Emporer will be in danger by another piece moving
                                cherry = DangerTest(Coordinates[x, y], x, y, column + xdirection, rank + ydirection);
                            }
                        }
                    }
                }
                return cherry;
            }

            //determine if a character at [x,y] is in danger while a piece is moving to [movecolumn, movetorank]
            public bool DangerTest(Character tempname, int column, int rank, int movetocolumn, int movetorank)
            {
                //always testing the column and rank of the Emporer, regardless of tempname

                //treat tempname's spot as Empty as if it is empty
                

                bool cherry = false;
                int pawnmovement = 0;

                //determine if the space select by the coordinates (column, rank)
                //is in danger of attack



                //direction of pawn threat determined by character's owner
                if (tempname.Owner.Equals(this.BoardPlayers[0].PlayerName))
                {
                    pawnmovement = -1;
                }
                else if (tempname.Owner.Equals(this.BoardPlayers[1].PlayerName))
                {
                    pawnmovement = 1;
                }


                //determine if the tested space is endangered by pawns
                
                //determine the attacking rank is in bounds
                if (rank + pawnmovement > -1 && rank + pawnmovement < MaxLength)
                {
                    //determine if one of the columns is in bounds
                    if (column + 1 < MaxWidth)
                    {
                        //determine if this space contains an enemy pawn
                        if (this.Coordinates[column + 1, rank + pawnmovement].Class.Equals("Pawn") && this.Coordinates[column + 1, rank + pawnmovement].Owner != tempname.Owner)
                        {
                            cherry = true;
                            return cherry;
                        }
                    }

                    //determine if other column is in bounds
                    if (column - 1 > -1)
                    {
                        //determine if this space contains an enemy pawn
                        if (this.Coordinates[column - 1, rank + pawnmovement].Class.Equals("Pawn") && this.Coordinates[column - 1, rank + pawnmovement].Owner != tempname.Owner)
                        {
                            cherry = true;
                            return cherry;
                        }
                    }
                }


                //determine if target space is endangered by knights

                
                //determine if the space East of North contains an enemy knight
                cherry = DangerTestKnightDirectional("EastofNorth", tempname, column, rank);
                if (cherry == true)
                {
                    return cherry;
                }
                
                //determine if the space North of East contains an enemy knight
                cherry = DangerTestKnightDirectional("NorthofEast", tempname, column, rank);
                if (cherry == true)
                {
                    return cherry;
                }

                //determine if the space South of East contains an enemy knight
                cherry = DangerTestKnightDirectional("SouthofEast", tempname, column, rank);
                if (cherry == true)
                {
                    return cherry;
                }

                //determine if the space East of South contains an enemy knight
                cherry = DangerTestKnightDirectional("EastofSouth", tempname, column, rank);
                if (cherry == true)
                {
                    return cherry;
                }

                //determine if the space West of South contains an enemy knight
                cherry = DangerTestKnightDirectional("WestofSouth", tempname, column, rank);
                if (cherry == true)
                {
                    return cherry;
                }

                //determine if the space South of West contains an enemy knight
                cherry = DangerTestKnightDirectional("SouthofWest", tempname, column, rank);
                if (cherry == true)
                {
                    return cherry;
                }

                //determine if the space North of West contains an enemy knight
                cherry = DangerTestKnightDirectional("NorthofWest", tempname, column, rank);
                if (cherry == true)
                {
                    return cherry;
                }

                //determine if target space is endangered by emporers
                //determine if target space is endangered by rooks or queens
                //determine if target space is endangered by bishops or queens
                cherry = DangerTestExpansion(tempname, column, rank, 1, 7, movetocolumn, movetorank);

                
                return cherry;
            }

            //determines if character at [column, rank] is in danger from Knights
            public bool DangerTestKnightDirectional(string Direction, Character tempname, int column, int rank)
            {
                //declare variables
                bool cherry = false;
                int xmovement = 0;
                int ymovement = 0;
                

                //determine x and y movemtns by the direction accepted
                if (Direction.Equals("WestofNorth"))
                {
                    xmovement = -1;
                    ymovement = 2;

                }
                else if (Direction.Equals("EastofNorth"))
                {
                    xmovement = 1;
                    ymovement = 2;

                }
                else if (Direction.Equals("NorthofEast"))
                {
                    xmovement = 2;
                    ymovement = 1;

                }
                else if (Direction.Equals("SouthofEast"))
                {
                    xmovement = 2;
                    ymovement = -1;

                }
                else if (Direction.Equals("EastofSouth"))
                {
                    xmovement = 1;
                    ymovement = -2;

                }
                else if (Direction.Equals("WestofSouth"))
                {
                    xmovement = -1;
                    ymovement = 2;

                }
                else if (Direction.Equals("SouthofWest"))
                {
                    xmovement = -2;
                    ymovement = -1;

                }
                else if (Direction.Equals("NorthofWest"))
                {
                    xmovement = -2;
                    ymovement = 1;

                }



                //determine if upper rank is in bounds
                if (rank + ymovement < MaxLength && rank + ymovement >= 0)
                {
                    if (column + xmovement < MaxWidth && column + xmovement >= 0)
                    {
                        //determine if this space contains an enemy knight
                        if (this.Coordinates[column + xmovement, rank + ymovement].Class.Equals("Knight") && this.Coordinates[column - 1, rank - 2].Owner != tempname.Owner)
                        {
                            cherry = true;
                            return cherry;
                        }
                    }
                    else
                    {
                        cherry = false;
                    }
                }
                else
                {
                    cherry = false;
                }

                return cherry;
            }

            //determines if given character is in danger from rooks, bishops, queens or emporers
            public bool DangerTestExpansion(Character tempname, int column, int rank, int min, int maxrange, int movetocolumn, int movetorank)
            {
                //always testing the column and rank of the Emporer, regardless of tempname
                //iterates from counter to maxrange

                bool cherry = false;
                int counter = 1;

                //if no danger has been found, then continue
                if (cherry == false)
                {
                    //Start at North West check
                    cherry = DangerTestExpansionDirectional("NorthWest", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                    //move to North direction
                    cherry = DangerTestExpansionDirectional("North", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                    //move to NorthEast direction
                    cherry = DangerTestExpansionDirectional("NorthEast", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                    //move to East direction
                    cherry = DangerTestExpansionDirectional("East", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                    //move to SouthEast direction
                    cherry = DangerTestExpansionDirectional("SouthEast", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                    //move to South direction
                    cherry = DangerTestExpansionDirectional("South", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                    //move to SouthWest direction
                    cherry = DangerTestExpansionDirectional("SouthWest", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                    //move to West direction
                    cherry = DangerTestExpansionDirectional("West", tempname, column, rank, counter, maxrange, movetocolumn, movetorank);
                    if (cherry == true)
                    {
                        return cherry;
                    }

                }
                
                return cherry;
            }

            //determines if given character is in danger from rooks, bishops, queens or emporers in the given direction
            public bool DangerTestExpansionDirectional(string Direction, Character tempname, int column, int rank, int counter, int maxrange, int movetocolumn, int movetorank)
            {
                //declare variables
                bool cherry = false;
                int xmovement = 0;
                int ymovement = 0;
                bool flag = true;

                //determine x and y movemtns by the direction accepted
                if( Direction.Equals("NorthWest"))
                {
                    xmovement = -1 * counter;
                    ymovement = counter;

                }
                else if( Direction.Equals("North"))
                {
                    xmovement = 0;
                    ymovement = counter;

                }
                else if (Direction.Equals("NorthEast"))
                {
                    xmovement = counter;
                    ymovement = counter;

                }
                else if (Direction.Equals("East"))
                {
                    xmovement = counter;
                    ymovement = 0;

                }
                else if (Direction.Equals("SouthEast"))
                {
                    xmovement = counter;
                    ymovement = -1 * counter;

                }
                else if (Direction.Equals("South"))
                {
                    xmovement = 0;
                    ymovement = counter;

                }
                else if (Direction.Equals("SouthWest"))
                {
                    xmovement = -1 * counter;
                    ymovement = -1 * counter;

                }
                else if (Direction.Equals("West"))
                {
                    xmovement = -1 * counter;
                    ymovement = 0;

                }
                


                //determine if upper rank is in bounds
                if (rank + ymovement < MaxLength && rank + ymovement >= 0)
                {
                    if (column + xmovement < MaxWidth && column + xmovement >= 0)
                    {
                        //determine what this space contains:
                        //it could contain an ally
                        //it could contain the ally that hasn't quite moved yet
                        //it could contain an enemy
                        //it could contain an enemy king, queen, bishop, rook, knight, pawn
                            //enemy could be threatening
                        //it could be empty
                        //it could be the square where the moving piece hasn't gotten to yet

                        //if target space is an ally
                        if (this.Coordinates[column + xmovement, rank + ymovement].Owner == tempname.Owner)
                        {
                            //determine if this ally is tempname, which is going to move....
                            if (this.Coordinates[column + xmovement, rank + ymovement].Owner == tempname.Owner)
                            {
                                //keep checking this direction
                                flag = true;
                                //no danger

                            }
                            //if not
                            else
                            {
                                //stop checking this direction
                                flag = false;
                                //no danger
                            }
                        }
                        //if target space is an enemy
                        else if (this.Coordinates[column + xmovement, rank + ymovement].Owner != tempname.Owner)
                        {
                            //determine if this enemy is threatening
                            //determine if this space contains an enemy Emporer on the first run
                            if (counter == 1 && this.Coordinates[column + xmovement, rank + ymovement].Class.Equals("Emporer"))
                            {
                                cherry = true;
                                return cherry;
                            }
                            //determine if this space contains an enemy Queen
                            else if (this.Coordinates[column + xmovement, rank + ymovement].Class.Equals("Queen"))
                            {
                                cherry = true;
                                return cherry;
                            }
                            //determine if this space contains an enemy Bishop
                            else if (this.Coordinates[column + xmovement, rank + ymovement].Class.Equals("Bishop"))
                            {
                                cherry = true;
                                return cherry;
                            }
                            else
                            {
                                cherry = false;
                            }

                        }
                        //if target space is the empty space that tempname is moving to
                        //Coordinates[movetocolumn, movetorank]
                        else if (this.Coordinates[column + xmovement, rank + ymovement] == Coordinates[movetocolumn, movetorank])
                        {
                            //stop checking this direction
                            flag = false;
                            //no danger

                        }
                        //if empty
                        else if (this.Coordinates[column + xmovement, rank + ymovement] == Empty)
                        {
                            //keep checking this directino
                            flag = true;
                            //no danger
                        }
                    }
                    else
                    {
                        cherry = false;
                    }
                }
                else
                {
                    cherry = false;
                }

                //if flag is true and counter is under maximum, then keep checking this direction
                if (flag == true && ((counter+1) <= maxrange))
                {
                    cherry = DangerTestExpansionDirectional(Direction, tempname, column, rank, (counter+1), maxrange, movetocolumn, movetorank);
                }
                //else, stop checking this direction


                return cherry;
            }
            
            //determines if there are moves available based on a direction and a given range
            public int CheckDirectional(string Direction, Character tempname, List<int> columnlist, List<int> ranklist, int targettracker, int originalcolumn, int MaxWidth, int originalrank, int MaxLength, int maximum)
            {
                int xmovement = 0;
                int ymovement = 0;

                //determine x and y movements by the direction accepted
                if (Direction.Equals("NorthWest"))
                {
                    xmovement = -1 ;
                    ymovement = 1;

                }
                else if (Direction.Equals("North"))
                {
                    xmovement = 0;
                    ymovement = 1;

                }
                else if (Direction.Equals("NorthEast"))
                {
                    xmovement = 1;
                    ymovement = 1;

                }
                else if (Direction.Equals("East"))
                {
                    xmovement = 1;
                    ymovement = 0;

                }
                else if (Direction.Equals("SouthEast"))
                {
                    xmovement = 1;
                    ymovement = -1;

                }
                else if (Direction.Equals("South"))
                {
                    xmovement = 0;
                    ymovement = 1;

                }
                else if (Direction.Equals("SouthWest"))
                {
                    xmovement = -1;
                    ymovement = -1;

                }
                else if (Direction.Equals("West"))
                {
                    xmovement = -1;
                    ymovement = 0;

                }

                //run from maximum to zero
                if (maximum > 0)
                {
                    //if rank is in bounds
                    if ((originalrank + ymovement) < MaxLength && (originalrank + ymovement) >= 0)
                    {
                        //if column is in bounds
                        if ((originalcolumn + xmovement) < MaxLength && (originalcolumn + xmovement) >= 0)
                        {
                            //friendly occupation checks
                            if (this.Coordinates[(originalcolumn + xmovement), (originalrank + ymovement)].Owner != tempname.Owner)
                            {
                                //Emporer danger check
                                if ((CheckTest(tempname, originalcolumn, originalrank, xmovement, ymovement) == false))
                                {
                                    columnlist.Add(originalcolumn + xmovement);
                                    ranklist.Add(originalrank + ymovement);

                                    //enemy occupation check (if not empty)
                                    if (this.Coordinates[(originalcolumn + xmovement), (originalrank + ymovement)].Owner != Empty.Owner)
                                    {
                                        Console.Write("Option " + (targettracker + 1) + ") Capture ");

                                        //Check for space(s)
                                        SpacesCheck(tempname, maximum);

                                        //Cardinal direction
                                        Console.Write(" " + Direction + " \n");

                                        //increment tracker
                                        targettracker++;
                                    }
                                    else
                                    {
                                        Console.Write("Option " + (targettracker + 1) + ") ");

                                        //Check for space(s)
                                        SpacesCheck(tempname, maximum);

                                        //Cardinal direction
                                        Console.Write(" " + Direction + " \n");

                                        //increment tracker
                                        targettracker++;

                                        //alter maximum
                                        maximum -= 1;

                                        //alter original coordinates
                                        originalcolumn -= 1;
                                        originalrank += 1;

                                        //check again
                                        targettracker = CheckDirectional(Direction, tempname, columnlist, ranklist, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, maximum);
                                    }
                                }
                            }
                        }
                    }
                }

                return targettracker;
            }

            //determines available forward moves for a character that is a pawn
            public int CheckPawnForward(Character tempname, List<int> columnlist, List<int> ranklist, int targettracker, int originalcolumn, int originalrank, int startingrank, int MaxLength, int ymovement)
            {
                //out of bounds check 
                if ((originalrank + ymovement) < MaxLength && (originalrank + ymovement) > -1)
                {
                    //friendly occupation, enemy occupation checks
                    if (this.Coordinates[originalcolumn, (originalrank + ymovement)].Owner != tempname.Owner)
                    {
                        columnlist.Add(originalcolumn);
                        ranklist.Add(originalrank + ymovement);
                        Console.Write("Option " + (targettracker + 1) + ") Forward\n");
                        targettracker++;

                        //2) 2 Spaces forward if on original rank
                        if (originalrank == startingrank)
                        {
                            //out of bounds check, friendly occupation, enemy occupation checks
                            if ((originalrank + (2 * ymovement)) < MaxLength && (originalrank + (2 * ymovement)) > -1 && this.Coordinates[(originalcolumn), (originalrank + (2 * ymovement))].Owner == Empty.Owner)
                            {
                                columnlist.Add(originalcolumn);
                                ranklist.Add(originalrank + (2 * ymovement));
                                Console.Write("Option " + (targettracker + 1) + ") Twice Forward\n");
                                targettracker++;

                            }
                        }
                    }
                }

                return targettracker;
            }

            //determines if a character that is a pawn may capture a piece to the east
            public int CheckPawnForwardEast(Character tempname, List<int> columnlist, List<int> ranklist, int targettracker, int originalcolumn, int originalrank, int startingrank, int MaxLength, int ymovement)
            {
                //out of bounds check
                if ((originalrank + ymovement) < MaxLength && (originalrank + ymovement) > -1 && (originalcolumn + 1) < MaxWidth)
                {
                    //enemy occupation checks
                    if (this.Coordinates[(originalcolumn + 1), originalrank + ymovement].Owner != tempname.Owner && this.Coordinates[(originalcolumn + 1), originalrank + ymovement].Owner != Empty.Owner)
                    {
                        columnlist.Add(originalcolumn + 1);
                        ranklist.Add(originalrank + ymovement);
                        Console.Write("Option " + (targettracker + 1) + ") Capture Forward East\n");
                        targettracker++;

                    }
                }
                return targettracker;
            }

            //determines if a character that is a pawn may capture a piece to the west
            public int CheckPawnForwardWest(Character tempname, List<int> columnlist, List<int> ranklist, int targettracker, int originalcolumn, int originalrank, int startingrank, int MaxLength, int ymovement)
            {
                //out of bounds check
                if ((originalrank + ymovement) < MaxLength && (originalrank + ymovement) > -1 && (originalcolumn - 1) > -1 )
                {
                    //enemy occupation checks
                    if (this.Coordinates[(originalcolumn - 1), originalrank + ymovement].Owner != tempname.Owner && this.Coordinates[(originalcolumn - 1), originalrank + ymovement].Owner != Empty.Owner)
                    {
                        columnlist.Add(originalcolumn - 1);
                        ranklist.Add(originalrank + ymovement);
                        Console.Write("Option " + (targettracker + 1) + ") Capture Forward West\n");
                        targettracker++;
                    }
                }
                return targettracker;
            }
            
            //determines if a character that is a knight has available moves and/or captures
            public int CheckKnightDirectional(string Direction, Character tempname, List<int> columnlist, List<int> ranklist, int targettracker, int originalcolumn, int MaxWidth, int originalrank, int MaxLength)
            {
                int xmovement = 0;
                int ymovement = 0;

                //determine x and y movements by the direction accepted
                if (Direction.Equals("WestofNorth"))
                {
                    xmovement = -1;
                    ymovement = 2;

                }
                else if (Direction.Equals("EastofNorth"))
                {
                    xmovement = 1;
                    ymovement = 2;

                }
                else if (Direction.Equals("NorthofEast"))
                {
                    xmovement = 2;
                    ymovement = 1;

                }
                else if (Direction.Equals("SouthofEast"))
                {
                    xmovement = 2;
                    ymovement = -1;

                }
                else if (Direction.Equals("EastofSouth"))
                {
                    xmovement = 1;
                    ymovement = -2;

                }
                else if (Direction.Equals("WestofSouth"))
                {
                    xmovement = -1;
                    ymovement = 2;

                }
                else if (Direction.Equals("SouthofWest"))
                {
                    xmovement = -2;
                    ymovement = -1;

                }
                else if (Direction.Equals("NorthofWest"))
                {
                    xmovement = -2;
                    ymovement = 1;

                }


                //if rank is in bounds
                if ((originalrank + ymovement) < MaxLength && (originalrank + ymovement) >= 0)
                {
                    //if column is in bounds
                    if ((originalcolumn + xmovement) < MaxWidth && (originalcolumn + xmovement) >= 0)
                    {

                        //friendly occupation checks
                        if (this.Coordinates[(originalcolumn + xmovement), (originalrank + ymovement)].Owner != tempname.Owner)
                        {
                            columnlist.Add(originalcolumn + xmovement);
                            ranklist.Add(originalrank + ymovement);

                            //enemy occupation check (if not empty)
                            if (this.Coordinates[originalcolumn + xmovement, (originalrank + ymovement)].Owner != Empty.Owner)
                            {
                                Console.Write("Option " + (targettracker + 1) + ") Capture " + Direction + " \n");
                            }
                            else
                            {
                                Console.Write("Option " + (targettracker + 1) + ") " + Direction + " \n");
                            }
                            targettracker++;
                        }
                    }
                }
                return targettracker;
            }
            
            

            //determine if player has lost the game
            public void CheckObjective()
            {
                //walk through players on board
                for (int x = 0; x < this.BoardPlayers.Count; x++)
                {
                    //check to see player should be dead
                    if (BoardPlayers[x].Roster[15].Status.Equals("Dead"))
                    {
                        BoardPlayers[x].DeadPlayer();
                    }
                }
            }

            //moves a character based on its class
            public bool MoveCharacter(Character tempname)
            {
                //string trash = "0";
                //int direction;
                bool cherry = true;

                //Prompt for movement
                Console.Write(tempname.Owner + ", please move " + tempname.CharacterName + " on the board:\n");

                //check what piece is being moved
                //->option three: add a type/class/job attribute to characters
                if (tempname.Class.Equals("Pawn"))
                {
                    //move pawn
                    cherry = this.MovePawn(tempname);
                }
                else if (tempname.Class.Equals("Bishop"))
                {
                    //move bishop
                    cherry = this.MoveBishop(tempname);
                }
                else if (tempname.Class.Equals("Knight"))
                {
                    //move knight
                    cherry = this.MoveKnight(tempname);
                }
                else if (tempname.Class.Equals("Rook"))
                {
                    //move rook
                    cherry = this.MoveRook(tempname);
                }
                else if (tempname.Class.Equals("Queen"))
                {
                    //move queen
                    cherry = this.MoveQueen(tempname);
                }
                else if (tempname.Class.Equals("Emporer"))
                {
                    //move emporer/king
                    cherry = this.MoveEmporer(tempname);
                }

                //check to see if game is over
                CheckObjective();

                return cherry;
            }

            //moves a character that is an Emporer
            public bool MoveEmporer(Character tempname)
            {
                List<int> targetcolumns = new List<int>();
                List<int> targetranks = new List<int>();
                int targettracker = 0;
                string trash = "0";
                Character original;
                int originalrank = 0;
                int originalcolumn = 0;
                bool cherry = true;
                //int tempnum = -1;

                //Find original coordiantes
                originalcolumn = FindOriginalColumn(tempname, MaxWidth, MaxLength);
                originalrank =  FindOriginalRank(tempname, MaxWidth, MaxLength);
                original = Coordinates[originalcolumn, originalrank];

                //Find each target space
                //report options available to move
                Console.Write("Please, select an option.\n");
                Console.Write("or # to quit.\n");

                //spacing
                Console.Write("\n");

                //Emporer's can move 1 space in 8 directions
                //Determine if it is out of bounds, empty or occupied by another player

                targettracker = 0;

                //1) Up
                targettracker = CheckDirectional("North", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);

                //2) Up-Right
                targettracker = CheckDirectional("NorthEast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);

                //3) Right
                targettracker = CheckDirectional("East", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);
                
                //4)Down-Right
                targettracker = CheckDirectional("SouthEast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);
                
                //5) Down
                targettracker = CheckDirectional("South", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);
                
                //6) Down-Left
                targettracker = CheckDirectional("SouthWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);
                
                //7) Left
                targettracker = CheckDirectional("West", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);
                
                //8) Up-Left
                targettracker = CheckDirectional("NorthWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 1);
                
                //check for options
                cherry = OptionCheck(targetcolumns, tempname);

                //if there were no options for this character move on
                if (cherry == false)
                {
                }
                else
                {
                    trash = "-1";
                    while (Convert.ToInt32(trash) < 0 || Convert.ToInt32(trash) > targetcolumns.Count)
                    {
                        //player selects a target space from options
                        Console.Write("Enter an option #:");
                        trash = Console.ReadLine();
                    }

                    //check user input and move character
                    if (trash.Equals("#"))
                    {
                        //stop
                        cherry = false;
                    }
                    else
                    {
                        //report target space desired
                        targettracker = (Convert.ToInt32(trash) - 1);

                        //move character
                        //if this space is occupied
                        if (Coordinates[targetcolumns[targettracker], targetranks[targettracker]] != this.Empty)
                        {
                            //then kill occupying character
                            Coordinates[targetcolumns[targettracker], targetranks[targettracker]].DeadCharacter(); ;
                        }
                        else
                        {
                        }
                        //change position
                        Coordinates[targetcolumns[targettracker], targetranks[targettracker]] = tempname;
                        //remove old character
                        Coordinates[originalcolumn, originalrank] = this.Empty;


                    }
                }
                cherry = true;

                //return the target space (space in target direction)
                return cherry;
            }


            //move a character that is a queen
            public bool MoveQueen(Character tempname)
            {
                List<int> targetcolumns = new List<int>();
                List<int> targetranks = new List<int>();
                int targettracker = 0;
                string trash = "0";
                Character original;
                int originalrank = 0;
                int originalcolumn = 0;
                bool cherry = true;
                //int tempnum = -1;

                //Find original coordiantes
                originalcolumn = FindOriginalColumn(tempname, MaxWidth, MaxLength);
                originalrank = FindOriginalRank(tempname, MaxWidth, MaxLength);
                original = Coordinates[originalcolumn, originalrank];

                //Find each target space
                //report options available to move
                Console.Write("Please, select an option.\n");
                Console.Write("or # to quit.\n");

                //spacing
                Console.Write("\n");

                //Queens can move any number of spaces in 8 directions
                //Determine if it is out of bounds, empty or occupied by another player

                targettracker = 0;

                //1) Up
                targettracker = CheckDirectional("North", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //2) Up-Right
                targettracker = CheckDirectional("NorthEast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //3) Right
                targettracker = CheckDirectional("East", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //4)Down-Right
                targettracker = CheckDirectional("SouthEast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //5) Down
                targettracker = CheckDirectional("South", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //6) Down-Left
                targettracker = CheckDirectional("SouthWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //7) Left
                targettracker = CheckDirectional("West", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //8) Up-Left
                targettracker = CheckDirectional("NorthWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //check for options
                cherry = OptionCheck(targetcolumns, tempname);

                //if there were no options for this character move on
                if (cherry == false)
                {
                }
                else
                {

                    trash = "-1";
                    while (Convert.ToInt32(trash) < 0 || Convert.ToInt32(trash) > targetcolumns.Count)
                    {
                        //player selects a target space from options
                        Console.Write("Enter an option #:");
                        trash = Console.ReadLine();
                    }

                    //check user input and move character
                    if (trash.Equals("#"))
                    {
                        //stop
                        cherry = false;
                    }
                    else
                    {
                        //report target space desired
                        targettracker = (Convert.ToInt32(trash) - 1);

                        //move character
                        //if this space is occupied
                        if (Coordinates[targetcolumns[targettracker], targetranks[targettracker]] != this.Empty)
                        {
                            //then kill occupying character
                            Coordinates[targetcolumns[targettracker], targetranks[targettracker]].DeadCharacter(); ;
                        }
                        else
                        {
                        }
                        //change position
                        Coordinates[targetcolumns[targettracker], targetranks[targettracker]] = tempname;
                        //remove old character
                        Coordinates[originalcolumn, originalrank] = this.Empty;


                    }
                }
                //return the target space (space in target direction)
                return cherry;
            }

            //moves a character that is a Bishop
            public bool MoveBishop(Character tempname)
            {
                List<int> targetcolumns = new List<int>();
                List<int> targetranks = new List<int>();
                int targettracker = 0;
                string trash = "0";
                Character original;
                int originalrank = 0;
                int originalcolumn = 0;
                bool cherry = true;
                //int tempnum = -1;

                //Find original coordiantes
                originalcolumn = FindOriginalColumn(tempname, MaxWidth, MaxLength);
                originalrank = FindOriginalRank(tempname, MaxWidth, MaxLength);
                original = Coordinates[originalcolumn, originalrank];

                //Find each target space
                //report options available to move
                Console.Write("Please, select an option.\n");
                Console.Write("or # to quit.\n");

                //spacing
                Console.Write("\n");

                //Emporer's can move 1 space in 8 directions
                //Determine if it is out of bounds, empty or occupied by another player

                targettracker = 0;

                //1) Up-Right
                targettracker = CheckDirectional("Northeast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //2)Down-Right
                targettracker = CheckDirectional("SouthEast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //3) Down-Left
                targettracker = CheckDirectional("SouthWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //4) Up-Left
                targettracker = CheckDirectional("NorthWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //check for options
                cherry = OptionCheck(targetcolumns, tempname);

                //if there were no options for this character move on
                if (cherry == false)
                {
                }
                else
                {

                    trash = "-1";
                    while (Convert.ToInt32(trash) < 0 || Convert.ToInt32(trash) > targetcolumns.Count)
                    {
                        //player selects a target space from options
                        Console.Write("Enter an option #:");
                        trash = Console.ReadLine();
                    }

                    //check user input and move character
                    if (trash.Equals("#"))
                    {
                        //stop
                        cherry = false;
                    }
                    else
                    {
                        //report target space desired
                        targettracker = (Convert.ToInt32(trash) - 1);

                        //move character
                        //if this space is occupied
                        if (Coordinates[targetcolumns[targettracker], targetranks[targettracker]] != this.Empty)
                        {
                            //then kill occupying character
                            Coordinates[targetcolumns[targettracker], targetranks[targettracker]].DeadCharacter(); ;
                        }
                        else
                        {
                        }
                        //change position
                        Coordinates[targetcolumns[targettracker], targetranks[targettracker]] = tempname;
                        //remove old character
                        Coordinates[originalcolumn, originalrank] = this.Empty;


                    }
                }
                //return the target space (space in target direction)
                return cherry;
            }

            //move a character that is a rook
            public bool MoveRook(Character tempname)
            {
                List<int> targetcolumns = new List<int>();
                List<int> targetranks = new List<int>();
                int targettracker = 0;
                string trash = "0";
                Character original;
                int originalrank = 0;
                int originalcolumn = 0;
                bool cherry = true;
                //int tempnum = -1;

                //Find original coordiantes
                originalcolumn = FindOriginalColumn(tempname, MaxWidth, MaxLength);
                originalrank = FindOriginalRank(tempname, MaxWidth, MaxLength);
                original = Coordinates[originalcolumn, originalrank];

                //Find each target space
                //report options available to move
                Console.Write("Please, select an option.\n");
                Console.Write("or # to quit.\n");

                //spacing
                Console.Write("\n");

                //Emporer's can move 1 space in 8 directions
                //Determine if it is out of bounds, empty or occupied by another player

                targettracker = 0;

                //1) Up
                targettracker = CheckDirectional("North", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //2) Right
                targettracker = CheckDirectional("East", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //3) Down
                targettracker = CheckDirectional("South", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //4) Left
                targettracker = CheckDirectional("West", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength, 7);

                //check for options
                cherry = OptionCheck(targetcolumns, tempname);

                //if there were no options for this character move on
                if (cherry == false)
                {
                }
                else
                {

                    trash = "-1";
                    while (Convert.ToInt32(trash) < 0 || Convert.ToInt32(trash) > targetcolumns.Count)
                    {
                        //player selects a target space from options
                        Console.Write("Enter an option #:");
                        trash = Console.ReadLine();
                    }

                    //check user input and move character
                    if (trash.Equals("#"))
                    {
                        //stop
                        cherry = false;
                    }
                    else
                    {
                        //report target space desired
                        targettracker = (Convert.ToInt32(trash) - 1);

                        //move character
                        //if this space is occupied
                        if (Coordinates[targetcolumns[targettracker], targetranks[targettracker]] != this.Empty)
                        {
                            //then kill occupying character
                            Coordinates[targetcolumns[targettracker], targetranks[targettracker]].DeadCharacter(); ;
                        }
                        else
                        {
                        }
                        //change position
                        Coordinates[targetcolumns[targettracker], targetranks[targettracker]] = tempname;
                        //remove old character
                        Coordinates[originalcolumn, originalrank] = this.Empty;


                    }
                }
                //return the target space (space in target direction)
                return cherry;
            }

            //move a character that is a pawn
            public bool MovePawn(Character tempname)
            {
                List<int> targetcolumns = new List<int>();
                List<int> targetranks = new List<int>();
                int targettracker = 0;
                string trash = "0";
                Character original = this.Empty;
                bool cherry = true;
                int ymovement = 0;
                int xmovement = 0;
                int startingrank = 0;
                int originalrank = 0;
                int originalcolumn = 0;
                int tempnum = -1;

                //Find "Forward"
                ymovement = FindYMovement(tempname);

                //Find starting ranks
                startingrank = FindStartingRank(tempname);

                //Find original coordiantes
                originalcolumn = FindOriginalColumn(tempname, MaxWidth, MaxLength);
                originalrank = FindOriginalRank(tempname, MaxWidth, MaxLength);
                original = Coordinates[originalcolumn, originalrank];

                //Find each target space
                //report options available to move
                Console.Write("Please, select an option.\n");
                Console.Write("or # to quit.\n");

                //spacing
                Console.Write("\n");

                targettracker = 0;

                //Determine if it is out of bounds, empty or occupied by another player

                //1) 1 Space forward & 2) 2 Spaces forward
                targettracker = CheckPawnForward(tempname, targetcolumns, targetranks, targettracker, originalcolumn, originalrank, startingrank, MaxLength, ymovement);

                //3) Forward-East if occupied by an enemy
                targettracker = CheckPawnForwardEast(tempname, targetcolumns, targetranks, targettracker, originalcolumn, originalrank, startingrank, MaxLength, ymovement);
                
                //4) Forward-West if occupied by an enemy
                targettracker = CheckPawnForwardWest(tempname, targetcolumns, targetranks, targettracker, originalcolumn, originalrank, startingrank, MaxLength, ymovement);

                //5) Enpassant Forward-East:
                //if target pawn is on the appropriate rank (4 or 5)
                //if enemy pawn just moved two spaces in eastward column
                //out of bounds check
                if ((originalrank + ymovement) < MaxLength && (originalrank + ymovement) > -1 && (originalcolumn + 1) < MaxWidth)
                {
                    //(enemy occupation checks for space east of target piece)
                    if (this.Coordinates[(originalcolumn + 1), originalrank].Owner != Empty.Owner && this.Coordinates[(originalcolumn + 1), originalrank].Owner != tempname.Owner)
                    {
                        //en passant checks
                        if ((this.enpassant[(originalcolumn + 1)] == true && originalrank == 3) || (originalrank == 4 && this.enpassant[((originalcolumn + 8) + 1)] == true))
                        {
                            targetcolumns.Add(originalcolumn + 1);
                            targetranks.Add(originalrank + ymovement);
                            Console.Write("Option " + (targettracker + 1) + ") En Passant East\n");
                            targettracker++;

                            //store enpassant option
                            tempnum = targetcolumns.Count - 1;
                            xmovement = 1;

                        }
                    }
                }



                //6) Enpassant Forward-West:
                //if target pawn is on the appropriate rank (4 or 5)
                //out of bounds check
                if ((originalrank + ymovement) < MaxLength && (originalrank + ymovement) > -1 && (originalcolumn - 1) > -1)
                {
                    //(enemy occupation checks for space west of target piece)
                    if (this.Coordinates[(originalcolumn - 1), originalrank].Owner != Empty.Owner && this.Coordinates[(originalcolumn - 1), originalrank].Owner != tempname.Owner)
                    {
                        //if enemy pawn just moved two spaces in eastward column
                        if ((this.enpassant[(originalcolumn - 1)] == true && originalrank == 3) || (originalrank == 4 && this.enpassant[((originalcolumn + 8) - 1)] == true))
                        {
                            targetcolumns.Add(originalcolumn - 1);
                            targetranks.Add(originalrank + ymovement);
                            Console.Write("Option " + (targettracker + 1) + ") En Passant West\n");
                            targettracker++;


                            //store indeoriginalcolumn of enpassant option
                            tempnum = targetcolumns.Count - 1;
                            xmovement = (-1);
                        }
                    }
                }

                //check for options
                cherry = OptionCheck(targetcolumns, tempname);

                //if there were no options for this character move on
                if (cherry == false)
                {
                }
                else
                {

                    trash = "-1";
                    while (Convert.ToInt32(trash) < 0 || Convert.ToInt32(trash) > targetcolumns.Count)
                    {
                        //player selects a target space from options
                        Console.Write("Enter an option #:");
                        trash = Console.ReadLine();
                    }

                    //check user input and move character
                    if (trash.Equals("#"))
                    {
                        //stop
                        cherry = false;
                        return cherry;
                    }
                    else
                    {
                        //report target space desired
                        targettracker = (Convert.ToInt32(trash) - 1);

                        //clear en passant
                        ClearEnpassants();

                        //move character
                        //if piece is using en passant
                        if (targettracker == tempnum)
                        {
                            //then kill character occupying the space behind target piece
                            this.Coordinates[(originalcolumn + xmovement), originalrank].DeadCharacter();
                            //empty space (remove the body)
                            this.Coordinates[(originalcolumn + xmovement), originalrank] = this.Empty;
                        }

                        //if target space is a 2 space move
                        else if (targetcolumns[targettracker] == originalcolumn && targetranks[targettracker] == (originalrank + 2 * ymovement))
                        {
                            //then throw the enpassant flag for the appropriate column for the appropriate player
                            if (tempname.Owner == BoardCharacters[0].Owner)
                            {
                                this.enpassant[originalcolumn + 8] = true;
                            }
                            else
                            {
                                this.enpassant[originalcolumn] = true;
                            }
                        }
                        //if target space is a normal move
                        //if this space is occupied
                        else if (Coordinates[targetcolumns[targettracker], targetranks[targettracker]] != this.Empty)
                        {
                            //then kill occupying character
                            Coordinates[targetcolumns[targettracker], targetranks[targettracker]].DeadCharacter(); ;
                        }
                        else
                        {
                        }

                        //change position
                        Coordinates[targetcolumns[targettracker], targetranks[targettracker]] = tempname;

                        //remove old character
                        Coordinates[originalcolumn, originalrank] = this.Empty;

                    }
                }
                cherry = true;

                //return the target space (space in target direction)
                return cherry;
            }

            //move a character that is a Knight
            public bool MoveKnight(Character tempname)
            {
                List<int> targetcolumns = new List<int>();
                List<int> targetranks = new List<int>();
                int targettracker = 0;
                string trash = "0";
                Character original = this.Empty;
                bool cherry = true;
                int originalrank = 0;
                int originalcolumn = 0;
                

                
                //Find original coordiantes
                originalcolumn = FindOriginalColumn(tempname, MaxWidth, MaxLength);
                originalrank = FindOriginalRank(tempname, MaxWidth, MaxLength);
                original = Coordinates[originalcolumn, originalrank];


                //Find each target space
                //report options available to move
                Console.Write("Please, select an option.\n");
                Console.Write("or # to quit.\n");

                //spacing
                Console.Write("\n");

                targettracker = 0;

                //Determine if it is out of bounds, empty or occupied by another player

                //1) 2 Space North, 1 Spaces East
                targettracker = CheckKnightDirectional("EastofNorth", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //2) 1 Space North, 2 Spaces East
                targettracker = CheckKnightDirectional("NorthofEast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //3) 1 Space South, 2 Spaces East
                targettracker = CheckKnightDirectional("SouthofEast", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //4) 2 Spaces South, 1 Space East
                targettracker = CheckKnightDirectional("EastofSouth", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //5) 2 Spaces South, 1 Spaces West
                targettracker = CheckKnightDirectional("WestofSouth", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //6) 1 Space South, 2 Spaces West
                targettracker = CheckKnightDirectional("SouthofWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //7) 1 Space North, 2 Spaces West
                targettracker = CheckKnightDirectional("NorthofWest", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //8) 2 Spaces North, 1 Space West
                targettracker = CheckKnightDirectional("WestofNorth", tempname, targetcolumns, targetranks, targettracker, originalcolumn, MaxWidth, originalrank, MaxLength);

                //check for options
                cherry = OptionCheck(targetcolumns, tempname);

                //if there were no options for this character move on
                if (cherry == false)
                {
                }
                else
                {

                    trash = "-1";
                    while (Convert.ToInt32(trash) < 0 || Convert.ToInt32(trash) > targetcolumns.Count)
                    {
                        //player selects a target space from options
                        Console.Write("Enter an option #:");
                        trash = Console.ReadLine();
                    }

                    //check user input and move character
                    if (trash.Equals("#"))
                    {
                        //stop
                        cherry = false;
                        return cherry;
                    }
                    else
                    {
                        //report target space desired
                        targettracker = (Convert.ToInt32(trash) - 1);

                        //clear en passant
                        ClearEnpassants();

                        //move character
                        //if this space is occupied
                        if (Coordinates[targetcolumns[targettracker], targetranks[targettracker]] != this.Empty)
                        {
                            //then kill occupying character
                            Coordinates[targetcolumns[targettracker], targetranks[targettracker]].DeadCharacter(); ;
                        }
                        else
                        {
                        }

                        //change position
                        Coordinates[targetcolumns[targettracker], targetranks[targettracker]] = tempname;

                        //remove old character
                        Coordinates[originalcolumn, originalrank] = this.Empty;

                    }
                }
                //return the target space (space in target direction)
                return cherry;
            }

        }

            //Character with name
            public class Character
            {
                public string CharacterName;
                public string Status;
                public string Owner;
                public string Class;

                public Character(string cname, string oname, string cname2)
                {
                    CharacterName = cname;
                    Owner = oname;
                    Status = "Alive";
                    Class = cname2;
                }

                public void DeadCharacter()
                {
                    Status = "Dead";
                }

                public void RessurectCharacter()
                {
                    Status = "Alive";
                }

            }

            //Player with name
            public class Player
            {
                public string PlayerName;
                public string Status;
                public List<Character> Roster = new List<Character>();

                public Player(string name)
                {
                    PlayerName = name;
                    Status = "Alive";
                }

                //changes player's status to dead
                public void DeadPlayer()
                {
                    Status = "Dead";
                }

                //changes player's status to alive
                public void RessurectPlayer()
                {
                    Status = "Alive";
                }

                //adds a character to a player's roster
                public void AddCharacter(Character tempname)
                {
                    Roster.Add(tempname);
                }

                //displays characters for player
                public void DisplayCharacters()
                {
                    Console.Write("#)\tCharacter Name\tStatus\n");
                    for (int x = 0; x < this.Roster.Count; x++)
                    {
                        Console.Write((x + 1) + ")\t" + this.Roster[x].CharacterName + "\t\t" + this.Roster[x].Status + "\n");
                    }

                }

                
                //prompts user to select a character
                public int ChooseCharacter()
                {
                    //Character target;
                    int charactertracker = 0;
                    string trash = "0";

                    //prompt user to select a piece to move
                    Console.Write(this.PlayerName + ", please select one of your pieces to move.\n");

                    //display characters for user to choose from
                    this.DisplayCharacters();

                    //get input
                    trash = Console.ReadLine();

                    //if player chooses outside acceptable range
                    if (trash.Equals("1") || trash.Equals("2") || trash.Equals("3") || trash.Equals("4"))
                    {
                        charactertracker = (Convert.ToInt32(trash) - 1);
                    }
                    else if (trash.Equals("5") || trash.Equals("6") || trash.Equals("7") || trash.Equals("8"))
                    {
                        charactertracker = (Convert.ToInt32(trash) - 1);
                    }
                    else if (trash.Equals("9") || trash.Equals("10") || trash.Equals("11") || trash.Equals("12"))
                    {
                        charactertracker = (Convert.ToInt32(trash) - 1);
                    }
                    else if (trash.Equals("13") || trash.Equals("14") || trash.Equals("15") || trash.Equals("16"))
                    {
                        charactertracker = (Convert.ToInt32(trash) - 1);
                    }
                    else
                    {
                        //then start over
                        charactertracker = this.ChooseCharacter();
                    }

                    //see if character is alive
                    if (this.Roster[charactertracker].Status.Equals("Alive"))
                    {
                    }
                    else
                    {
                        charactertracker = this.ChooseCharacter();
                    }

                    return charactertracker;
                }

            }





        }
    }



    

