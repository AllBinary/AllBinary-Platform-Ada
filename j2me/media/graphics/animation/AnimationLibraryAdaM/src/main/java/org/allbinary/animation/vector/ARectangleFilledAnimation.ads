--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.animation.vector.ARectangleFilledAnimation_Package;
package org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References is
   type ARectangleFilledAnimation_Access is access all org.allbinary.animation.vector.ARectangleFilledAnimation_Package.ARectangleFilledAnimation'Class;
   type ARectangleFilledAnimation_Access_Array is array (Natural range <>) of ARectangleFilledAnimation_Access;
   type ARectangleFilledAnimation_Access_Array_Access is access all ARectangleFilledAnimation_Access_Array;
   type ARectangleFilledAnimation_Access_Array_Access_Array is array (Natural range <>) of ARectangleFilledAnimation_Access_Array_Access;
   type ARectangleFilledAnimation_Access_Array_Access_Array_Access is access all ARectangleFilledAnimation_Access_Array_Access_Array;
   type ARectangleFilledAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ARectangleFilledAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : ARectangleFilledAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ARectangleFilledAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ARectangleFilledAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ARectangleFilledAnimation_Access_Array_Access is (if Value /= null and then Value.all in ARectangleFilledAnimation_Access_Array_Object'Class then ARectangleFilledAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type ARectangleFilledAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ARectangleFilledAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ARectangleFilledAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ARectangleFilledAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ARectangleFilledAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ARectangleFilledAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ARectangleFilledAnimation_Access_Array_Access_Array_Object'Class then ARectangleFilledAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References;

with org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.vector.RectangleFilledAnimation_Package; use org.allbinary.animation.vector.RectangleFilledAnimation_Package;

package org.allbinary.animation.vector.ARectangleFilledAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ARectangleFilledAnimation_Access is org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.ARectangleFilledAnimation_Access;
   function "=" (Left, Right : ARectangleFilledAnimation_Access) return Boolean renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References."=";
   subtype ARectangleFilledAnimation_Access_Array is org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.ARectangleFilledAnimation_Access_Array;
   function "=" (Left, Right : ARectangleFilledAnimation_Access_Array) return Boolean renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References."=";
   subtype ARectangleFilledAnimation_Access_Array_Access is org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.ARectangleFilledAnimation_Access_Array_Access;
   function "=" (Left, Right : ARectangleFilledAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References."=";
   function Java_Box (Value : ARectangleFilledAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.Java_Box;
   function Java_Unbox_ARectangleFilledAnimation_Access_Array (Value : access Java_Object'Class) return ARectangleFilledAnimation_Access_Array_Access renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.Java_Unbox_ARectangleFilledAnimation_Access_Array;
   subtype ARectangleFilledAnimation_Access_Array_Access_Array is org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.ARectangleFilledAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : ARectangleFilledAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References."=";
   subtype ARectangleFilledAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.ARectangleFilledAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ARectangleFilledAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References."=";
   function Java_Box (Value : ARectangleFilledAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.Java_Box;
   function Java_Unbox_ARectangleFilledAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return ARectangleFilledAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.vector.ARectangleFilledAnimation_Package_References.Java_Unbox_ARectangleFilledAnimation_Access_Array_Access_Array;

   type ARectangleFilledAnimation is new RectangleFilledAnimation with record
      x : Integer;
      y : Integer;
   end record;

   procedure Initialize (This : in out ARectangleFilledAnimation'Class);
   function Create return ARectangleFilledAnimation_Access;
   procedure nextFrame (This : in out ARectangleFilledAnimation);
   procedure paintXY (This : in out ARectangleFilledAnimation; graphics_Param : access Graphics_Package.Graphics'Class; unusedX : Integer; unusedY : Integer);

end org.allbinary.animation.vector.ARectangleFilledAnimation_Package;


