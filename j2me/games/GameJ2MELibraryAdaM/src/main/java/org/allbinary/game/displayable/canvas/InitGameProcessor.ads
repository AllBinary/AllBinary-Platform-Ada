--
-- AllBinary Open License Version 1
-- Copyright (c) 2026 AllBinary
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
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.InitGameProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;

   type InitGameProcessor is tagged;
   type InitGameProcessor_Access is access all InitGameProcessor'Class;
   type InitGameProcessor_Access_Array is array (Natural range <>) of InitGameProcessor_Access;
   type InitGameProcessor_Access_Array_Access is access all InitGameProcessor_Access_Array;
   type InitGameProcessor_Access_Array_Access_Array is array (Natural range <>) of InitGameProcessor_Access_Array_Access;
   type InitGameProcessor_Access_Array_Access_Array_Access is access all InitGameProcessor_Access_Array_Access_Array;

   type InitGameProcessor is new Processor with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out InitGameProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return InitGameProcessor_Access;
   procedure process (This : in out InitGameProcessor);

end org.allbinary.game.displayable.canvas.InitGameProcessor_Package;


