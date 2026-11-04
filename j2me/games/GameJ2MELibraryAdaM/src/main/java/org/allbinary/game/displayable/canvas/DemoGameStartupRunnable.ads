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

limited with org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;
package org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References is
   type DemoGameStartupRunnable_Access is access all org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package.DemoGameStartupRunnable'Class;
   type DemoGameStartupRunnable_Access_Array is array (Natural range <>) of DemoGameStartupRunnable_Access;
   type DemoGameStartupRunnable_Access_Array_Access is access all DemoGameStartupRunnable_Access_Array;
   type DemoGameStartupRunnable_Access_Array_Access_Array is array (Natural range <>) of DemoGameStartupRunnable_Access_Array_Access;
   type DemoGameStartupRunnable_Access_Array_Access_Array_Access is access all DemoGameStartupRunnable_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References;

with org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
limited with org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package_References;

package org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
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
   subtype DemoCanvas_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access;
   use type DemoCanvas_Access;
   subtype DemoCanvas_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array;
   use type DemoCanvas_Access_Array;
   subtype DemoCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access;
   use type DemoCanvas_Access_Array_Access;
   subtype DemoCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array;
   use type DemoCanvas_Access_Array_Access_Array;
   subtype DemoCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvas_Package_References.DemoCanvas_Access_Array_Access_Array_Access;
   use type DemoCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoGameStartupRunnable_Access is org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References.DemoGameStartupRunnable_Access;
   function "=" (Left, Right : DemoGameStartupRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References."=";
   subtype DemoGameStartupRunnable_Access_Array is org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References.DemoGameStartupRunnable_Access_Array;
   function "=" (Left, Right : DemoGameStartupRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References."=";
   subtype DemoGameStartupRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References.DemoGameStartupRunnable_Access_Array_Access;
   function "=" (Left, Right : DemoGameStartupRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References."=";
   subtype DemoGameStartupRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References.DemoGameStartupRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameStartupRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References."=";
   subtype DemoGameStartupRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References.DemoGameStartupRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameStartupRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package_References."=";

   type DemoGameStartupRunnable is new ABRunnable with record
      logUtil : LogUtil_Access;
      demoCanvas : DemoCanvas_Access;
   end record;
   TYPE_Id : constant Integer := 4;

   procedure Initialize (This : in out DemoGameStartupRunnable'Class; demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class);
   function Create (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) return DemoGameStartupRunnable_Access;
   procedure run (This : in out DemoGameStartupRunnable);
   function getType (This : in out DemoGameStartupRunnable) return Integer;

end org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;


