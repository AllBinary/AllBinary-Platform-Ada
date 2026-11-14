--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.NullDisplayable_Package;
package org.allbinary.game.displayable.canvas.NullDisplayable_Package_References is
   type NullDisplayable_Access is access all org.allbinary.game.displayable.canvas.NullDisplayable_Package.NullDisplayable'Class;
   type NullDisplayable_Access_Array is array (Natural range <>) of NullDisplayable_Access;
   type NullDisplayable_Access_Array_Access is access all NullDisplayable_Access_Array;
   type NullDisplayable_Access_Array_Access_Array is array (Natural range <>) of NullDisplayable_Access_Array_Access;
   type NullDisplayable_Access_Array_Access_Array_Access is access all NullDisplayable_Access_Array_Access_Array;
   type NullDisplayable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullDisplayable_Access_Array_Access;
   end record;
   function Java_Box (Value : NullDisplayable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullDisplayable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullDisplayable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullDisplayable_Access_Array_Access is (if Value /= null and then Value.all in NullDisplayable_Access_Array_Object'Class then NullDisplayable_Access_Array_Object'Class (Value.all).Value else null);
   type NullDisplayable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullDisplayable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullDisplayable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullDisplayable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullDisplayable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullDisplayable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullDisplayable_Access_Array_Access_Array_Object'Class then NullDisplayable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.NullDisplayable_Package_References;

with org.allbinary.game.displayable.canvas.NullDisplayable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.canvas.BaseGameStatistics_Package_References;

package org.allbinary.game.displayable.canvas.NullDisplayable_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BaseGameStatistics_Package renames Standard.org.allbinary.canvas.BaseGameStatistics_Package;
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
   subtype BaseGameStatistics_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access;
   use type BaseGameStatistics_Access;
   subtype BaseGameStatistics_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array;
   use type BaseGameStatistics_Access_Array;
   subtype BaseGameStatistics_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access;
   use type BaseGameStatistics_Access_Array_Access;
   subtype BaseGameStatistics_Access_Array_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array;
   use type BaseGameStatistics_Access_Array_Access_Array;
   subtype BaseGameStatistics_Access_Array_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array_Access;
   use type BaseGameStatistics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullDisplayable_Access is org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.NullDisplayable_Access;
   function "=" (Left, Right : NullDisplayable_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References."=";
   subtype NullDisplayable_Access_Array is org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.NullDisplayable_Access_Array;
   function "=" (Left, Right : NullDisplayable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References."=";
   subtype NullDisplayable_Access_Array_Access is org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.NullDisplayable_Access_Array_Access;
   function "=" (Left, Right : NullDisplayable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References."=";
   function Java_Box (Value : NullDisplayable_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.Java_Box;
   function Java_Unbox_NullDisplayable_Access_Array (Value : access Java_Object'Class) return NullDisplayable_Access_Array_Access renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.Java_Unbox_NullDisplayable_Access_Array;
   subtype NullDisplayable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.NullDisplayable_Access_Array_Access_Array;
   function "=" (Left, Right : NullDisplayable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References."=";
   subtype NullDisplayable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.NullDisplayable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullDisplayable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References."=";
   function Java_Box (Value : NullDisplayable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.Java_Box;
   function Java_Unbox_NullDisplayable_Access_Array_Access_Array (Value : access Java_Object'Class) return NullDisplayable_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.NullDisplayable_Package_References.Java_Unbox_NullDisplayable_Access_Array_Access_Array;

   type NullDisplayable is new Canvas_Package.Canvas with record
      baseGameStatistics : BaseGameStatistics_Access;
   end record;
   SINGLETON : NullDisplayable_Access;

   procedure Initialize (This : in out NullDisplayable'Class);
   function Create return NullDisplayable_Access;
   function getInstance return NullDisplayable_Access;
   procedure paint (This : in out NullDisplayable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.displayable.canvas.NullDisplayable_Package;


