-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.logic.io.path.AbPathUtil_Package;
package org.allbinary.logic.io.path.AbPathUtil_Package_References is
   type AbPathUtil_Access is access all org.allbinary.logic.io.path.AbPathUtil_Package.AbPathUtil'Class;
   type AbPathUtil_Access_Array is array (Natural range <>) of AbPathUtil_Access;
   type AbPathUtil_Access_Array_Access is access all AbPathUtil_Access_Array;
   type AbPathUtil_Access_Array_Access_Array is array (Natural range <>) of AbPathUtil_Access_Array_Access;
   type AbPathUtil_Access_Array_Access_Array_Access is access all AbPathUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.path.AbPathUtil_Package_References;

with org.allbinary.logic.io.path.AbPathUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.logic.io.path.AbPathUtil_Package is

   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbPathUtil_Access is org.allbinary.logic.io.path.AbPathUtil_Package_References.AbPathUtil_Access;
   function "=" (Left, Right : AbPathUtil_Access) return Boolean renames org.allbinary.logic.io.path.AbPathUtil_Package_References."=";
   subtype AbPathUtil_Access_Array is org.allbinary.logic.io.path.AbPathUtil_Package_References.AbPathUtil_Access_Array;
   function "=" (Left, Right : AbPathUtil_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPathUtil_Package_References."=";
   subtype AbPathUtil_Access_Array_Access is org.allbinary.logic.io.path.AbPathUtil_Package_References.AbPathUtil_Access_Array_Access;
   function "=" (Left, Right : AbPathUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPathUtil_Package_References."=";
   subtype AbPathUtil_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPathUtil_Package_References.AbPathUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AbPathUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPathUtil_Package_References."=";
   subtype AbPathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPathUtil_Package_References.AbPathUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPathUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPathUtil_Package_References."=";

   type AbPathUtil is new Java_Object with record
      NO_ABPATH : AbPath_Access;
   end record;
   instance : AbPathUtil_Access;

   procedure Initialize (This : in out AbPathUtil'Class);
   function Create return AbPathUtil_Access;
   function getInstance return AbPathUtil_Access;

end org.allbinary.logic.io.path.AbPathUtil_Package;


