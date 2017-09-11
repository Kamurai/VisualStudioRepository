using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Theoretical_Board
{
    class Kemerait_Theoretical_Board
    {
        static void Main(string[] args)
        {
            //Theory is to build a board (similiar to a chess board)
                //Need a board (2 dimensional, with coordinates)
                //Need Coordinate attributes
            //Characters must be able to traverse the board
                //Need characters to traverse the board
                    //Need Interface to control how characters traverse the board
                    //Need User input
                    //Need Process to translate input into Character progression
                    //Need Display ouput
            //Characters must be able to attack one another
                //Initial design: move ontop of one another, as in chess
            //Characters need only be distinguished by name
                //Need Name attribute
            //Charcters that are dead do not need to be moved
                //Need Status to determine living versus dead characters
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
            Console.Write("Welcome to the Kemerait Theorectical Board!\n");
            Console.Write("We are going to have you add some characters.\n");
            Console.Write("These characters will interact on a virtual environment, or 'Board'.\n");

            //containment loop
            while (cherry == true)
            {
                //spacing
                Console.Write("\n");

                //add players
                Console.Write("Add the players to the game.\n");
                    
                //containment loop
                while (cherry == true)
                {
                    //Name the Player
                    Console.Write("Please define the player's name.\n");
                    Console.Write("Or enter # to stop.\n");
                    trash = Console.ReadLine();

                    //spacing
                    Console.Write("\n");

                    if (trash.Equals("#"))
                    {
                        cherry = false;
                    }
                    else
                    {
                        //Declare Player
                        VirtualPlayers.Add(new Player(trash));
                    }
                }
                cherry = true;
                
                //alternate players to add their characters
                for (playertracker = 0; playertracker < VirtualPlayers.Count; playertracker++)
                {
                    //add characters
                    Console.Write(VirtualPlayers[playertracker].PlayerName + ", add your characters to the game.\n");

                    //containment loop
                    while (cherry == true)
                    {
                        //Name the Character
                        Console.Write("Please define the character's name.\n");
                        Console.Write("Or enter # to stop.\n");
                        trash = Console.ReadLine();

                        //spacing
                        Console.Write("\n");

                        if (trash.Equals("#"))
                        {
                            cherry = false;
                        }
                        else
                        {
                            //Declare Character
                            VirtualCharacters.Add(new Character(trash, VirtualPlayers[playertracker].PlayerName));
                            VirtualPlayers[playertracker].Roster.Add(VirtualCharacters[VirtualCharacters.Count - 1]);
                        }

                    }
                    cherry = true;
                }

                //assumes 1 board

                //prompt user for board width
                Console.Write("Please define the board width.\n");
                tempnum[0] = Convert.ToInt32(Console.ReadLine());

                //spacing
                Console.Write("\n");

                //prompt user for board length
                Console.Write("Please define the board length.\n");
                tempnum[1] = Convert.ToInt32(Console.ReadLine());

                //spacing
                Console.Write("\n");

                    //Declare Board
                    VirtualBoards.Add(new Board(tempnum[0], tempnum[1]));

                //Initial Display output
                VirtualBoards[boardtracker].DisplayBoard();

                //spacing
                Console.Write("\n");

                //Test Display Virtual Players and their characters
                for (int x = 0; x < VirtualPlayers.Count; x++)
                {
                    Console.Write(VirtualPlayers[x].PlayerName + "\n");
                    for (int y = 0; y < VirtualPlayers[x].Roster.Count; y++)
                    {
                        Console.Write(VirtualPlayers[x].Roster[y].CharacterName + "\n");
                    }

                    //spacing
                    Console.Write("\n");
                }

                //rotates through players to place their characters
                for (playertracker = 0; playertracker < VirtualPlayers.Count; playertracker++)
                {
                    //containment loop for a player placing all their characters
                    for (charactertracker = 0; charactertracker < VirtualPlayers[playertracker].Roster.Count; charactertracker++)
                    {
                        //Place character
                        VirtualBoards[boardtracker].AddCharacter(VirtualPlayers[playertracker].Roster[charactertracker], VirtualPlayers[playertracker]);
                        
                        //spacing
                        Console.Write("\n");

                        //Final Display output
                        VirtualBoards[boardtracker].DisplayBoard();

                        //spacing
                        Console.Write("\n");

                    }
                    cherry = true;
                    charactertracker = 0;
                }

                //Containment Loop for all character movements
                while (cherry == true)
                {
                    
                        //Move Character
                        cherry = VirtualBoards[boardtracker].MoveCharacter(VirtualCharacters[charactertracker]);
                        
                        //spacing
                        Console.Write("\n");

                        //Final Display output
                        VirtualBoards[boardtracker].DisplayBoard();

                        //spacing
                        Console.Write("\n");

                        //Test Display Character Status
                        DisplayCharacters(VirtualCharacters);

                    //spacing
                    Console.Write("\n");

                    //change character focus
                    charactertracker++;
                    if (charactertracker >= VirtualCharacters.Count)
                    {
                        charactertracker = 0;
                    }

                    //look for next living character
                    while(VirtualCharacters[charactertracker].Status.Equals("Dead"))
                    {
                        charactertracker++;
                        if (charactertracker >= VirtualCharacters.Count)
                        {
                            charactertracker = 0;
                        }
                    }
                    

                }
                cherry = true;

                //Prompt for Continuation
                cherry = ReturnMenu();

                //reset for next game
                if (cherry == true)
                {
                    for (int x = (VirtualCharacters.Count - 1); x > -1 ; x--)
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

        static void DisplayCharacters(List<Character> templist)
        {
            for (int x = 0; x < templist.Count; x++)
            {
                Console.Write("Character Name\tStatus\n");
                Console.Write(templist[x].CharacterName + "\t\t" + templist[x].Status + "\n");
            }

        }

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

            public Board(int width, int length)
            {
                //Board dimensions
                MaxWidth = width; 
                MaxLength = length;

                //Array that represents the virtual board with the Board Dimensions
                Coordinates = new Character[MaxWidth, MaxLength];
                
                //Initialize "Empty" Character
                Empty = new Character("Empty", "Board");

                //Initialize all Characters as "Empty"
                for (int x = 0; x < MaxWidth; x++)
                {
                    for (int y = 0; y < MaxLength; y++)
                    {
                        Coordinates[x, y] = Empty;
                    }
                }
            }

            public void AddCharacter(Character tempname, Player playername)
            {
                int xcoordinate;
                int ycoordinate;

                //Prompt User for input to place the character on the board
                Console.Write(playername.PlayerName + ", please place " + tempname.CharacterName + " on the board.\n");

                //spacing
                Console.Write("\n");

                //ensure x coordinate is appropriate
                xcoordinate = -1;
                while (xcoordinate < 0 || xcoordinate > this.MaxWidth)
                {
                    //prompt user for character x-coordinate
                    Console.Write("Please select an x-coordinate for " + tempname.CharacterName + ".\n");
                    xcoordinate = (Convert.ToInt32(Console.ReadLine()) - 1);
                }

                //spacing
                Console.Write("\n");

                //ensure y coordinate is appropriate
                ycoordinate = -1;
                while (ycoordinate < 0 || ycoordinate > this.MaxLength)
                {
                    //prompt user for character y-coordinate
                    Console.Write("Please select an y-coordinate for " + tempname.CharacterName + ".\n");
                    ycoordinate = (Convert.ToInt32(Console.ReadLine()) - 1);
                }
                
                //ensure coordinate is empty
                if (Coordinates[xcoordinate, ycoordinate] == Empty)
                {
                    Coordinates[xcoordinate, ycoordinate] = tempname;
                    BoardCharacters.Add(tempname);
                }
                else
                {
                    this.AddCharacter(tempname, playername);
                }

            }

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

            public bool MoveCharacter(Character tempname)
            {
                string trash = "0";
                int direction;
                bool cherry = true;

                //Prompt for movement
                Console.Write("Please move " + tempname.CharacterName + " on the board:\n");
                Console.Write("1) Up.\n");
                Console.Write("2) Down.\n");
                Console.Write("3) Left.\n");
                Console.Write("4) Right.\n");
                Console.Write("#) Stop.\n");
                trash = Console.ReadLine();

                //check user input and move character
                if (trash.Equals("#"))
                {
                    //stop
                    cherry = false;
                }
                else if (trash.Equals("1") || trash.Equals("2") || trash.Equals("3") || trash.Equals("4"))
                {
                    //move character
                    direction = Convert.ToInt32(trash);

                    //if direction is "up"
                    if (direction == 1)
                    {
                        //walk through array
                        for (int x = 0; x < MaxWidth; x++)
                        {
                            for (int y = 0; y < MaxLength; y++)
                            {
                                if (Coordinates[x, y] == tempname && Coordinates[x, y].Owner == tempname.Owner)
                                {
                                    //if target square is out of bounds
                                    if ((y + 1) >= MaxLength)
                                    {
                                        cherry = this.MoveCharacter(Coordinates[x, y]);
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;
                                    }
                                    else
                                    {
                                        //if this space is occupied
                                        if (Coordinates[x, (y + 1)] != this.Empty)
                                        {
                                            //then kill occupying character
                                            Coordinates[(x, (y+1)].DeadCharacter(); ;
                                        }
                                        else
                                        {
                                        }
                                        //change position
                                        Coordinates[x, (y + 1)] = tempname;
                                        //remove old character
                                        Coordinates[x, y] = this.Empty;
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;
                                    }
                                }
                            }
                        }
                    }
                    //if direction is "down"
                    else if (direction == 2)
                    {
                        //walk through array
                        for (int x = 0; x < MaxWidth; x++)
                        {
                            for (int y = 0; y < MaxLength; y++)
                            {
                                if (Coordinates[x, y] == tempname && Coordinates[x, y].Owner == tempname.Owner)
                                {
                                    
                                    //if target square is out of bounds
                                    if ((y - 1) <= -1)
                                    {
                                        cherry = this.MoveCharacter(tempname);
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;
                                    }
                                    else
                                    {
                                     
                                        //if this space is occupied
                                        if (Coordinates[x, (y - 1)] != this.Empty)
                                        {
                                            //then kill occupying character
                                            Coordinates[x, (y-1)].DeadCharacter(); ;
                                        }
                                        else
                                        {
                                        }
                                        //change position
                                        Coordinates[x, (y - 1)] = tempname;
                                        //remove old character
                                        Coordinates[x, y] = this.Empty;
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;

                                    }
                                }
                            }
                        }
                    }
                    //if direction is "left"
                    else if (direction == 3)
                    {
                        //walk through array
                        for (int x = 0; x < MaxWidth; x++)
                        {
                            for (int y = 0; y < MaxLength; y++)
                            {
                                if (Coordinates[x, y] == tempname && Coordinates[x, y].Owner == tempname.Owner)
                                {
                                    if ((x - 1) <= -1)
                                    {
                                        cherry = this.MoveCharacter(tempname);
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;
                                    }
                                    else
                                    {
                                        //if this space is occupied
                                        if (Coordinates[(x - 1), y] != this.Empty)
                                        {
                                            //then kill occupying character
                                            Coordinates[(x - 1), y].DeadCharacter(); ;
                                        }
                                        else
                                        {
                                        }
                                        //change position
                                        Coordinates[(x - 1), y] = tempname;
                                        //remove old character
                                        Coordinates[x, y] = this.Empty;
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;
                                    }
                                }
                            }
                        }
                    }
                    //if direction is "right"
                    else if (direction == 4)
                    {
                        //walk through array
                        for (int x = 0; x < MaxWidth; x++)
                        {
                            for (int y = 0; y < MaxLength; y++)
                            {
                                if (Coordinates[x, y] == tempname && Coordinates[x, y].Owner == tempname.Owner)
                                {
                                    if ((x + 1) >= MaxWidth)
                                    {
                                        cherry = this.MoveCharacter(tempname);
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;
                                    }
                                    else
                                    {
                                        //if this space is occupied
                                        if (Coordinates[(x + 1), y] != this.Empty)
                                        {
                                            //then kill occupying character
                                            Coordinates[(x + 1), y].DeadCharacter();
                                        }
                                        else
                                        {
                                        }
                                        //change position
                                        Coordinates[(x + 1), y] = tempname;
                                        //remove old character
                                        Coordinates[x, y] = this.Empty;
                                        //escape loops
                                        y = MaxLength;
                                        x = MaxWidth;
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    this.MoveCharacter(tempname);
                }


                return cherry;
                
            }
        }

        //Character with name
        public class Character
        {
            public string CharacterName;
            public string Status;
            public string Owner;

            public Character(string cname, string oname)
            {
                CharacterName = cname;
                Owner = oname;
                Status = "Alive";
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

            public void DeadPlayer()
            {
                Status = "Dead";
            }

            public void RessurectPlayer()
            {
                Status = "Alive";
            }

            public void AddCharacter(Character tempname)
            {
                Roster.Add(tempname);
            }

        }





    }
}
