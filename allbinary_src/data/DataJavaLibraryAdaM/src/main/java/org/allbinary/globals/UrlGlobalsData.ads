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

limited with org.allbinary.globals.UrlGlobalsData_Package;
package org.allbinary.globals.UrlGlobalsData_Package_References is
   type UrlGlobalsData_Access is access all org.allbinary.globals.UrlGlobalsData_Package.UrlGlobalsData'Class;
   type UrlGlobalsData_Access_Array is array (Natural range <>) of UrlGlobalsData_Access;
   type UrlGlobalsData_Access_Array_Access is access all UrlGlobalsData_Access_Array;
   type UrlGlobalsData_Access_Array_Access_Array is array (Natural range <>) of UrlGlobalsData_Access_Array_Access;
   type UrlGlobalsData_Access_Array_Access_Array_Access is access all UrlGlobalsData_Access_Array_Access_Array;
end org.allbinary.globals.UrlGlobalsData_Package_References;

with org.allbinary.globals.UrlGlobalsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.globals.UrlGlobalsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UrlGlobalsData_Access is org.allbinary.globals.UrlGlobalsData_Package_References.UrlGlobalsData_Access;
   function "=" (Left, Right : UrlGlobalsData_Access) return Boolean renames org.allbinary.globals.UrlGlobalsData_Package_References."=";
   subtype UrlGlobalsData_Access_Array is org.allbinary.globals.UrlGlobalsData_Package_References.UrlGlobalsData_Access_Array;
   function "=" (Left, Right : UrlGlobalsData_Access_Array) return Boolean renames org.allbinary.globals.UrlGlobalsData_Package_References."=";
   subtype UrlGlobalsData_Access_Array_Access is org.allbinary.globals.UrlGlobalsData_Package_References.UrlGlobalsData_Access_Array_Access;
   function "=" (Left, Right : UrlGlobalsData_Access_Array_Access) return Boolean renames org.allbinary.globals.UrlGlobalsData_Package_References."=";
   subtype UrlGlobalsData_Access_Array_Access_Array is org.allbinary.globals.UrlGlobalsData_Package_References.UrlGlobalsData_Access_Array_Access_Array;
   function "=" (Left, Right : UrlGlobalsData_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.UrlGlobalsData_Package_References."=";
   subtype UrlGlobalsData_Access_Array_Access_Array_Access is org.allbinary.globals.UrlGlobalsData_Package_References.UrlGlobalsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UrlGlobalsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.UrlGlobalsData_Package_References."=";

   type UrlGlobalsData is new Java_Object with null record;
   NAME : Unbounded_String;
   WEBAPPPATH : Unbounded_String;
   TESTINGMODE : Unbounded_String;
   TESTINGHTMLPATH : Unbounded_String;
   MAINPATH : Unbounded_String;

   procedure Initialize (This : in out UrlGlobalsData'Class);
   function Create return UrlGlobalsData_Access;

end org.allbinary.globals.UrlGlobalsData_Package;


