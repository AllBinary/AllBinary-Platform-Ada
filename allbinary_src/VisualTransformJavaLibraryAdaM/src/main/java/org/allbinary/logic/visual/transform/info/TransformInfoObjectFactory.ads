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
limited with org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References is
   type TransformInfoObjectFactory_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package.TransformInfoObjectFactory'Class;
   type TransformInfoObjectFactory_Access_Array is array (Natural range <>) of TransformInfoObjectFactory_Access;
   type TransformInfoObjectFactory_Access_Array_Access is access all TransformInfoObjectFactory_Access_Array;
   type TransformInfoObjectFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectFactory_Access_Array_Access;
   type TransformInfoObjectFactory_Access_Array_Access_Array_Access is access all TransformInfoObjectFactory_Access_Array_Access_Array;
   type TransformInfoObjectFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectFactory_Access_Array_Object'Class then TransformInfoObjectFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoObjectFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectFactory_Access_Array_Access_Array_Object'Class then TransformInfoObjectFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype TransformInterface_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access;
   use type TransformInterface_Access;
   subtype TransformInterface_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array;
   use type TransformInterface_Access_Array;
   subtype TransformInterface_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access;
   use type TransformInterface_Access_Array_Access;
   subtype TransformInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array;
   use type TransformInterface_Access_Array_Access_Array;
   subtype TransformInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.TransformInterface_Package_References.TransformInterface_Access_Array_Access_Array_Access;
   use type TransformInterface_Access_Array_Access_Array_Access;
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


   subtype TransformInfoObjectFactory_Access is org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.TransformInfoObjectFactory_Access;
   function "=" (Left, Right : TransformInfoObjectFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References."=";
   subtype TransformInfoObjectFactory_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.TransformInfoObjectFactory_Access_Array;
   function "=" (Left, Right : TransformInfoObjectFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References."=";
   subtype TransformInfoObjectFactory_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.TransformInfoObjectFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References."=";
   function Java_Box (Value : TransformInfoObjectFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectFactory_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.Java_Unbox_TransformInfoObjectFactory_Access_Array;
   subtype TransformInfoObjectFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.TransformInfoObjectFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References."=";
   subtype TransformInfoObjectFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.TransformInfoObjectFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References."=";
   function Java_Box (Value : TransformInfoObjectFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package_References.Java_Unbox_TransformInfoObjectFactory_Access_Array_Access_Array;

   type TransformInfoObjectFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformInfoObjectFactory_Access;

   procedure Initialize (This : in out TransformInfoObjectFactory'Class);
   function Create return TransformInfoObjectFactory_Access;
   function getInstance return TransformInfoObjectFactory_Access;
   function getInstance (This : in out TransformInfoObjectFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformInfoObjectFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;


