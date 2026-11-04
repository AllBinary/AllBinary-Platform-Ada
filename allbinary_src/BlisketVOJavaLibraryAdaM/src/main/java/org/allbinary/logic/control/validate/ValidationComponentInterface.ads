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

limited with org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
package org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References is
   type ValidationComponentInterface_Access is access all org.allbinary.logic.control.validate.ValidationComponentInterface_Package.ValidationComponentInterface'Class;
   type ValidationComponentInterface_Access_Array is array (Natural range <>) of ValidationComponentInterface_Access;
   type ValidationComponentInterface_Access_Array_Access is access all ValidationComponentInterface_Access_Array;
   type ValidationComponentInterface_Access_Array_Access_Array is array (Natural range <>) of ValidationComponentInterface_Access_Array_Access;
   type ValidationComponentInterface_Access_Array_Access_Array_Access is access all ValidationComponentInterface_Access_Array_Access_Array;
end org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References;

with org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;

package org.allbinary.logic.control.validate.ValidationComponentInterface_Package is

   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ValidationComponentInterface is interface and TransformInterface and ValidationInterface;
   subtype ValidationComponentInterface_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access;
   function "=" (Left, Right : ValidationComponentInterface_Access) return Boolean renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References."=";
   subtype ValidationComponentInterface_Access_Array is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array;
   function "=" (Left, Right : ValidationComponentInterface_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References."=";
   subtype ValidationComponentInterface_Access_Array_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access;
   function "=" (Left, Right : ValidationComponentInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References."=";
   subtype ValidationComponentInterface_Access_Array_Access_Array is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ValidationComponentInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References."=";
   subtype ValidationComponentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References.ValidationComponentInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidationComponentInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package_References."=";
   function Java_Object_Access_From_ValidationComponentInterface (Value : ValidationComponentInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.control.validate.ValidationComponentInterface_Package;


