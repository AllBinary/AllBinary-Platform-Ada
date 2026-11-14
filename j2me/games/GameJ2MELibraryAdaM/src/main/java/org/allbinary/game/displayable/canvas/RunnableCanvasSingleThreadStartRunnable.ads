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

with AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;
package org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References is
   type RunnableCanvasSingleThreadStartRunnable_Access is access all org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package.RunnableCanvasSingleThreadStartRunnable'Class;
   type RunnableCanvasSingleThreadStartRunnable_Access_Array is array (Natural range <>) of RunnableCanvasSingleThreadStartRunnable_Access;
   type RunnableCanvasSingleThreadStartRunnable_Access_Array_Access is access all RunnableCanvasSingleThreadStartRunnable_Access_Array;
   type RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array is array (Natural range <>) of RunnableCanvasSingleThreadStartRunnable_Access_Array_Access;
   type RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access is access all RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array;
   type RunnableCanvasSingleThreadStartRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RunnableCanvasSingleThreadStartRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RunnableCanvasSingleThreadStartRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RunnableCanvasSingleThreadStartRunnable_Access_Array_Access is (if Value /= null and then Value.all in RunnableCanvasSingleThreadStartRunnable_Access_Array_Object'Class then RunnableCanvasSingleThreadStartRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Object'Class then RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References;

with org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.canvas.RunnableCanvas_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;

package org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package is

   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype RunnableCanvas_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access;
   use type RunnableCanvas_Access;
   subtype RunnableCanvas_Access_Array is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array;
   use type RunnableCanvas_Access_Array;
   subtype RunnableCanvas_Access_Array_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access;
   use type RunnableCanvas_Access_Array_Access;
   subtype RunnableCanvas_Access_Array_Access_Array is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access_Array;
   use type RunnableCanvas_Access_Array_Access_Array;
   subtype RunnableCanvas_Access_Array_Access_Array_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access_Array_Access;
   use type RunnableCanvas_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype RunnableCanvasSingleThreadStartRunnable_Access is org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.RunnableCanvasSingleThreadStartRunnable_Access;
   function "=" (Left, Right : RunnableCanvasSingleThreadStartRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References."=";
   subtype RunnableCanvasSingleThreadStartRunnable_Access_Array is org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.RunnableCanvasSingleThreadStartRunnable_Access_Array;
   function "=" (Left, Right : RunnableCanvasSingleThreadStartRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References."=";
   subtype RunnableCanvasSingleThreadStartRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.RunnableCanvasSingleThreadStartRunnable_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References."=";
   function Java_Box (Value : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.Java_Box;
   function Java_Unbox_RunnableCanvasSingleThreadStartRunnable_Access_Array (Value : access Java_Object'Class) return RunnableCanvasSingleThreadStartRunnable_Access_Array_Access renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.Java_Unbox_RunnableCanvasSingleThreadStartRunnable_Access_Array;
   subtype RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References."=";
   subtype RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References."=";
   function Java_Box (Value : RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.Java_Box;
   function Java_Unbox_RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package_References.Java_Unbox_RunnableCanvasSingleThreadStartRunnable_Access_Array_Access_Array;

   type RunnableCanvasSingleThreadStartRunnable is new GameRunnable with record
      logUtil : LogUtil_Access;
      runnableCanvas : RunnableCanvas_Access;
   end record;

   procedure Initialize (This : in out RunnableCanvasSingleThreadStartRunnable'Class; demoCanvas_Param : access RunnableCanvas_Package.RunnableCanvas'Class);
   function Create (demoCanvas_Param : access RunnableCanvas_Package.RunnableCanvas'Class) return RunnableCanvasSingleThreadStartRunnable_Access;
   procedure run (This : in out RunnableCanvasSingleThreadStartRunnable);
   procedure processLoopSleep (This : in out RunnableCanvasSingleThreadStartRunnable);

end org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable_Package;


