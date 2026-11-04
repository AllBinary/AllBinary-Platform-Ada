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

limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References is
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package.TransformInfoObjectConfigGeneratorFactoryInterface'Class;
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorFactoryInterface_Access;
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access is access all TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array;
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access;
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package is

   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoObjectConfigGenerator_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access;
   use type TransformInfoObjectConfigGenerator_Access;
   subtype TransformInfoObjectConfigGenerator_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array;
   use type TransformInfoObjectConfigGenerator_Access_Array;
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access;
   use type TransformInfoObjectConfigGenerator_Access_Array_Access;
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access_Array;
   use type TransformInfoObjectConfigGenerator_Access_Array_Access_Array;
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access;
   use type TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransformInfoObjectConfigGeneratorFactoryInterface is interface;
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactoryInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References.TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package_References."=";
   function Java_Object_Access_From_TransformInfoObjectConfigGeneratorFactoryInterface (Value : TransformInfoObjectConfigGeneratorFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out TransformInfoObjectConfigGeneratorFactoryInterface; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfigGenerator_Access is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;


