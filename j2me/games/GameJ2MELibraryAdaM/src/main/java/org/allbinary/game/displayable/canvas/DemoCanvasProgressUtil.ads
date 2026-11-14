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
limited with org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package;
package org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References is
   type DemoCanvasProgressUtil_Access is access all org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package.DemoCanvasProgressUtil'Class;
   type DemoCanvasProgressUtil_Access_Array is array (Natural range <>) of DemoCanvasProgressUtil_Access;
   type DemoCanvasProgressUtil_Access_Array_Access is access all DemoCanvasProgressUtil_Access_Array;
   type DemoCanvasProgressUtil_Access_Array_Access_Array is array (Natural range <>) of DemoCanvasProgressUtil_Access_Array_Access;
   type DemoCanvasProgressUtil_Access_Array_Access_Array_Access is access all DemoCanvasProgressUtil_Access_Array_Access_Array;
   type DemoCanvasProgressUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoCanvasProgressUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoCanvasProgressUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoCanvasProgressUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoCanvasProgressUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoCanvasProgressUtil_Access_Array_Access is (if Value /= null and then Value.all in DemoCanvasProgressUtil_Access_Array_Object'Class then DemoCanvasProgressUtil_Access_Array_Object'Class (Value.all).Value else null);
   type DemoCanvasProgressUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoCanvasProgressUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoCanvasProgressUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoCanvasProgressUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoCanvasProgressUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoCanvasProgressUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoCanvasProgressUtil_Access_Array_Access_Array_Object'Class then DemoCanvasProgressUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References;

with org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package_References;

package org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package is

   package Reference_Types is
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


   subtype DemoCanvasProgressUtil_Access is org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.DemoCanvasProgressUtil_Access;
   function "=" (Left, Right : DemoCanvasProgressUtil_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References."=";
   subtype DemoCanvasProgressUtil_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.DemoCanvasProgressUtil_Access_Array;
   function "=" (Left, Right : DemoCanvasProgressUtil_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References."=";
   subtype DemoCanvasProgressUtil_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.DemoCanvasProgressUtil_Access_Array_Access;
   function "=" (Left, Right : DemoCanvasProgressUtil_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References."=";
   function Java_Box (Value : DemoCanvasProgressUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.Java_Box;
   function Java_Unbox_DemoCanvasProgressUtil_Access_Array (Value : access Java_Object'Class) return DemoCanvasProgressUtil_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.Java_Unbox_DemoCanvasProgressUtil_Access_Array;
   subtype DemoCanvasProgressUtil_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.DemoCanvasProgressUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DemoCanvasProgressUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References."=";
   subtype DemoCanvasProgressUtil_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.DemoCanvasProgressUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoCanvasProgressUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References."=";
   function Java_Box (Value : DemoCanvasProgressUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.Java_Box;
   function Java_Unbox_DemoCanvasProgressUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoCanvasProgressUtil_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package_References.Java_Unbox_DemoCanvasProgressUtil_Access_Array_Access_Array;

   type DemoCanvasProgressUtil is new Java_Object with null record;

   procedure Initialize (This : in out DemoCanvasProgressUtil'Class);
   function Create return DemoCanvasProgressUtil_Access;
   procedure showProgress (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class);
   procedure showProgressOptionallyInTheBackground (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class; background : Boolean);

end org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil_Package;


