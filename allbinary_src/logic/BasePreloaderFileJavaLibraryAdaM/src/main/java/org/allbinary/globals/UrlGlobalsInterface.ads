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
limited with org.allbinary.globals.UrlGlobalsInterface_Package;
package org.allbinary.globals.UrlGlobalsInterface_Package_References is
   type UrlGlobalsInterface_Access is access all org.allbinary.globals.UrlGlobalsInterface_Package.UrlGlobalsInterface'Class;
   type UrlGlobalsInterface_Access_Array is array (Natural range <>) of UrlGlobalsInterface_Access;
   type UrlGlobalsInterface_Access_Array_Access is access all UrlGlobalsInterface_Access_Array;
   type UrlGlobalsInterface_Access_Array_Access_Array is array (Natural range <>) of UrlGlobalsInterface_Access_Array_Access;
   type UrlGlobalsInterface_Access_Array_Access_Array_Access is access all UrlGlobalsInterface_Access_Array_Access_Array;
   type UrlGlobalsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UrlGlobalsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : UrlGlobalsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UrlGlobalsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UrlGlobalsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UrlGlobalsInterface_Access_Array_Access is (if Value /= null and then Value.all in UrlGlobalsInterface_Access_Array_Object'Class then UrlGlobalsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type UrlGlobalsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UrlGlobalsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UrlGlobalsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UrlGlobalsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UrlGlobalsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UrlGlobalsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UrlGlobalsInterface_Access_Array_Access_Array_Object'Class then UrlGlobalsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.globals.UrlGlobalsInterface_Package_References;

with org.allbinary.globals.UrlGlobalsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.globals.UrlGlobalsInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UrlGlobalsInterface_Access is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access;
   function "=" (Left, Right : UrlGlobalsInterface_Access) return Boolean renames org.allbinary.globals.UrlGlobalsInterface_Package_References."=";
   subtype UrlGlobalsInterface_Access_Array is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array;
   function "=" (Left, Right : UrlGlobalsInterface_Access_Array) return Boolean renames org.allbinary.globals.UrlGlobalsInterface_Package_References."=";
   subtype UrlGlobalsInterface_Access_Array_Access is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array_Access;
   function "=" (Left, Right : UrlGlobalsInterface_Access_Array_Access) return Boolean renames org.allbinary.globals.UrlGlobalsInterface_Package_References."=";
   function Java_Box (Value : UrlGlobalsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.UrlGlobalsInterface_Package_References.Java_Box;
   function Java_Unbox_UrlGlobalsInterface_Access_Array (Value : access Java_Object'Class) return UrlGlobalsInterface_Access_Array_Access renames org.allbinary.globals.UrlGlobalsInterface_Package_References.Java_Unbox_UrlGlobalsInterface_Access_Array;
   subtype UrlGlobalsInterface_Access_Array_Access_Array is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UrlGlobalsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.UrlGlobalsInterface_Package_References."=";
   subtype UrlGlobalsInterface_Access_Array_Access_Array_Access is org.allbinary.globals.UrlGlobalsInterface_Package_References.UrlGlobalsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UrlGlobalsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.UrlGlobalsInterface_Package_References."=";
   function Java_Box (Value : UrlGlobalsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.UrlGlobalsInterface_Package_References.Java_Box;
   function Java_Unbox_UrlGlobalsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return UrlGlobalsInterface_Access_Array_Access_Array_Access renames org.allbinary.globals.UrlGlobalsInterface_Package_References.Java_Unbox_UrlGlobalsInterface_Access_Array_Access_Array;

   type UrlGlobalsInterface is new Java_Object with null record;

   procedure Initialize (This : in out UrlGlobalsInterface'Class);
   function Create return UrlGlobalsInterface_Access;
   function getMainPath (This : in out UrlGlobalsInterface) return Unbounded_String;
   function getTestHtmlPath (This : in out UrlGlobalsInterface) return Unbounded_String;
   function getWebappPath (This : in out UrlGlobalsInterface) return Unbounded_String;
   function isTestingMode (This : in out UrlGlobalsInterface) return Boolean;

end org.allbinary.globals.UrlGlobalsInterface_Package;


