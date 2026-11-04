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

limited with org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package;
package org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References is
   type StartIntermissionProcessor_Access is access all org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package.StartIntermissionProcessor'Class;
   type StartIntermissionProcessor_Access_Array is array (Natural range <>) of StartIntermissionProcessor_Access;
   type StartIntermissionProcessor_Access_Array_Access is access all StartIntermissionProcessor_Access_Array;
   type StartIntermissionProcessor_Access_Array_Access_Array is array (Natural range <>) of StartIntermissionProcessor_Access_Array_Access;
   type StartIntermissionProcessor_Access_Array_Access_Array_Access is access all StartIntermissionProcessor_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References;

with org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StartIntermissionProcessor_Access is org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References.StartIntermissionProcessor_Access;
   function "=" (Left, Right : StartIntermissionProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References."=";
   subtype StartIntermissionProcessor_Access_Array is org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References.StartIntermissionProcessor_Access_Array;
   function "=" (Left, Right : StartIntermissionProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References."=";
   subtype StartIntermissionProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References.StartIntermissionProcessor_Access_Array_Access;
   function "=" (Left, Right : StartIntermissionProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References."=";
   subtype StartIntermissionProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References.StartIntermissionProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : StartIntermissionProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References."=";
   subtype StartIntermissionProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References.StartIntermissionProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StartIntermissionProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package_References."=";

   type StartIntermissionProcessor is new Processor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      WAIT : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out StartIntermissionProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return StartIntermissionProcessor_Access;
   procedure process (This : in out StartIntermissionProcessor);

end org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package;


