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
limited with views.generic_Id.inventory.InventorySearchProductUtil_Package;
package views.generic_Id.inventory.InventorySearchProductUtil_Package_References is
   type InventorySearchProductUtil_Access is access all views.generic_Id.inventory.InventorySearchProductUtil_Package.InventorySearchProductUtil'Class;
   type InventorySearchProductUtil_Access_Array is array (Natural range <>) of InventorySearchProductUtil_Access;
   type InventorySearchProductUtil_Access_Array_Access is access all InventorySearchProductUtil_Access_Array;
   type InventorySearchProductUtil_Access_Array_Access_Array is array (Natural range <>) of InventorySearchProductUtil_Access_Array_Access;
   type InventorySearchProductUtil_Access_Array_Access_Array_Access is access all InventorySearchProductUtil_Access_Array_Access_Array;
   type InventorySearchProductUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventorySearchProductUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : InventorySearchProductUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventorySearchProductUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventorySearchProductUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventorySearchProductUtil_Access_Array_Access is (if Value /= null and then Value.all in InventorySearchProductUtil_Access_Array_Object'Class then InventorySearchProductUtil_Access_Array_Object'Class (Value.all).Value else null);
   type InventorySearchProductUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventorySearchProductUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InventorySearchProductUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventorySearchProductUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventorySearchProductUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventorySearchProductUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InventorySearchProductUtil_Access_Array_Access_Array_Object'Class then InventorySearchProductUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.generic_Id.inventory.InventorySearchProductUtil_Package_References;

with views.generic_Id.inventory.InventorySearchProductUtil_Package_References;
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
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package views.generic_Id.inventory.InventorySearchProductUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   use type SearchRequest_Access;
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   use type SearchRequest_Access_Array;
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   use type SearchRequest_Access_Array_Access;
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   use type SearchRequest_Access_Array_Access_Array;
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   use type SearchRequest_Access_Array_Access_Array_Access;
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


   subtype InventorySearchProductUtil_Access is views.generic_Id.inventory.InventorySearchProductUtil_Package_References.InventorySearchProductUtil_Access;
   function "=" (Left, Right : InventorySearchProductUtil_Access) return Boolean renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References."=";
   subtype InventorySearchProductUtil_Access_Array is views.generic_Id.inventory.InventorySearchProductUtil_Package_References.InventorySearchProductUtil_Access_Array;
   function "=" (Left, Right : InventorySearchProductUtil_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References."=";
   subtype InventorySearchProductUtil_Access_Array_Access is views.generic_Id.inventory.InventorySearchProductUtil_Package_References.InventorySearchProductUtil_Access_Array_Access;
   function "=" (Left, Right : InventorySearchProductUtil_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References."=";
   function Java_Box (Value : InventorySearchProductUtil_Access_Array_Access) return Java_Object_Access renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References.Java_Box;
   function Java_Unbox_InventorySearchProductUtil_Access_Array (Value : access Java_Object'Class) return InventorySearchProductUtil_Access_Array_Access renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References.Java_Unbox_InventorySearchProductUtil_Access_Array;
   subtype InventorySearchProductUtil_Access_Array_Access_Array is views.generic_Id.inventory.InventorySearchProductUtil_Package_References.InventorySearchProductUtil_Access_Array_Access_Array;
   function "=" (Left, Right : InventorySearchProductUtil_Access_Array_Access_Array) return Boolean renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References."=";
   subtype InventorySearchProductUtil_Access_Array_Access_Array_Access is views.generic_Id.inventory.InventorySearchProductUtil_Package_References.InventorySearchProductUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventorySearchProductUtil_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References."=";
   function Java_Box (Value : InventorySearchProductUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References.Java_Box;
   function Java_Unbox_InventorySearchProductUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return InventorySearchProductUtil_Access_Array_Access_Array_Access renames views.generic_Id.inventory.InventorySearchProductUtil_Package_References.Java_Unbox_InventorySearchProductUtil_Access_Array_Access_Array;

   type InventorySearchProductUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      ITEM_NOT_FOUND : Unbounded_String;
   end record;
   instance : InventorySearchProductUtil_Access;

   procedure Initialize (This : in out InventorySearchProductUtil'Class);
   function Create return InventorySearchProductUtil_Access;
   function getInstance return InventorySearchProductUtil_Access;
   function getProduct (This : in out InventorySearchProductUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; product : Unbounded_String) return Unbounded_String;
   procedure getProduct (This : in out InventorySearchProductUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; product : Unbounded_String);

end views.generic_Id.inventory.InventorySearchProductUtil_Package;


