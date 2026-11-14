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
limited with org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;
package org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References is
   type StoreEmailInfo_Access is access all org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package.StoreEmailInfo'Class;
   type StoreEmailInfo_Access_Array is array (Natural range <>) of StoreEmailInfo_Access;
   type StoreEmailInfo_Access_Array_Access is access all StoreEmailInfo_Access_Array;
   type StoreEmailInfo_Access_Array_Access_Array is array (Natural range <>) of StoreEmailInfo_Access_Array_Access;
   type StoreEmailInfo_Access_Array_Access_Array_Access is access all StoreEmailInfo_Access_Array_Access_Array;
   type StoreEmailInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreEmailInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreEmailInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreEmailInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreEmailInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreEmailInfo_Access_Array_Access is (if Value /= null and then Value.all in StoreEmailInfo_Access_Array_Object'Class then StoreEmailInfo_Access_Array_Object'Class (Value.all).Value else null);
   type StoreEmailInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreEmailInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreEmailInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreEmailInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreEmailInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreEmailInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreEmailInfo_Access_Array_Access_Array_Object'Class then StoreEmailInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References;

with org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;

package org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype StoreEmailInfo_Access is org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.StoreEmailInfo_Access;
   function "=" (Left, Right : StoreEmailInfo_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References."=";
   subtype StoreEmailInfo_Access_Array is org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.StoreEmailInfo_Access_Array;
   function "=" (Left, Right : StoreEmailInfo_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References."=";
   subtype StoreEmailInfo_Access_Array_Access is org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.StoreEmailInfo_Access_Array_Access;
   function "=" (Left, Right : StoreEmailInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References."=";
   function Java_Box (Value : StoreEmailInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.Java_Box;
   function Java_Unbox_StoreEmailInfo_Access_Array (Value : access Java_Object'Class) return StoreEmailInfo_Access_Array_Access renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.Java_Unbox_StoreEmailInfo_Access_Array;
   subtype StoreEmailInfo_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.StoreEmailInfo_Access_Array_Access_Array;
   function "=" (Left, Right : StoreEmailInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References."=";
   subtype StoreEmailInfo_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.StoreEmailInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreEmailInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References."=";
   function Java_Box (Value : StoreEmailInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.Java_Box;
   function Java_Unbox_StoreEmailInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreEmailInfo_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package_References.Java_Unbox_StoreEmailInfo_Access_Array_Access_Array;

   type StoreEmailInfo is new BasicEmailInfo with record
      logUtil : LogUtil_Access;
      storeFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out StoreEmailInfo'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; subject : Unbounded_String; textBody : Unbounded_String);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; subject : Unbounded_String; textBody : Unbounded_String) return StoreEmailInfo_Access;
   procedure init (This : in out StoreEmailInfo);

end org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;


