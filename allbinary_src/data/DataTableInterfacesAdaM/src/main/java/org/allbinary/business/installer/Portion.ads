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

limited with org.allbinary.business.installer.Portion_Package;
package org.allbinary.business.installer.Portion_Package_References is
   type Portion_Access is access all org.allbinary.business.installer.Portion_Package.Portion'Class;
   type Portion_Access_Array is array (Natural range <>) of Portion_Access;
   type Portion_Access_Array_Access is access all Portion_Access_Array;
   type Portion_Access_Array_Access_Array is array (Natural range <>) of Portion_Access_Array_Access;
   type Portion_Access_Array_Access_Array_Access is access all Portion_Access_Array_Access_Array;
end org.allbinary.business.installer.Portion_Package_References;

with org.allbinary.business.installer.Portion_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.business.installer.Portion_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Portion_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access;
   function "=" (Left, Right : Portion_Access) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array;
   function "=" (Left, Right : Portion_Access_Array) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access;
   function "=" (Left, Right : Portion_Access_Array_Access) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array;
   function "=" (Left, Right : Portion_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";
   subtype Portion_Access_Array_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Portion_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.Portion_Package_References."=";

   type Portion is new Java_Object with record
      current : Integer;
      total : Integer;
   end record;

   procedure Initialize (This : in out Portion'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return Portion_Access;
   function getCurrent (This : in out Portion) return Integer;
   function getTotal (This : in out Portion) return Integer;

end org.allbinary.business.installer.Portion_Package;


