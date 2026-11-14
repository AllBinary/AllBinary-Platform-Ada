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
limited with org.allbinary.globals.WebAppUrlGlobals_Package;
package org.allbinary.globals.WebAppUrlGlobals_Package_References is
   type WebAppUrlGlobals_Access is access all org.allbinary.globals.WebAppUrlGlobals_Package.WebAppUrlGlobals'Class;
   type WebAppUrlGlobals_Access_Array is array (Natural range <>) of WebAppUrlGlobals_Access;
   type WebAppUrlGlobals_Access_Array_Access is access all WebAppUrlGlobals_Access_Array;
   type WebAppUrlGlobals_Access_Array_Access_Array is array (Natural range <>) of WebAppUrlGlobals_Access_Array_Access;
   type WebAppUrlGlobals_Access_Array_Access_Array_Access is access all WebAppUrlGlobals_Access_Array_Access_Array;
   type WebAppUrlGlobals_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WebAppUrlGlobals_Access_Array_Access;
   end record;
   function Java_Box (Value : WebAppUrlGlobals_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WebAppUrlGlobals_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WebAppUrlGlobals_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WebAppUrlGlobals_Access_Array_Access is (if Value /= null and then Value.all in WebAppUrlGlobals_Access_Array_Object'Class then WebAppUrlGlobals_Access_Array_Object'Class (Value.all).Value else null);
   type WebAppUrlGlobals_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WebAppUrlGlobals_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WebAppUrlGlobals_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WebAppUrlGlobals_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WebAppUrlGlobals_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WebAppUrlGlobals_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WebAppUrlGlobals_Access_Array_Access_Array_Object'Class then WebAppUrlGlobals_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.globals.WebAppUrlGlobals_Package_References;

with org.allbinary.globals.WebAppUrlGlobals_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.globals.UrlGlobalsInterface_Package; use org.allbinary.globals.UrlGlobalsInterface_Package;

package org.allbinary.globals.WebAppUrlGlobals_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype WebAppUrlGlobals_Access is org.allbinary.globals.WebAppUrlGlobals_Package_References.WebAppUrlGlobals_Access;
   function "=" (Left, Right : WebAppUrlGlobals_Access) return Boolean renames org.allbinary.globals.WebAppUrlGlobals_Package_References."=";
   subtype WebAppUrlGlobals_Access_Array is org.allbinary.globals.WebAppUrlGlobals_Package_References.WebAppUrlGlobals_Access_Array;
   function "=" (Left, Right : WebAppUrlGlobals_Access_Array) return Boolean renames org.allbinary.globals.WebAppUrlGlobals_Package_References."=";
   subtype WebAppUrlGlobals_Access_Array_Access is org.allbinary.globals.WebAppUrlGlobals_Package_References.WebAppUrlGlobals_Access_Array_Access;
   function "=" (Left, Right : WebAppUrlGlobals_Access_Array_Access) return Boolean renames org.allbinary.globals.WebAppUrlGlobals_Package_References."=";
   function Java_Box (Value : WebAppUrlGlobals_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.WebAppUrlGlobals_Package_References.Java_Box;
   function Java_Unbox_WebAppUrlGlobals_Access_Array (Value : access Java_Object'Class) return WebAppUrlGlobals_Access_Array_Access renames org.allbinary.globals.WebAppUrlGlobals_Package_References.Java_Unbox_WebAppUrlGlobals_Access_Array;
   subtype WebAppUrlGlobals_Access_Array_Access_Array is org.allbinary.globals.WebAppUrlGlobals_Package_References.WebAppUrlGlobals_Access_Array_Access_Array;
   function "=" (Left, Right : WebAppUrlGlobals_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.WebAppUrlGlobals_Package_References."=";
   subtype WebAppUrlGlobals_Access_Array_Access_Array_Access is org.allbinary.globals.WebAppUrlGlobals_Package_References.WebAppUrlGlobals_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WebAppUrlGlobals_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.WebAppUrlGlobals_Package_References."=";
   function Java_Box (Value : WebAppUrlGlobals_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.WebAppUrlGlobals_Package_References.Java_Box;
   function Java_Unbox_WebAppUrlGlobals_Access_Array_Access_Array (Value : access Java_Object'Class) return WebAppUrlGlobals_Access_Array_Access_Array_Access renames org.allbinary.globals.WebAppUrlGlobals_Package_References.Java_Unbox_WebAppUrlGlobals_Access_Array_Access_Array;

   type WebAppUrlGlobals is new UrlGlobalsInterface with record
      path : Unbounded_String;
      isWebappPathSet : Boolean;
   end record;

   procedure Initialize (This : in out WebAppUrlGlobals'Class);
   function Create return WebAppUrlGlobals_Access;
   function isTestingMode (This : in out WebAppUrlGlobals) return Boolean;
   function getWebappPath (This : in out WebAppUrlGlobals) return Unbounded_String;
   procedure setWebappPath (This : in out WebAppUrlGlobals; path_Param : Unbounded_String);
   function getTestHtmlPath (This : in out WebAppUrlGlobals) return Unbounded_String;
   function getMainPath (This : in out WebAppUrlGlobals) return Unbounded_String;

end org.allbinary.globals.WebAppUrlGlobals_Package;


