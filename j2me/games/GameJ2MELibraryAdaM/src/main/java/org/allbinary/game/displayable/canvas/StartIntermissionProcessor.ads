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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type StartIntermissionProcessor is tagged;
   type StartIntermissionProcessor_Access is access all StartIntermissionProcessor'Class;
   type StartIntermissionProcessor_Access_Array is array (Natural range <>) of StartIntermissionProcessor_Access;
   type StartIntermissionProcessor_Access_Array_Access is access all StartIntermissionProcessor_Access_Array;

   type StartIntermissionProcessor is new Processor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      WAIT : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out StartIntermissionProcessor'Class; gameCanvas : AllBinaryGameCanvas_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access) return StartIntermissionProcessor_Access;
   procedure process (This : in out StartIntermissionProcessor);

end org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package;


