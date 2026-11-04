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

limited with org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package;
package org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References is
   type EndLevelIntermissionProcessor_Access is access all org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package.EndLevelIntermissionProcessor'Class;
   type EndLevelIntermissionProcessor_Access_Array is array (Natural range <>) of EndLevelIntermissionProcessor_Access;
   type EndLevelIntermissionProcessor_Access_Array_Access is access all EndLevelIntermissionProcessor_Access_Array;
   type EndLevelIntermissionProcessor_Access_Array_Access_Array is array (Natural range <>) of EndLevelIntermissionProcessor_Access_Array_Access;
   type EndLevelIntermissionProcessor_Access_Array_Access_Array_Access is access all EndLevelIntermissionProcessor_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References;

with org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Reference_Types is
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


   subtype EndLevelIntermissionProcessor_Access is org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References.EndLevelIntermissionProcessor_Access;
   function "=" (Left, Right : EndLevelIntermissionProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References."=";
   subtype EndLevelIntermissionProcessor_Access_Array is org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References.EndLevelIntermissionProcessor_Access_Array;
   function "=" (Left, Right : EndLevelIntermissionProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References."=";
   subtype EndLevelIntermissionProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References.EndLevelIntermissionProcessor_Access_Array_Access;
   function "=" (Left, Right : EndLevelIntermissionProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References."=";
   subtype EndLevelIntermissionProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References.EndLevelIntermissionProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : EndLevelIntermissionProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References."=";
   subtype EndLevelIntermissionProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References.EndLevelIntermissionProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EndLevelIntermissionProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package_References."=";

   type EndLevelIntermissionProcessor is new Processor with record
      gameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out EndLevelIntermissionProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) return EndLevelIntermissionProcessor_Access;
   procedure process (This : in out EndLevelIntermissionProcessor);

end org.allbinary.game.displayable.canvas.EndLevelIntermissionProcessor_Package;


