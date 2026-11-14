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
limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References is
   type TransformInfoObjectConfigGeneratorInterface_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package.TransformInfoObjectConfigGeneratorInterface'Class;
   type TransformInfoObjectConfigGeneratorInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorInterface_Access;
   type TransformInfoObjectConfigGeneratorInterface_Access_Array_Access is access all TransformInfoObjectConfigGeneratorInterface_Access_Array;
   type TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorInterface_Access_Array_Access;
   type TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array;
   type TransformInfoObjectConfigGeneratorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigGeneratorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigGeneratorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigGeneratorInterface_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigGeneratorInterface_Access_Array_Object'Class then TransformInfoObjectConfigGeneratorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Object'Class then TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type TransformInfoObjectConfigGeneratorInterface is interface;
   subtype TransformInfoObjectConfigGeneratorInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.TransformInfoObjectConfigGeneratorInterface_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.TransformInfoObjectConfigGeneratorInterface_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.TransformInfoObjectConfigGeneratorInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigGeneratorInterface_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigGeneratorInterface_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.Java_Unbox_TransformInfoObjectConfigGeneratorInterface_Access_Array;
   subtype TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package_References.Java_Unbox_TransformInfoObjectConfigGeneratorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransformInfoObjectConfigGeneratorInterface (Value : TransformInfoObjectConfigGeneratorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function process (This : in out TransformInfoObjectConfigGeneratorInterface; input : Unbounded_String) return Unbounded_String is abstract;
   procedure process (This : in out TransformInfoObjectConfigGeneratorInterface; input : Unbounded_String) is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package;


