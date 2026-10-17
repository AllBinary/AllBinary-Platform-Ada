-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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

package org.allbinary.game.layer.capital.Capital_Package is


   type Capital is tagged;
   type Capital_Access is access all Capital'Class;
   type Capital_Access_Array is array (Natural range <>) of Capital_Access;
   type Capital_Access_Array_Access is access all Capital_Access_Array;

   type Capital is new Java_Object with record
      value : Integer;
   end record;

   procedure Initialize (This : in out Capital'Class);
   function Create return Capital_Access;
   function getTotalMoney (This : in out Capital) return Integer;
   procedure removeMoney (This : in out Capital; points : Integer);
   procedure addMoney (This : in out Capital; points : Integer);

end org.allbinary.game.layer.capital.Capital_Package;


