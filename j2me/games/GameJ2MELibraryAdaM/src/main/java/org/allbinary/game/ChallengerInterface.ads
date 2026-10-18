-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ChallengerInterface_Package is


   type ChallengerInterface is interface;
   type ChallengerInterface_Access is access all ChallengerInterface'Class;
   type ChallengerInterface_Access_Array is array (Natural range <>) of ChallengerInterface_Access;
   type ChallengerInterface_Access_Array_Access is access all ChallengerInterface_Access_Array;
   type ChallengerInterface_Access_Array_Access_Array is array (Natural range <>) of ChallengerInterface_Access_Array_Access;
   type ChallengerInterface_Access_Array_Access_Array_Access is access all ChallengerInterface_Access_Array_Access_Array;
   procedure setWinner (This : in out ChallengerInterface; isWinner : Boolean) is abstract;

end org.allbinary.game.ChallengerInterface_Package;


