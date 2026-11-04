-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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

limited with org.allbinary.logic.PropertyInitUtil_Package;
package org.allbinary.logic.PropertyInitUtil_Package_References is
   type PropertyInitUtil_Access is access all org.allbinary.logic.PropertyInitUtil_Package.PropertyInitUtil'Class;
   type PropertyInitUtil_Access_Array is array (Natural range <>) of PropertyInitUtil_Access;
   type PropertyInitUtil_Access_Array_Access is access all PropertyInitUtil_Access_Array;
   type PropertyInitUtil_Access_Array_Access_Array is array (Natural range <>) of PropertyInitUtil_Access_Array_Access;
   type PropertyInitUtil_Access_Array_Access_Array_Access is access all PropertyInitUtil_Access_Array_Access_Array;
end org.allbinary.logic.PropertyInitUtil_Package_References;

with org.allbinary.logic.PropertyInitUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.PropertyInitUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PropertyInitUtil_Access is org.allbinary.logic.PropertyInitUtil_Package_References.PropertyInitUtil_Access;
   function "=" (Left, Right : PropertyInitUtil_Access) return Boolean renames org.allbinary.logic.PropertyInitUtil_Package_References."=";
   subtype PropertyInitUtil_Access_Array is org.allbinary.logic.PropertyInitUtil_Package_References.PropertyInitUtil_Access_Array;
   function "=" (Left, Right : PropertyInitUtil_Access_Array) return Boolean renames org.allbinary.logic.PropertyInitUtil_Package_References."=";
   subtype PropertyInitUtil_Access_Array_Access is org.allbinary.logic.PropertyInitUtil_Package_References.PropertyInitUtil_Access_Array_Access;
   function "=" (Left, Right : PropertyInitUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.PropertyInitUtil_Package_References."=";
   subtype PropertyInitUtil_Access_Array_Access_Array is org.allbinary.logic.PropertyInitUtil_Package_References.PropertyInitUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PropertyInitUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.PropertyInitUtil_Package_References."=";
   subtype PropertyInitUtil_Access_Array_Access_Array_Access is org.allbinary.logic.PropertyInitUtil_Package_References.PropertyInitUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PropertyInitUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.PropertyInitUtil_Package_References."=";

   type PropertyInitUtil is new Java_Object with null record;
   instance : PropertyInitUtil_Access;

   procedure Initialize (This : in out PropertyInitUtil'Class);
   function Create return PropertyInitUtil_Access;
   function getInstance (value : Integer) return PropertyInitUtil_Access;
   procedure getInstance (value : Integer);

end org.allbinary.logic.PropertyInitUtil_Package;


