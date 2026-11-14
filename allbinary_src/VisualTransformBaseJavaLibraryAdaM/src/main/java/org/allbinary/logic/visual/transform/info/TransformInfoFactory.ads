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
limited with org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References is
   type TransformInfoFactory_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package.TransformInfoFactory'Class;
   type TransformInfoFactory_Access_Array is array (Natural range <>) of TransformInfoFactory_Access;
   type TransformInfoFactory_Access_Array_Access is access all TransformInfoFactory_Access_Array;
   type TransformInfoFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoFactory_Access_Array_Access;
   type TransformInfoFactory_Access_Array_Access_Array_Access is access all TransformInfoFactory_Access_Array_Access_Array;
   type TransformInfoFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoFactory_Access_Array_Object'Class then TransformInfoFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoFactory_Access_Array_Access_Array_Object'Class then TransformInfoFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References;
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

package org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoFactory_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.TransformInfoFactory_Access;
   function "=" (Left, Right : TransformInfoFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References."=";
   subtype TransformInfoFactory_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.TransformInfoFactory_Access_Array;
   function "=" (Left, Right : TransformInfoFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References."=";
   subtype TransformInfoFactory_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.TransformInfoFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References."=";
   function Java_Box (Value : TransformInfoFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoFactory_Access_Array (Value : access Java_Object'Class) return TransformInfoFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.Java_Unbox_TransformInfoFactory_Access_Array;
   subtype TransformInfoFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.TransformInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References."=";
   subtype TransformInfoFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.TransformInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References."=";
   function Java_Box (Value : TransformInfoFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package_References.Java_Unbox_TransformInfoFactory_Access_Array_Access_Array;

   type TransformInfoFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformInfoFactory'Class);
   function Create return TransformInfoFactory_Access;
   function getInstance (This : in out TransformInfoFactory) return TransformInfoInterface_Access;

end org.allbinary.logic.visual.transform.info.TransformInfoFactory_Package;


