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

limited with org.allbinary.logic.java.array_Id.IntArrayUtil_Package;
package org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References is
   type IntArrayUtil_Access is access all org.allbinary.logic.java.array_Id.IntArrayUtil_Package.IntArrayUtil'Class;
   type IntArrayUtil_Access_Array is array (Natural range <>) of IntArrayUtil_Access;
   type IntArrayUtil_Access_Array_Access is access all IntArrayUtil_Access_Array;
   type IntArrayUtil_Access_Array_Access_Array is array (Natural range <>) of IntArrayUtil_Access_Array_Access;
   type IntArrayUtil_Access_Array_Access_Array_Access is access all IntArrayUtil_Access_Array_Access_Array;
end org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References;

with org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.array_Id.IntArrayUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype IntArrayUtil_Access is org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References.IntArrayUtil_Access;
   function "=" (Left, Right : IntArrayUtil_Access) return Boolean renames org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References."=";
   subtype IntArrayUtil_Access_Array is org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References.IntArrayUtil_Access_Array;
   function "=" (Left, Right : IntArrayUtil_Access_Array) return Boolean renames org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References."=";
   subtype IntArrayUtil_Access_Array_Access is org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References.IntArrayUtil_Access_Array_Access;
   function "=" (Left, Right : IntArrayUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References."=";
   subtype IntArrayUtil_Access_Array_Access_Array is org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References.IntArrayUtil_Access_Array_Access_Array;
   function "=" (Left, Right : IntArrayUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References."=";
   subtype IntArrayUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References.IntArrayUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IntArrayUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.array_Id.IntArrayUtil_Package_References."=";

   type IntArrayUtil is new Java_Object with null record;

   procedure Initialize (This : in out IntArrayUtil'Class);
   function Create return IntArrayUtil_Access;
   function toString (array_Id : Integer_Array_Access) return Unbounded_String;
   procedure toString (array_Id : Integer_Array_Access);
   function toString (array_Id : Integer_Array_Access_Array_Access) return Unbounded_String;
   procedure toString (array_Id : Integer_Array_Access_Array_Access);
   function toString (array_Id : Integer_Array_Access_Array_Access_Array_Access) return Unbounded_String;
   procedure toString (array_Id : Integer_Array_Access_Array_Access_Array_Access);

end org.allbinary.logic.java.array_Id.IntArrayUtil_Package;


