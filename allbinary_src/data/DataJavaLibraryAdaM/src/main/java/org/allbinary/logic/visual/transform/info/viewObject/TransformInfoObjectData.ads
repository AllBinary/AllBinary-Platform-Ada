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

limited with org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package;
package org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References is
   type TransformInfoObjectData_Access is access all org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package.TransformInfoObjectData'Class;
   type TransformInfoObjectData_Access_Array is array (Natural range <>) of TransformInfoObjectData_Access;
   type TransformInfoObjectData_Access_Array_Access is access all TransformInfoObjectData_Access_Array;
   type TransformInfoObjectData_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectData_Access_Array_Access;
   type TransformInfoObjectData_Access_Array_Access_Array_Access is access all TransformInfoObjectData_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References;

with org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoObjectData_Access is org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References.TransformInfoObjectData_Access;
   function "=" (Left, Right : TransformInfoObjectData_Access) return Boolean renames org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References."=";
   subtype TransformInfoObjectData_Access_Array is org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References.TransformInfoObjectData_Access_Array;
   function "=" (Left, Right : TransformInfoObjectData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References."=";
   subtype TransformInfoObjectData_Access_Array_Access is org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References.TransformInfoObjectData_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References."=";
   subtype TransformInfoObjectData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References.TransformInfoObjectData_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References."=";
   subtype TransformInfoObjectData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References.TransformInfoObjectData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package_References."=";

   type TransformInfoObjectData is new Java_Object with record
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : TransformInfoObjectData_Access;

   procedure Initialize (This : in out TransformInfoObjectData'Class);
   function Create return TransformInfoObjectData_Access;
   function getInstance return TransformInfoObjectData_Access;

end org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package;


