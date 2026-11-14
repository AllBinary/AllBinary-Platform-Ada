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
limited with org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package;
package org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References is
   type DemoCanvasBasicStartInputProcessor_Access is access all org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package.DemoCanvasBasicStartInputProcessor'Class;
   type DemoCanvasBasicStartInputProcessor_Access_Array is array (Natural range <>) of DemoCanvasBasicStartInputProcessor_Access;
   type DemoCanvasBasicStartInputProcessor_Access_Array_Access is access all DemoCanvasBasicStartInputProcessor_Access_Array;
   type DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array is array (Natural range <>) of DemoCanvasBasicStartInputProcessor_Access_Array_Access;
   type DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access is access all DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array;
   type DemoCanvasBasicStartInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoCanvasBasicStartInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoCanvasBasicStartInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoCanvasBasicStartInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoCanvasBasicStartInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoCanvasBasicStartInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in DemoCanvasBasicStartInputProcessor_Access_Array_Object'Class then DemoCanvasBasicStartInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Object'Class then DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package is

   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoCanvasBasicStartInputProcessor_Access is org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.DemoCanvasBasicStartInputProcessor_Access;
   function "=" (Left, Right : DemoCanvasBasicStartInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References."=";
   subtype DemoCanvasBasicStartInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.DemoCanvasBasicStartInputProcessor_Access_Array;
   function "=" (Left, Right : DemoCanvasBasicStartInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References."=";
   subtype DemoCanvasBasicStartInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.DemoCanvasBasicStartInputProcessor_Access_Array_Access;
   function "=" (Left, Right : DemoCanvasBasicStartInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References."=";
   function Java_Box (Value : DemoCanvasBasicStartInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.Java_Box;
   function Java_Unbox_DemoCanvasBasicStartInputProcessor_Access_Array (Value : access Java_Object'Class) return DemoCanvasBasicStartInputProcessor_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.Java_Unbox_DemoCanvasBasicStartInputProcessor_Access_Array;
   subtype DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References."=";
   subtype DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References."=";
   function Java_Box (Value : DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.Java_Box;
   function Java_Unbox_DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package_References.Java_Unbox_DemoCanvasBasicStartInputProcessor_Access_Array_Access_Array;

   type DemoCanvasBasicStartInputProcessor is new BasicMenuInputProcessor with null record;

   procedure Initialize (This : in out DemoCanvasBasicStartInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas_Package.RunnableCanvas'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; gameCanvas_Param : access RunnableCanvas_Package.RunnableCanvas'Class) return DemoCanvasBasicStartInputProcessor_Access;
   function processInputList (This : in out DemoCanvasBasicStartInputProcessor) return Integer;

end org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor_Package;


