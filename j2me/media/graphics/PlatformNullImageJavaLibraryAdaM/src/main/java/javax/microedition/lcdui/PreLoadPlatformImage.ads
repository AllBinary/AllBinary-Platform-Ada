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

limited with javax.microedition.lcdui.PreLoadPlatformImage_Package;
package javax.microedition.lcdui.PreLoadPlatformImage_Package_References is
   type PreLoadPlatformImage_Access is access all javax.microedition.lcdui.PreLoadPlatformImage_Package.PreLoadPlatformImage'Class;
   type PreLoadPlatformImage_Access_Array is array (Natural range <>) of PreLoadPlatformImage_Access;
   type PreLoadPlatformImage_Access_Array_Access is access all PreLoadPlatformImage_Access_Array;
   type PreLoadPlatformImage_Access_Array_Access_Array is array (Natural range <>) of PreLoadPlatformImage_Access_Array_Access;
   type PreLoadPlatformImage_Access_Array_Access_Array_Access is access all PreLoadPlatformImage_Access_Array_Access_Array;
end javax.microedition.lcdui.PreLoadPlatformImage_Package_References;

with javax.microedition.lcdui.PreLoadPlatformImage_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.PlatformImage_Package; use javax.microedition.lcdui.PlatformImage_Package;

package javax.microedition.lcdui.PreLoadPlatformImage_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PreLoadPlatformImage_Access is javax.microedition.lcdui.PreLoadPlatformImage_Package_References.PreLoadPlatformImage_Access;
   function "=" (Left, Right : PreLoadPlatformImage_Access) return Boolean renames javax.microedition.lcdui.PreLoadPlatformImage_Package_References."=";
   subtype PreLoadPlatformImage_Access_Array is javax.microedition.lcdui.PreLoadPlatformImage_Package_References.PreLoadPlatformImage_Access_Array;
   function "=" (Left, Right : PreLoadPlatformImage_Access_Array) return Boolean renames javax.microedition.lcdui.PreLoadPlatformImage_Package_References."=";
   subtype PreLoadPlatformImage_Access_Array_Access is javax.microedition.lcdui.PreLoadPlatformImage_Package_References.PreLoadPlatformImage_Access_Array_Access;
   function "=" (Left, Right : PreLoadPlatformImage_Access_Array_Access) return Boolean renames javax.microedition.lcdui.PreLoadPlatformImage_Package_References."=";
   subtype PreLoadPlatformImage_Access_Array_Access_Array is javax.microedition.lcdui.PreLoadPlatformImage_Package_References.PreLoadPlatformImage_Access_Array_Access_Array;
   function "=" (Left, Right : PreLoadPlatformImage_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.PreLoadPlatformImage_Package_References."=";
   subtype PreLoadPlatformImage_Access_Array_Access_Array_Access is javax.microedition.lcdui.PreLoadPlatformImage_Package_References.PreLoadPlatformImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreLoadPlatformImage_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.PreLoadPlatformImage_Package_References."=";

   type PreLoadPlatformImage is new PlatformImage with null record;
   instance : PreLoadPlatformImage_Access;

   procedure Initialize (This : in out PreLoadPlatformImage'Class);
   function Create return PreLoadPlatformImage_Access;
   function getInstance return PreLoadPlatformImage_Access;

end javax.microedition.lcdui.PreLoadPlatformImage_Package;


