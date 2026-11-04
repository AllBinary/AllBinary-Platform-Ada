-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.device.GraphicsInterface_Package;
package org.allbinary.device.GraphicsInterface_Package_References is
   type GraphicsInterface_Access is access all org.allbinary.device.GraphicsInterface_Package.GraphicsInterface'Class;
   type GraphicsInterface_Access_Array is array (Natural range <>) of GraphicsInterface_Access;
   type GraphicsInterface_Access_Array_Access is access all GraphicsInterface_Access_Array;
   type GraphicsInterface_Access_Array_Access_Array is array (Natural range <>) of GraphicsInterface_Access_Array_Access;
   type GraphicsInterface_Access_Array_Access_Array_Access is access all GraphicsInterface_Access_Array_Access_Array;
end org.allbinary.device.GraphicsInterface_Package_References;

with org.allbinary.device.GraphicsInterface_Package_References;
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
limited with org.allbinary.graphics.font.FontDebugBase_Package;
with org.allbinary.graphics.font.FontDebugBase_Package_References;

package org.allbinary.device.GraphicsInterface_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package FontDebugBase_Package renames Standard.org.allbinary.graphics.font.FontDebugBase_Package;
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
   subtype FontDebugBase_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access;
   use type FontDebugBase_Access;
   subtype FontDebugBase_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array;
   use type FontDebugBase_Access_Array;
   subtype FontDebugBase_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access;
   use type FontDebugBase_Access_Array_Access;
   subtype FontDebugBase_Access_Array_Access_Array is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array;
   use type FontDebugBase_Access_Array_Access_Array;
   subtype FontDebugBase_Access_Array_Access_Array_Access is org.allbinary.graphics.font.FontDebugBase_Package_References.FontDebugBase_Access_Array_Access_Array_Access;
   use type FontDebugBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GraphicsInterface is interface;
   subtype GraphicsInterface_Access is org.allbinary.device.GraphicsInterface_Package_References.GraphicsInterface_Access;
   function "=" (Left, Right : GraphicsInterface_Access) return Boolean renames org.allbinary.device.GraphicsInterface_Package_References."=";
   subtype GraphicsInterface_Access_Array is org.allbinary.device.GraphicsInterface_Package_References.GraphicsInterface_Access_Array;
   function "=" (Left, Right : GraphicsInterface_Access_Array) return Boolean renames org.allbinary.device.GraphicsInterface_Package_References."=";
   subtype GraphicsInterface_Access_Array_Access is org.allbinary.device.GraphicsInterface_Package_References.GraphicsInterface_Access_Array_Access;
   function "=" (Left, Right : GraphicsInterface_Access_Array_Access) return Boolean renames org.allbinary.device.GraphicsInterface_Package_References."=";
   subtype GraphicsInterface_Access_Array_Access_Array is org.allbinary.device.GraphicsInterface_Package_References.GraphicsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.device.GraphicsInterface_Package_References."=";
   subtype GraphicsInterface_Access_Array_Access_Array_Access is org.allbinary.device.GraphicsInterface_Package_References.GraphicsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.GraphicsInterface_Package_References."=";
   function Java_Object_Access_From_GraphicsInterface (Value : GraphicsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setFontDebug (This : in out GraphicsInterface; font_Param : access Font_Package.Font'Class; fontDebug_Param : access FontDebugBase_Package.FontDebugBase'Class) is abstract;

end org.allbinary.device.GraphicsInterface_Package;


