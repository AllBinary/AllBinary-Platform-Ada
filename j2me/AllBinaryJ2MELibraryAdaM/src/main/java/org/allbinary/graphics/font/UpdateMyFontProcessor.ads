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

limited with org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
package org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References is
   type UpdateMyFontProcessor_Access is access all org.allbinary.graphics.font.UpdateMyFontProcessor_Package.UpdateMyFontProcessor'Class;
   type UpdateMyFontProcessor_Access_Array is array (Natural range <>) of UpdateMyFontProcessor_Access;
   type UpdateMyFontProcessor_Access_Array_Access is access all UpdateMyFontProcessor_Access_Array;
   type UpdateMyFontProcessor_Access_Array_Access_Array is array (Natural range <>) of UpdateMyFontProcessor_Access_Array_Access;
   type UpdateMyFontProcessor_Access_Array_Access_Array_Access is access all UpdateMyFontProcessor_Access_Array_Access_Array;
end org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References;

with org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References;
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
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
limited with org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package_References;

package org.allbinary.graphics.font.UpdateMyFontProcessor_Package is

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
   subtype UpdateMyFontInterface_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access;
   use type UpdateMyFontInterface_Access;
   subtype UpdateMyFontInterface_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array;
   use type UpdateMyFontInterface_Access_Array;
   subtype UpdateMyFontInterface_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access;
   use type UpdateMyFontInterface_Access_Array_Access;
   subtype UpdateMyFontInterface_Access_Array_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array;
   use type UpdateMyFontInterface_Access_Array_Access_Array;
   subtype UpdateMyFontInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array_Access;
   use type UpdateMyFontInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UpdateMyFontProcessor_Access is org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References.UpdateMyFontProcessor_Access;
   function "=" (Left, Right : UpdateMyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References."=";
   subtype UpdateMyFontProcessor_Access_Array is org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References.UpdateMyFontProcessor_Access_Array;
   function "=" (Left, Right : UpdateMyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References."=";
   subtype UpdateMyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References.UpdateMyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References."=";
   subtype UpdateMyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References.UpdateMyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateMyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References."=";
   subtype UpdateMyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References.UpdateMyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package_References."=";

   type UpdateMyFontProcessor is new MyFontProcessor with record
      updateMeasurementProcessor : UpdateMyFontInterface_Access;
   end record;

   procedure Initialize (This : in out UpdateMyFontProcessor'Class; keyValueDrawCharArray_Param : access UpdateMyFontInterface_Package.UpdateMyFontInterface'Class);
   function Create (keyValueDrawCharArray_Param : access UpdateMyFontInterface_Package.UpdateMyFontInterface'Class) return UpdateMyFontProcessor_Access;
   procedure process (This : in out UpdateMyFontProcessor; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.font.UpdateMyFontProcessor_Package;


