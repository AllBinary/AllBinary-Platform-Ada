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

limited with org.allbinary.AppletUtil_Package;
package org.allbinary.AppletUtil_Package_References is
   type AppletUtil_Access is access all org.allbinary.AppletUtil_Package.AppletUtil'Class;
   type AppletUtil_Access_Array is array (Natural range <>) of AppletUtil_Access;
   type AppletUtil_Access_Array_Access is access all AppletUtil_Access_Array;
   type AppletUtil_Access_Array_Access_Array is array (Natural range <>) of AppletUtil_Access_Array_Access;
   type AppletUtil_Access_Array_Access_Array_Access is access all AppletUtil_Access_Array_Access_Array;
end org.allbinary.AppletUtil_Package_References;

with org.allbinary.AppletUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.AppletUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AppletUtil_Access is org.allbinary.AppletUtil_Package_References.AppletUtil_Access;
   function "=" (Left, Right : AppletUtil_Access) return Boolean renames org.allbinary.AppletUtil_Package_References."=";
   subtype AppletUtil_Access_Array is org.allbinary.AppletUtil_Package_References.AppletUtil_Access_Array;
   function "=" (Left, Right : AppletUtil_Access_Array) return Boolean renames org.allbinary.AppletUtil_Package_References."=";
   subtype AppletUtil_Access_Array_Access is org.allbinary.AppletUtil_Package_References.AppletUtil_Access_Array_Access;
   function "=" (Left, Right : AppletUtil_Access_Array_Access) return Boolean renames org.allbinary.AppletUtil_Package_References."=";
   subtype AppletUtil_Access_Array_Access_Array is org.allbinary.AppletUtil_Package_References.AppletUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AppletUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.AppletUtil_Package_References."=";
   subtype AppletUtil_Access_Array_Access_Array_Access is org.allbinary.AppletUtil_Package_References.AppletUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AppletUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.AppletUtil_Package_References."=";

   type AppletUtil is new Java_Object with null record;
   applet : Boolean;

   procedure Initialize (This : in out AppletUtil'Class);
   function Create return AppletUtil_Access;
   procedure setApplet;
   function isAppletLoader (anyType_Param : access Java_Object'Class) return Boolean;
   procedure isAppletLoader (anyType_Param : access Java_Object'Class);
   function isAppletLoader (Value : Unbounded_String) return Boolean;
   procedure isAppletLoader (Value : Unbounded_String);

end org.allbinary.AppletUtil_Package;


