-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
package org.allbinary.graphics.font.MyFontProcessor_Package_References is
   type MyFontProcessor_Access is access all org.allbinary.graphics.font.MyFontProcessor_Package.MyFontProcessor'Class;
   type MyFontProcessor_Access_Array is array (Natural range <>) of MyFontProcessor_Access;
   type MyFontProcessor_Access_Array_Access is access all MyFontProcessor_Access_Array;
   type MyFontProcessor_Access_Array_Access_Array is array (Natural range <>) of MyFontProcessor_Access_Array_Access;
   type MyFontProcessor_Access_Array_Access_Array_Access is access all MyFontProcessor_Access_Array_Access_Array;
   type MyFontProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyFontProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : MyFontProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyFontProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyFontProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyFontProcessor_Access_Array_Access is (if Value /= null and then Value.all in MyFontProcessor_Access_Array_Object'Class then MyFontProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type MyFontProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyFontProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyFontProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyFontProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyFontProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyFontProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyFontProcessor_Access_Array_Access_Array_Object'Class then MyFontProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.font.MyFontProcessor_Package_References;

with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Font_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package org.allbinary.graphics.font.MyFontProcessor_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype Font_Access is javax.microedition.lcdui.Font_Package_References.Font_Access;
   use type Font_Access;
   subtype Font_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array;
   use type Font_Access_Array;
   subtype Font_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access;
   use type Font_Access_Array_Access;
   subtype Font_Access_Array_Access_Array is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array;
   use type Font_Access_Array_Access_Array;
   subtype Font_Access_Array_Access_Array_Access is javax.microedition.lcdui.Font_Package_References.Font_Access_Array_Access_Array_Access;
   use type Font_Access_Array_Access_Array_Access;
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


   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   function "=" (Left, Right : MyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   function Java_Box (Value : MyFontProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.font.MyFontProcessor_Package_References.Java_Box;
   function Java_Unbox_MyFontProcessor_Access_Array (Value : access Java_Object'Class) return MyFontProcessor_Access_Array_Access renames org.allbinary.graphics.font.MyFontProcessor_Package_References.Java_Unbox_MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   function Java_Box (Value : MyFontProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.font.MyFontProcessor_Package_References.Java_Box;
   function Java_Unbox_MyFontProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return MyFontProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.font.MyFontProcessor_Package_References.Java_Unbox_MyFontProcessor_Access_Array_Access_Array;

   type MyFontProcessor is new Java_Object with null record;
   instance : MyFontProcessor_Access;

   procedure Initialize (This : in out MyFontProcessor'Class);
   function Create return MyFontProcessor_Access;
   function defaultCharWidth (font_Param : access Font_Package.Font'Class) return Integer;
   procedure defaultCharWidth (font_Param : access Font_Package.Font'Class);
   function defaultStringWidth (font_Param : access Font_Package.Font'Class; size : Integer) return Integer;
   procedure defaultStringWidth (font_Param : access Font_Package.Font'Class; size : Integer);
   function getInstance return MyFontProcessor_Access;
   procedure process (This : in out MyFontProcessor; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.font.MyFontProcessor_Package;


