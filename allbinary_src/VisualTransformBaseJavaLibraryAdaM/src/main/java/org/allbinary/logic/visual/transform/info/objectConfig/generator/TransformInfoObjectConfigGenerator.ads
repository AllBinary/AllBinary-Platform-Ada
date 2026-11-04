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

limited with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References is
   type TransformInfoObjectConfigGenerator_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package.TransformInfoObjectConfigGenerator'Class;
   type TransformInfoObjectConfigGenerator_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGenerator_Access;
   type TransformInfoObjectConfigGenerator_Access_Array_Access is access all TransformInfoObjectConfigGenerator_Access_Array;
   type TransformInfoObjectConfigGenerator_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGenerator_Access_Array_Access;
   type TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigGenerator_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoObjectConfigGenerator_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGenerator_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References."=";
   subtype TransformInfoObjectConfigGenerator_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGenerator_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References."=";
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGenerator_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References."=";
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References."=";
   subtype TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References.TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package_References."=";

   type TransformInfoObjectConfigGenerator is new Java_Object and TransformInfoObjectConfigGeneratorInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out TransformInfoObjectConfigGenerator'Class);
   function Create return TransformInfoObjectConfigGenerator_Access;
   function process (This : in out TransformInfoObjectConfigGenerator; input : Unbounded_String) return Unbounded_String;
   procedure process (This : in out TransformInfoObjectConfigGenerator; input : Unbounded_String);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;


