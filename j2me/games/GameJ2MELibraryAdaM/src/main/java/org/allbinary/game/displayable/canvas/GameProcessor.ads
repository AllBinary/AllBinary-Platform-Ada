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
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.game.displayable.canvas.GameProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;

   type GameProcessor is tagged;
   type GameProcessor_Access is access all GameProcessor'Class;
   type GameProcessor_Access_Array is array (Natural range <>) of GameProcessor_Access;
   type GameProcessor_Access_Array_Access is access all GameProcessor_Access_Array;

   type GameProcessor is new Processor with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out GameProcessor'Class; gameCanvas : AllBinaryGameCanvas_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access) return GameProcessor_Access;
   procedure process (This : in out GameProcessor);

end org.allbinary.game.displayable.canvas.GameProcessor_Package;


