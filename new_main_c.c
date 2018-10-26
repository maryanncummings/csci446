/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : foreign facility test                                           *
 * File  : new_main_c.c                                                    *
 * Descr.: test file - C part                                              *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2015 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


#include <stdio.h>
#include <string.h>

#define __GPROLOG_FOREIGN_STRICT__
#include "gprolog.h"


/*---------------------------------*
 * Constants                       *
 *---------------------------------*/

/*---------------------------------*
 * Type Definitions                *
 *---------------------------------*/

/*---------------------------------*
 * Global Variables                *
 *---------------------------------*/

/*---------------------------------*
 * Function Prototypes             *
 *---------------------------------*/

void printSolutions(char* symbol) {
  int func;
  PlTerm arg[10];
  char str[100];
  char *sol[100];
  int i, nb_sol = 0;
  PlBool res;

  func = Pl_Find_Atom(symbol);
  for (;;) {
      printf("\nEnter a name (or 'end' to finish): ");
      fflush(stdout);
      if (scanf("%s", str))     /* avoid gcc warning warn_unused_result */
        ;

      if (strcmp(str, "end") == 0)
        break;

      /* open a query */
      Pl_Query_Begin(PL_TRUE);


      arg[0] = Pl_Mk_Variable();
      arg[1] = Pl_Mk_String(str);
      nb_sol = 0;

      /* compute the first solution */
      res = Pl_Query_Call(func, 1, arg);
      while (res) {
          sol[nb_sol++] = Pl_Rd_String(arg[0]);

          /* compute next solution */
          res = Pl_Query_Next_Solution();
      }

      /* close the query */
      Pl_Query_End(PL_RECOVER);
      printf("%s: ", symbol);
      for (i = 0; i < nb_sol; i++)
        printf("%s ", sol[i]);
    }

    printf("\n");
    return;
}

/*-------------------------------------------------------------------------*
 * MAIN                                                                    * *                                                                         *
 * See comments in EnginePl/main.c about the use of the wrapper function.  *
 *-------------------------------------------------------------------------*/
static int
Main_Wrapper(int argc, char *argv[]) {

  Pl_Start_Prolog(argc, argv);
  
  printSolutions("woman");
  printSolutions("man");
  Pl_Stop_Prolog();
  return(0);
}


int
main(int argc, char *argv[])
{
  return Main_Wrapper(argc, argv);
}

