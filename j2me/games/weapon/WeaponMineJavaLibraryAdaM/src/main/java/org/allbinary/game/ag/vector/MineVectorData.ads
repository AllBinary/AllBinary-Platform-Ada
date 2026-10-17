--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ag.vector.MineVectorData_Package is


   type MineVectorData is tagged;
   type MineVectorData_Access is access all MineVectorData'Class;
   type MineVectorData_Access_Array is array (Natural range <>) of MineVectorData_Access;
   type MineVectorData_Access_Array_Access is access all MineVectorData_Access_Array;

   type MineVectorData is new Java_Object with null record;
   points : Integer_Array_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out MineVectorData'Class);
   function Create return MineVectorData_Access;

end org.allbinary.game.ag.vector.MineVectorData_Package;


