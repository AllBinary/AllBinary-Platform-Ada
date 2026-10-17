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

package org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;

   type EndLevelIntermissionProcessor is tagged;
   type EndLevelIntermissionProcessor_Access is access all EndLevelIntermissionProcessor'Class;
   type EndLevelIntermissionProcessor_Access_Array is array (Natural range <>) of EndLevelIntermissionProcessor_Access;
   type EndLevelIntermissionProcessor_Access_Array_Access is access all EndLevelIntermissionProcessor_Access_Array;

   type EndLevelIntermissionProcessor is new Processor with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out EndLevelIntermissionProcessor'Class; gameCanvas : AllBinaryGameCanvas_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access) return EndLevelIntermissionProcessor_Access;
   procedure process (This : in out EndLevelIntermissionProcessor);

end org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package;


