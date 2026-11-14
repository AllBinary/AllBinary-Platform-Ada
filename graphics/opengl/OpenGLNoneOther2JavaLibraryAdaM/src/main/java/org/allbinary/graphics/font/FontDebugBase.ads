--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.graphics.font.FontDebugBase_Package;
package org.allbinary.graphics.font.FontDebugBase_Package_References is
   type FontDebugBase_Access is access all org.allbinary.graphics.font.FontDebugBase_Package.FontDebugBase'Class;
   type FontDebugBase_Access_Array is array (Natural range <>) of FontDebugBase_Access;
   type FontDebugBase_Access_Array_Access is access all FontDebugBase_Access_Array;
   type FontDebugBase_Access_Array_Access_Array is array (Natural range <>) of FontDebugBase_Access_Array_Access;
   type FontDebugBase_Access_Array_Access_Array_Access is access all FontDebugBase_Access_Array_Access_Array;
   type FontDebugBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FontDebugBase_Access_Array_Access;
   end record;
   function Java_Box (Value : FontDebugBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FontDebugBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FontDebugBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FontDebugBase_Access_Array_Access is (if Value /= null and then Value.all in FontDebugBase_Access_Array_Object'Class then FontDebugBase_Access_Array_Object'Class (Value.all).Value else null);
   type FontDebugBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FontDebugBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FontDebugBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FontDebugBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FontDebugBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FontDebugBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FontDebugBase_Access_Array_Access_Array_Object'Class then FontDebugBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.font.FontDebugBase_Package_References;

with org.allbinary.graphics.font.FontDebugBase_Package_References;
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
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;

package org.allbinary.graphics.font.FontDebugBase_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FontDebugBase_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access;
   function "=" (Left, Right : FontDebugBase_Access) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype FontDebugBase_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array;
   function "=" (Left, Right : FontDebugBase_Access_Array) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype FontDebugBase_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access;
   function "=" (Left, Right : FontDebugBase_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   function Java_Box (Value : FontDebugBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.font.FontDebugBase_Package_References.Java_Box;
   function Java_Unbox_FontDebugBase_Access_Array (Value : access Java_Object'Class) return FontDebugBase_Access_Array_Access renames org.allbinary.graphics.font.FontDebugBase_Package_References.Java_Unbox_FontDebugBase_Access_Array;
   subtype FontDebugBase_Access_Array_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array;
   function "=" (Left, Right : FontDebugBase_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   subtype FontDebugBase_Access_Array_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FontDebugBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.FontDebugBase_Package_References."=";
   function Java_Box (Value : FontDebugBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.font.FontDebugBase_Package_References.Java_Box;
   function Java_Unbox_FontDebugBase_Access_Array_Access_Array (Value : access Java_Object'Class) return FontDebugBase_Access_Array_Access_Array_Access renames org.allbinary.graphics.font.FontDebugBase_Package_References.Java_Unbox_FontDebugBase_Access_Array_Access_Array;

   type FontDebugBase is new Java_Object with record
      SET_FONT : Unbounded_String;
   end record;
   instanceBase : FontDebugBase_Access;

   procedure Initialize (This : in out FontDebugBase'Class);
   function Create return FontDebugBase_Access;
   function getInstance return FontDebugBase_Access;
   procedure debugMetrics (This : in out FontDebugBase; currentFont_Param : access Font_Package.Font'Class; convertedTextSize : Float; displayMetrics_Param : access Java_Object'Class; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
   procedure debugDpi (This : in out FontDebugBase; densityDpi : Integer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
   procedure debugDimension (This : in out FontDebugBase; currentFont_Param : access Font_Package.Font'Class; convertedTextSize : Float; longestDimensionTotalPixels : Integer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);

end org.allbinary.graphics.font.FontDebugBase_Package;


