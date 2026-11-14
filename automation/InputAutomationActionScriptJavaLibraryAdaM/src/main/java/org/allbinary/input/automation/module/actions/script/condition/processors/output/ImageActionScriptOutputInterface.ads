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
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References is
   type ImageActionScriptOutputInterface_Access is access all org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package.ImageActionScriptOutputInterface'Class;
   type ImageActionScriptOutputInterface_Access_Array is array (Natural range <>) of ImageActionScriptOutputInterface_Access;
   type ImageActionScriptOutputInterface_Access_Array_Access is access all ImageActionScriptOutputInterface_Access_Array;
   type ImageActionScriptOutputInterface_Access_Array_Access_Array is array (Natural range <>) of ImageActionScriptOutputInterface_Access_Array_Access;
   type ImageActionScriptOutputInterface_Access_Array_Access_Array_Access is access all ImageActionScriptOutputInterface_Access_Array_Access_Array;
   type ImageActionScriptOutputInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageActionScriptOutputInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageActionScriptOutputInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageActionScriptOutputInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageActionScriptOutputInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageActionScriptOutputInterface_Access_Array_Access is (if Value /= null and then Value.all in ImageActionScriptOutputInterface_Access_Array_Object'Class then ImageActionScriptOutputInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ImageActionScriptOutputInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageActionScriptOutputInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageActionScriptOutputInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageActionScriptOutputInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageActionScriptOutputInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageActionScriptOutputInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageActionScriptOutputInterface_Access_Array_Access_Array_Object'Class then ImageActionScriptOutputInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References;

with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package is

   package Reference_Types is
   subtype ImageTypes_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access;
   use type ImageTypes_Access;
   subtype ImageTypes_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array;
   use type ImageTypes_Access_Array;
   subtype ImageTypes_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array_Access;
   use type ImageTypes_Access_Array_Access;
   subtype ImageTypes_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array_Access_Array;
   use type ImageTypes_Access_Array_Access_Array;
   subtype ImageTypes_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array_Access_Array_Access;
   use type ImageTypes_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ImageActionScriptOutputInterface is interface and ProfileActionScriptOutputInterface;
   subtype ImageActionScriptOutputInterface_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   function Java_Box (Value : ImageActionScriptOutputInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.Java_Box;
   function Java_Unbox_ImageActionScriptOutputInterface_Access_Array (Value : access Java_Object'Class) return ImageActionScriptOutputInterface_Access_Array_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.Java_Unbox_ImageActionScriptOutputInterface_Access_Array;
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   subtype ImageActionScriptOutputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.ImageActionScriptOutputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References."=";
   function Java_Box (Value : ImageActionScriptOutputInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.Java_Box;
   function Java_Unbox_ImageActionScriptOutputInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageActionScriptOutputInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package_References.Java_Unbox_ImageActionScriptOutputInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ImageActionScriptOutputInterface (Value : ImageActionScriptOutputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getImageTypes (This : in out ImageActionScriptOutputInterface) return ImageTypes_Access is abstract;
   procedure setImageTypes (This : in out ImageActionScriptOutputInterface; imageTypes_Param : access ImageTypes_Package.ImageTypes'Class) is abstract;
   function isSaved (This : in out ImageActionScriptOutputInterface) return Boolean is abstract;
   procedure setSaved (This : in out ImageActionScriptOutputInterface; saved : Boolean) is abstract;
   function isDisplay (This : in out ImageActionScriptOutputInterface) return Boolean is abstract;
   procedure setDisplay (This : in out ImageActionScriptOutputInterface; display : Boolean) is abstract;
   procedure log (This : in out ImageActionScriptOutputInterface) is abstract;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;


