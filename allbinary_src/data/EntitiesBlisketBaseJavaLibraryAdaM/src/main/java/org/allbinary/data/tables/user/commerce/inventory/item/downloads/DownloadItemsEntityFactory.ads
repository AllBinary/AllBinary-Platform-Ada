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

limited with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References is
   type DownloadItemsEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package.DownloadItemsEntityFactory'Class;
   type DownloadItemsEntityFactory_Access_Array is array (Natural range <>) of DownloadItemsEntityFactory_Access;
   type DownloadItemsEntityFactory_Access_Array_Access is access all DownloadItemsEntityFactory_Access_Array;
   type DownloadItemsEntityFactory_Access_Array_Access_Array is array (Natural range <>) of DownloadItemsEntityFactory_Access_Array_Access;
   type DownloadItemsEntityFactory_Access_Array_Access_Array_Access is access all DownloadItemsEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References;
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
limited with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package_References;

package org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype DownloadItemsEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package_References.DownloadItemsEntity_Access;
   use type DownloadItemsEntity_Access;
   subtype DownloadItemsEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package_References.DownloadItemsEntity_Access_Array;
   use type DownloadItemsEntity_Access_Array;
   subtype DownloadItemsEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package_References.DownloadItemsEntity_Access_Array_Access;
   use type DownloadItemsEntity_Access_Array_Access;
   subtype DownloadItemsEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package_References.DownloadItemsEntity_Access_Array_Access_Array;
   use type DownloadItemsEntity_Access_Array_Access_Array;
   subtype DownloadItemsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package_References.DownloadItemsEntity_Access_Array_Access_Array_Access;
   use type DownloadItemsEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DownloadItemsEntityFactory_Access is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References.DownloadItemsEntityFactory_Access;
   function "=" (Left, Right : DownloadItemsEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References."=";
   subtype DownloadItemsEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References.DownloadItemsEntityFactory_Access_Array;
   function "=" (Left, Right : DownloadItemsEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References."=";
   subtype DownloadItemsEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References.DownloadItemsEntityFactory_Access_Array_Access;
   function "=" (Left, Right : DownloadItemsEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References."=";
   subtype DownloadItemsEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References.DownloadItemsEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadItemsEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References."=";
   subtype DownloadItemsEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References.DownloadItemsEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadItemsEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package_References."=";

   type DownloadItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : DownloadItemsEntityFactory_Access;

   procedure Initialize (This : in out DownloadItemsEntityFactory'Class);
   function Create return DownloadItemsEntityFactory_Access;
   function getInstance return DownloadItemsEntityFactory_Access;
   function getDownloadItemsEntityInstance (This : in out DownloadItemsEntityFactory) return DownloadItemsEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory_Package;


