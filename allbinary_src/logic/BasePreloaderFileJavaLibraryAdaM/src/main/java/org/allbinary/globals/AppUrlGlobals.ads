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

limited with org.allbinary.globals.AppUrlGlobals_Package;
package org.allbinary.globals.AppUrlGlobals_Package_References is
   type AppUrlGlobals_Access is access all org.allbinary.globals.AppUrlGlobals_Package.AppUrlGlobals'Class;
   type AppUrlGlobals_Access_Array is array (Natural range <>) of AppUrlGlobals_Access;
   type AppUrlGlobals_Access_Array_Access is access all AppUrlGlobals_Access_Array;
   type AppUrlGlobals_Access_Array_Access_Array is array (Natural range <>) of AppUrlGlobals_Access_Array_Access;
   type AppUrlGlobals_Access_Array_Access_Array_Access is access all AppUrlGlobals_Access_Array_Access_Array;
end org.allbinary.globals.AppUrlGlobals_Package_References;

with org.allbinary.globals.AppUrlGlobals_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.globals.UrlGlobalsInterface_Package; use org.allbinary.globals.UrlGlobalsInterface_Package;

package org.allbinary.globals.AppUrlGlobals_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AppUrlGlobals_Access is org.allbinary.globals.AppUrlGlobals_Package_References.AppUrlGlobals_Access;
   function "=" (Left, Right : AppUrlGlobals_Access) return Boolean renames org.allbinary.globals.AppUrlGlobals_Package_References."=";
   subtype AppUrlGlobals_Access_Array is org.allbinary.globals.AppUrlGlobals_Package_References.AppUrlGlobals_Access_Array;
   function "=" (Left, Right : AppUrlGlobals_Access_Array) return Boolean renames org.allbinary.globals.AppUrlGlobals_Package_References."=";
   subtype AppUrlGlobals_Access_Array_Access is org.allbinary.globals.AppUrlGlobals_Package_References.AppUrlGlobals_Access_Array_Access;
   function "=" (Left, Right : AppUrlGlobals_Access_Array_Access) return Boolean renames org.allbinary.globals.AppUrlGlobals_Package_References."=";
   subtype AppUrlGlobals_Access_Array_Access_Array is org.allbinary.globals.AppUrlGlobals_Package_References.AppUrlGlobals_Access_Array_Access_Array;
   function "=" (Left, Right : AppUrlGlobals_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.AppUrlGlobals_Package_References."=";
   subtype AppUrlGlobals_Access_Array_Access_Array_Access is org.allbinary.globals.AppUrlGlobals_Package_References.AppUrlGlobals_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AppUrlGlobals_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.AppUrlGlobals_Package_References."=";

   type AppUrlGlobals is new UrlGlobalsInterface with record
      path : Unbounded_String;
   end record;
   NULL_APP_URL_GLOBALS : AppUrlGlobals_Access;

   procedure Initialize (This : in out AppUrlGlobals'Class);
   function Create return AppUrlGlobals_Access;
   function isTestingMode (This : in out AppUrlGlobals) return Boolean;
   function getWebappPath (This : in out AppUrlGlobals) return Unbounded_String;
   procedure setWebappPath (This : in out AppUrlGlobals; path : Unbounded_String);
   function getTestHtmlPath (This : in out AppUrlGlobals) return Unbounded_String;
   function getMainPath (This : in out AppUrlGlobals) return Unbounded_String;

end org.allbinary.globals.AppUrlGlobals_Package;


