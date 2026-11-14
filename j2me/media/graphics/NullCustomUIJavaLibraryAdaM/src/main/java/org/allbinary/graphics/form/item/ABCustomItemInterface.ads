--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.form.item.ABCustomItemInterface_Package;
package org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References is
   type ABCustomItemInterface_Access is access all org.allbinary.graphics.form.item.ABCustomItemInterface_Package.ABCustomItemInterface'Class;
   type ABCustomItemInterface_Access_Array is array (Natural range <>) of ABCustomItemInterface_Access;
   type ABCustomItemInterface_Access_Array_Access is access all ABCustomItemInterface_Access_Array;
   type ABCustomItemInterface_Access_Array_Access_Array is array (Natural range <>) of ABCustomItemInterface_Access_Array_Access;
   type ABCustomItemInterface_Access_Array_Access_Array_Access is access all ABCustomItemInterface_Access_Array_Access_Array;
   type ABCustomItemInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomItemInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomItemInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomItemInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomItemInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomItemInterface_Access_Array_Access is (if Value /= null and then Value.all in ABCustomItemInterface_Access_Array_Object'Class then ABCustomItemInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ABCustomItemInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABCustomItemInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABCustomItemInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABCustomItemInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABCustomItemInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABCustomItemInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABCustomItemInterface_Access_Array_Access_Array_Object'Class then ABCustomItemInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References;

with org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References;
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

package org.allbinary.graphics.form.item.ABCustomItemInterface_Package is

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


   type ABCustomItemInterface is interface;
   subtype ABCustomItemInterface_Access is org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.ABCustomItemInterface_Access;
   function "=" (Left, Right : ABCustomItemInterface_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References."=";
   subtype ABCustomItemInterface_Access_Array is org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.ABCustomItemInterface_Access_Array;
   function "=" (Left, Right : ABCustomItemInterface_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References."=";
   subtype ABCustomItemInterface_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.ABCustomItemInterface_Access_Array_Access;
   function "=" (Left, Right : ABCustomItemInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References."=";
   function Java_Box (Value : ABCustomItemInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.Java_Box;
   function Java_Unbox_ABCustomItemInterface_Access_Array (Value : access Java_Object'Class) return ABCustomItemInterface_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.Java_Unbox_ABCustomItemInterface_Access_Array;
   subtype ABCustomItemInterface_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.ABCustomItemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomItemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References."=";
   subtype ABCustomItemInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.ABCustomItemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomItemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References."=";
   function Java_Box (Value : ABCustomItemInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.Java_Box;
   function Java_Unbox_ABCustomItemInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ABCustomItemInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.item.ABCustomItemInterface_Package_References.Java_Unbox_ABCustomItemInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ABCustomItemInterface (Value : ABCustomItemInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMinimumWidth (This : in out ABCustomItemInterface) return Integer is abstract;
   function getMinimumHeight (This : in out ABCustomItemInterface) return Integer is abstract;
   function getLabel (This : in out ABCustomItemInterface) return Unbounded_String is abstract;
   procedure paintXY (This : in out ABCustomItemInterface; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is abstract;
   procedure paintUnselected (This : in out ABCustomItemInterface; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is abstract;

end org.allbinary.graphics.form.item.ABCustomItemInterface_Package;


