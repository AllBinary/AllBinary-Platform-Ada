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
limited with views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;
package views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References is
   type StoreCustomizerComponentUtil_Access is access all views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package.StoreCustomizerComponentUtil'Class;
   type StoreCustomizerComponentUtil_Access_Array is array (Natural range <>) of StoreCustomizerComponentUtil_Access;
   type StoreCustomizerComponentUtil_Access_Array_Access is access all StoreCustomizerComponentUtil_Access_Array;
   type StoreCustomizerComponentUtil_Access_Array_Access_Array is array (Natural range <>) of StoreCustomizerComponentUtil_Access_Array_Access;
   type StoreCustomizerComponentUtil_Access_Array_Access_Array_Access is access all StoreCustomizerComponentUtil_Access_Array_Access_Array;
   type StoreCustomizerComponentUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreCustomizerComponentUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreCustomizerComponentUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreCustomizerComponentUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreCustomizerComponentUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreCustomizerComponentUtil_Access_Array_Access is (if Value /= null and then Value.all in StoreCustomizerComponentUtil_Access_Array_Object'Class then StoreCustomizerComponentUtil_Access_Array_Object'Class (Value.all).Value else null);
   type StoreCustomizerComponentUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreCustomizerComponentUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreCustomizerComponentUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreCustomizerComponentUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreCustomizerComponentUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreCustomizerComponentUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreCustomizerComponentUtil_Access_Array_Access_Array_Object'Class then StoreCustomizerComponentUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References;

with views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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


   subtype StoreCustomizerComponentUtil_Access is views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.StoreCustomizerComponentUtil_Access;
   function "=" (Left, Right : StoreCustomizerComponentUtil_Access) return Boolean renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References."=";
   subtype StoreCustomizerComponentUtil_Access_Array is views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.StoreCustomizerComponentUtil_Access_Array;
   function "=" (Left, Right : StoreCustomizerComponentUtil_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References."=";
   subtype StoreCustomizerComponentUtil_Access_Array_Access is views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.StoreCustomizerComponentUtil_Access_Array_Access;
   function "=" (Left, Right : StoreCustomizerComponentUtil_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References."=";
   function Java_Box (Value : StoreCustomizerComponentUtil_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.Java_Box;
   function Java_Unbox_StoreCustomizerComponentUtil_Access_Array (Value : access Java_Object'Class) return StoreCustomizerComponentUtil_Access_Array_Access renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.Java_Unbox_StoreCustomizerComponentUtil_Access_Array;
   subtype StoreCustomizerComponentUtil_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.StoreCustomizerComponentUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StoreCustomizerComponentUtil_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References."=";
   subtype StoreCustomizerComponentUtil_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.StoreCustomizerComponentUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreCustomizerComponentUtil_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References."=";
   function Java_Box (Value : StoreCustomizerComponentUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.Java_Box;
   function Java_Unbox_StoreCustomizerComponentUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreCustomizerComponentUtil_Access_Array_Access_Array_Access renames views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package_References.Java_Unbox_StoreCustomizerComponentUtil_Access_Array_Access_Array;

   type StoreCustomizerComponentUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StoreCustomizerComponentUtil_Access;

   procedure Initialize (This : in out StoreCustomizerComponentUtil'Class);
   function Create return StoreCustomizerComponentUtil_Access;
   function getInstance return StoreCustomizerComponentUtil_Access;
   function generate (This : in out StoreCustomizerComponentUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Unbounded_String;
   procedure generate (This : in out StoreCustomizerComponentUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   procedure generate (This : in out StoreCustomizerComponentUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; allViewsToBeModifiedVector_Param : access BasicArrayList_Package.BasicArrayList'Class);

end views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil_Package;


