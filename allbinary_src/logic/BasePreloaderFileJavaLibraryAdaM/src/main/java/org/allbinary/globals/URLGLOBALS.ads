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
limited with org.allbinary.globals.URLGLOBALS_Package;
package org.allbinary.globals.URLGLOBALS_Package_References is
   type URLGLOBALS_Access is access all org.allbinary.globals.URLGLOBALS_Package.URLGLOBALS'Class;
   type URLGLOBALS_Access_Array is array (Natural range <>) of URLGLOBALS_Access;
   type URLGLOBALS_Access_Array_Access is access all URLGLOBALS_Access_Array;
   type URLGLOBALS_Access_Array_Access_Array is array (Natural range <>) of URLGLOBALS_Access_Array_Access;
   type URLGLOBALS_Access_Array_Access_Array_Access is access all URLGLOBALS_Access_Array_Access_Array;
   type URLGLOBALS_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : URLGLOBALS_Access_Array_Access;
   end record;
   function Java_Box (Value : URLGLOBALS_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new URLGLOBALS_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_URLGLOBALS_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return URLGLOBALS_Access_Array_Access is (if Value /= null and then Value.all in URLGLOBALS_Access_Array_Object'Class then URLGLOBALS_Access_Array_Object'Class (Value.all).Value else null);
   type URLGLOBALS_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : URLGLOBALS_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : URLGLOBALS_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new URLGLOBALS_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_URLGLOBALS_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return URLGLOBALS_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in URLGLOBALS_Access_Array_Access_Array_Object'Class then URLGLOBALS_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.globals.URLGLOBALS_Package_References;

with org.allbinary.globals.URLGLOBALS_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.globals.UrlGlobalsInterface_Package;
with org.allbinary.globals.UrlGlobalsInterface_Package_References;

package org.allbinary.globals.URLGLOBALS_Package is

   package Reference_Types is
   subtype UrlGlobalsInterface_Access is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access;
   use type UrlGlobalsInterface_Access;
   subtype UrlGlobalsInterface_Access_Array is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array;
   use type UrlGlobalsInterface_Access_Array;
   subtype UrlGlobalsInterface_Access_Array_Access is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array_Access;
   use type UrlGlobalsInterface_Access_Array_Access;
   subtype UrlGlobalsInterface_Access_Array_Access_Array is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array_Access_Array;
   use type UrlGlobalsInterface_Access_Array_Access_Array;
   subtype UrlGlobalsInterface_Access_Array_Access_Array_Access is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array_Access_Array_Access;
   use type UrlGlobalsInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype URLGLOBALS_Access is org.allbinary.globals.URLGLOBALS_Package_References.URLGLOBALS_Access;
   function "=" (Left, Right : URLGLOBALS_Access) return Boolean renames org.allbinary.globals.URLGLOBALS_Package_References."=";
   subtype URLGLOBALS_Access_Array is org.allbinary.globals.URLGLOBALS_Package_References.URLGLOBALS_Access_Array;
   function "=" (Left, Right : URLGLOBALS_Access_Array) return Boolean renames org.allbinary.globals.URLGLOBALS_Package_References."=";
   subtype URLGLOBALS_Access_Array_Access is org.allbinary.globals.URLGLOBALS_Package_References.URLGLOBALS_Access_Array_Access;
   function "=" (Left, Right : URLGLOBALS_Access_Array_Access) return Boolean renames org.allbinary.globals.URLGLOBALS_Package_References."=";
   function Java_Box (Value : URLGLOBALS_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.URLGLOBALS_Package_References.Java_Box;
   function Java_Unbox_URLGLOBALS_Access_Array (Value : access Java_Object'Class) return URLGLOBALS_Access_Array_Access renames org.allbinary.globals.URLGLOBALS_Package_References.Java_Unbox_URLGLOBALS_Access_Array;
   subtype URLGLOBALS_Access_Array_Access_Array is org.allbinary.globals.URLGLOBALS_Package_References.URLGLOBALS_Access_Array_Access_Array;
   function "=" (Left, Right : URLGLOBALS_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.URLGLOBALS_Package_References."=";
   subtype URLGLOBALS_Access_Array_Access_Array_Access is org.allbinary.globals.URLGLOBALS_Package_References.URLGLOBALS_Access_Array_Access_Array_Access;
   function "=" (Left, Right : URLGLOBALS_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.URLGLOBALS_Package_References."=";
   function Java_Box (Value : URLGLOBALS_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.URLGLOBALS_Package_References.Java_Box;
   function Java_Unbox_URLGLOBALS_Access_Array_Access_Array (Value : access Java_Object'Class) return URLGLOBALS_Access_Array_Access_Array_Access renames org.allbinary.globals.URLGLOBALS_Package_References.Java_Unbox_URLGLOBALS_Access_Array_Access_Array;

   type URLGLOBALS is new Java_Object with null record;
   urlGlobalsInterface : UrlGlobalsInterface_Access;

   procedure Initialize (This : in out URLGLOBALS'Class);
   function Create return URLGLOBALS_Access;
   procedure init (urlGlobalsInterface_Param : access UrlGlobalsInterface_Package.UrlGlobalsInterface'Class);
   function isTestingMode return Boolean;
   function getWebappPath return Unbounded_String;
   function getTestHtmlPath return Unbounded_String;
   function getMainPath return Unbounded_String;

end org.allbinary.globals.URLGLOBALS_Package;


