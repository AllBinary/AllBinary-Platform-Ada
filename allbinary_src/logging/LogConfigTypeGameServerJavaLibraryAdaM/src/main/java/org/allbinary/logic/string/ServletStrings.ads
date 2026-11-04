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

limited with org.allbinary.logic.string_Id.ServletStrings_Package;
package org.allbinary.logic.string_Id.ServletStrings_Package_References is
   type ServletStrings_Access is access all org.allbinary.logic.string_Id.ServletStrings_Package.ServletStrings'Class;
   type ServletStrings_Access_Array is array (Natural range <>) of ServletStrings_Access;
   type ServletStrings_Access_Array_Access is access all ServletStrings_Access_Array;
   type ServletStrings_Access_Array_Access_Array is array (Natural range <>) of ServletStrings_Access_Array_Access;
   type ServletStrings_Access_Array_Access_Array_Access is access all ServletStrings_Access_Array_Access_Array;
end org.allbinary.logic.string_Id.ServletStrings_Package_References;

with org.allbinary.logic.string_Id.ServletStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.string_Id.ServletStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ServletStrings_Access is org.allbinary.logic.string_Id.ServletStrings_Package_References.ServletStrings_Access;
   function "=" (Left, Right : ServletStrings_Access) return Boolean renames org.allbinary.logic.string_Id.ServletStrings_Package_References."=";
   subtype ServletStrings_Access_Array is org.allbinary.logic.string_Id.ServletStrings_Package_References.ServletStrings_Access_Array;
   function "=" (Left, Right : ServletStrings_Access_Array) return Boolean renames org.allbinary.logic.string_Id.ServletStrings_Package_References."=";
   subtype ServletStrings_Access_Array_Access is org.allbinary.logic.string_Id.ServletStrings_Package_References.ServletStrings_Access_Array_Access;
   function "=" (Left, Right : ServletStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.ServletStrings_Package_References."=";
   subtype ServletStrings_Access_Array_Access_Array is org.allbinary.logic.string_Id.ServletStrings_Package_References.ServletStrings_Access_Array_Access_Array;
   function "=" (Left, Right : ServletStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.ServletStrings_Package_References."=";
   subtype ServletStrings_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.ServletStrings_Package_References.ServletStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServletStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.ServletStrings_Package_References."=";

   type ServletStrings is new Java_Object with record
      DOPOST : Unbounded_String;
      DOGET : Unbounded_String;
      REQUEST_EXCEPTION : Unbounded_String;
   end record;
   instance : ServletStrings_Access;

   procedure Initialize (This : in out ServletStrings'Class);
   function Create return ServletStrings_Access;
   function getInstance return ServletStrings_Access;

end org.allbinary.logic.string_Id.ServletStrings_Package;


