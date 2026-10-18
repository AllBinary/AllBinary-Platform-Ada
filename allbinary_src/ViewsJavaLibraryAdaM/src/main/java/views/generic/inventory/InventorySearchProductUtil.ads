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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package views.generic_Id.inventory.InventorySearchProductUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InventorySearchProductUtil is tagged;
   type InventorySearchProductUtil_Access is access all InventorySearchProductUtil'Class;
   type InventorySearchProductUtil_Access_Array is array (Natural range <>) of InventorySearchProductUtil_Access;
   type InventorySearchProductUtil_Access_Array_Access is access all InventorySearchProductUtil_Access_Array;
   type InventorySearchProductUtil_Access_Array_Access_Array is array (Natural range <>) of InventorySearchProductUtil_Access_Array_Access;
   type InventorySearchProductUtil_Access_Array_Access_Array_Access is access all InventorySearchProductUtil_Access_Array_Access_Array;

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


