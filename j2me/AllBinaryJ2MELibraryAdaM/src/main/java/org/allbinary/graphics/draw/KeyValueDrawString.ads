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
limited with org.allbinary.graphics.draw.KeyValueDrawString_Package;
package org.allbinary.graphics.draw.KeyValueDrawString_Package_References is
   type KeyValueDrawString_Access is access all org.allbinary.graphics.draw.KeyValueDrawString_Package.KeyValueDrawString'Class;
   type KeyValueDrawString_Access_Array is array (Natural range <>) of KeyValueDrawString_Access;
   type KeyValueDrawString_Access_Array_Access is access all KeyValueDrawString_Access_Array;
   type KeyValueDrawString_Access_Array_Access_Array is array (Natural range <>) of KeyValueDrawString_Access_Array_Access;
   type KeyValueDrawString_Access_Array_Access_Array_Access is access all KeyValueDrawString_Access_Array_Access_Array;
   type KeyValueDrawString_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyValueDrawString_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyValueDrawString_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyValueDrawString_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyValueDrawString_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyValueDrawString_Access_Array_Access is (if Value /= null and then Value.all in KeyValueDrawString_Access_Array_Object'Class then KeyValueDrawString_Access_Array_Object'Class (Value.all).Value else null);
   type KeyValueDrawString_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyValueDrawString_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyValueDrawString_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyValueDrawString_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyValueDrawString_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyValueDrawString_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyValueDrawString_Access_Array_Access_Array_Object'Class then KeyValueDrawString_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.draw.KeyValueDrawString_Package_References;

with org.allbinary.graphics.draw.KeyValueDrawString_Package_References;
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
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package org.allbinary.graphics.draw.KeyValueDrawString_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype KeyValueDrawString_Access is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access;
   function "=" (Left, Right : KeyValueDrawString_Access) return Boolean renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References."=";
   subtype KeyValueDrawString_Access_Array is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array;
   function "=" (Left, Right : KeyValueDrawString_Access_Array) return Boolean renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References."=";
   subtype KeyValueDrawString_Access_Array_Access is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array_Access;
   function "=" (Left, Right : KeyValueDrawString_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References."=";
   function Java_Box (Value : KeyValueDrawString_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References.Java_Box;
   function Java_Unbox_KeyValueDrawString_Access_Array (Value : access Java_Object'Class) return KeyValueDrawString_Access_Array_Access renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References.Java_Unbox_KeyValueDrawString_Access_Array;
   subtype KeyValueDrawString_Access_Array_Access_Array is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array_Access_Array;
   function "=" (Left, Right : KeyValueDrawString_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References."=";
   subtype KeyValueDrawString_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.KeyValueDrawString_Package_References.KeyValueDrawString_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyValueDrawString_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References."=";
   function Java_Box (Value : KeyValueDrawString_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References.Java_Box;
   function Java_Unbox_KeyValueDrawString_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyValueDrawString_Access_Array_Access_Array_Access renames org.allbinary.graphics.draw.KeyValueDrawString_Package_References.Java_Unbox_KeyValueDrawString_Access_Array_Access_Array;

   type KeyValueDrawString is new Java_Object and UpdateMyFontInterface with record
      myFontProcessor : MyFontProcessor_Access;
      LABEL : Unbounded_String;
      labelX : Integer;
      valueX : Integer;
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out KeyValueDrawString'Class; label : Unbounded_String; x : Integer);
   function Create (label : Unbounded_String; x : Integer) return KeyValueDrawString_Access;
   procedure updateMeasurement (This : in out KeyValueDrawString; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint (This : in out KeyValueDrawString; graphics_Param : access Graphics_Package.Graphics'Class; y : Integer);
   procedure update (This : in out KeyValueDrawString; value : Unbounded_String);

end org.allbinary.graphics.draw.KeyValueDrawString_Package;


