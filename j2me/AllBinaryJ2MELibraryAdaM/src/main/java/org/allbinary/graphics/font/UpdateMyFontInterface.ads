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
limited with org.allbinary.graphics.font.UpdateMyFontInterface_Package;
package org.allbinary.graphics.font.UpdateMyFontInterface_Package_References is
   type UpdateMyFontInterface_Access is access all org.allbinary.graphics.font.UpdateMyFontInterface_Package.UpdateMyFontInterface'Class;
   type UpdateMyFontInterface_Access_Array is array (Natural range <>) of UpdateMyFontInterface_Access;
   type UpdateMyFontInterface_Access_Array_Access is access all UpdateMyFontInterface_Access_Array;
   type UpdateMyFontInterface_Access_Array_Access_Array is array (Natural range <>) of UpdateMyFontInterface_Access_Array_Access;
   type UpdateMyFontInterface_Access_Array_Access_Array_Access is access all UpdateMyFontInterface_Access_Array_Access_Array;
   type UpdateMyFontInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateMyFontInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateMyFontInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateMyFontInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateMyFontInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateMyFontInterface_Access_Array_Access is (if Value /= null and then Value.all in UpdateMyFontInterface_Access_Array_Object'Class then UpdateMyFontInterface_Access_Array_Object'Class (Value.all).Value else null);
   type UpdateMyFontInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateMyFontInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateMyFontInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateMyFontInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateMyFontInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateMyFontInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpdateMyFontInterface_Access_Array_Access_Array_Object'Class then UpdateMyFontInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.font.UpdateMyFontInterface_Package_References;

with org.allbinary.graphics.font.UpdateMyFontInterface_Package_References;
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

package org.allbinary.graphics.font.UpdateMyFontInterface_Package is

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


   type UpdateMyFontInterface is interface;
   subtype UpdateMyFontInterface_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   function Java_Box (Value : UpdateMyFontInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.Java_Box;
   function Java_Unbox_UpdateMyFontInterface_Access_Array (Value : access Java_Object'Class) return UpdateMyFontInterface_Access_Array_Access renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.Java_Unbox_UpdateMyFontInterface_Access_Array;
   subtype UpdateMyFontInterface_Access_Array_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   function Java_Box (Value : UpdateMyFontInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.Java_Box;
   function Java_Unbox_UpdateMyFontInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return UpdateMyFontInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.Java_Unbox_UpdateMyFontInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_UpdateMyFontInterface (Value : UpdateMyFontInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure updateMeasurement (This : in out UpdateMyFontInterface; graphics_Param : access Graphics_Package.Graphics'Class) is abstract;

end org.allbinary.graphics.font.UpdateMyFontInterface_Package;


