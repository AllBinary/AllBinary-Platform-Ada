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
limited with org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References is
   type TransformInfoPropertiesFactory_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package.TransformInfoPropertiesFactory'Class;
   type TransformInfoPropertiesFactory_Access_Array is array (Natural range <>) of TransformInfoPropertiesFactory_Access;
   type TransformInfoPropertiesFactory_Access_Array_Access is access all TransformInfoPropertiesFactory_Access_Array;
   type TransformInfoPropertiesFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoPropertiesFactory_Access_Array_Access;
   type TransformInfoPropertiesFactory_Access_Array_Access_Array_Access is access all TransformInfoPropertiesFactory_Access_Array_Access_Array;
   type TransformInfoPropertiesFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoPropertiesFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoPropertiesFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoPropertiesFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoPropertiesFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoPropertiesFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoPropertiesFactory_Access_Array_Object'Class then TransformInfoPropertiesFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoPropertiesFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoPropertiesFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoPropertiesFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoPropertiesFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoPropertiesFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoPropertiesFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoPropertiesFactory_Access_Array_Access_Array_Object'Class then TransformInfoPropertiesFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References;

package org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype TransformInfoProperties_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access;
   use type TransformInfoProperties_Access;
   subtype TransformInfoProperties_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array;
   use type TransformInfoProperties_Access_Array;
   subtype TransformInfoProperties_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access;
   use type TransformInfoProperties_Access_Array_Access;
   subtype TransformInfoProperties_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access_Array;
   use type TransformInfoProperties_Access_Array_Access_Array;
   subtype TransformInfoProperties_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access_Array_Access;
   use type TransformInfoProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoPropertiesFactory_Access is org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.TransformInfoPropertiesFactory_Access;
   function "=" (Left, Right : TransformInfoPropertiesFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References."=";
   subtype TransformInfoPropertiesFactory_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.TransformInfoPropertiesFactory_Access_Array;
   function "=" (Left, Right : TransformInfoPropertiesFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References."=";
   subtype TransformInfoPropertiesFactory_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.TransformInfoPropertiesFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoPropertiesFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References."=";
   function Java_Box (Value : TransformInfoPropertiesFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoPropertiesFactory_Access_Array (Value : access Java_Object'Class) return TransformInfoPropertiesFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.Java_Unbox_TransformInfoPropertiesFactory_Access_Array;
   subtype TransformInfoPropertiesFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.TransformInfoPropertiesFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoPropertiesFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References."=";
   subtype TransformInfoPropertiesFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.TransformInfoPropertiesFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoPropertiesFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References."=";
   function Java_Box (Value : TransformInfoPropertiesFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoPropertiesFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoPropertiesFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package_References.Java_Unbox_TransformInfoPropertiesFactory_Access_Array_Access_Array;

   type TransformInfoPropertiesFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformInfoPropertiesFactory_Access;

   procedure Initialize (This : in out TransformInfoPropertiesFactory'Class);
   function Create return TransformInfoPropertiesFactory_Access;
   function getInstance return TransformInfoPropertiesFactory_Access;
   function getInstance (This : in out TransformInfoPropertiesFactory; node_Param : access Node_Package.Node'Class) return TransformInfoProperties_Access;
   procedure getInstance (This : in out TransformInfoPropertiesFactory; node_Param : access Node_Package.Node'Class);

end org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;


