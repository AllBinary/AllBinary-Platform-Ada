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

limited with org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package;
package org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References is
   type XmlOptionItemsEntityFactory_Access is access all org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package.XmlOptionItemsEntityFactory'Class;
   type XmlOptionItemsEntityFactory_Access_Array is array (Natural range <>) of XmlOptionItemsEntityFactory_Access;
   type XmlOptionItemsEntityFactory_Access_Array_Access is access all XmlOptionItemsEntityFactory_Access_Array;
   type XmlOptionItemsEntityFactory_Access_Array_Access_Array is array (Natural range <>) of XmlOptionItemsEntityFactory_Access_Array_Access;
   type XmlOptionItemsEntityFactory_Access_Array_Access_Array_Access is access all XmlOptionItemsEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References;
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
limited with org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package_References;

package org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package is

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
   subtype XmlOptionItemsEntity_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package_References.XmlOptionItemsEntity_Access;
   use type XmlOptionItemsEntity_Access;
   subtype XmlOptionItemsEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package_References.XmlOptionItemsEntity_Access_Array;
   use type XmlOptionItemsEntity_Access_Array;
   subtype XmlOptionItemsEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package_References.XmlOptionItemsEntity_Access_Array_Access;
   use type XmlOptionItemsEntity_Access_Array_Access;
   subtype XmlOptionItemsEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package_References.XmlOptionItemsEntity_Access_Array_Access_Array;
   use type XmlOptionItemsEntity_Access_Array_Access_Array;
   subtype XmlOptionItemsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package_References.XmlOptionItemsEntity_Access_Array_Access_Array_Access;
   use type XmlOptionItemsEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype XmlOptionItemsEntityFactory_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References.XmlOptionItemsEntityFactory_Access;
   function "=" (Left, Right : XmlOptionItemsEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References."=";
   subtype XmlOptionItemsEntityFactory_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References.XmlOptionItemsEntityFactory_Access_Array;
   function "=" (Left, Right : XmlOptionItemsEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References."=";
   subtype XmlOptionItemsEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References.XmlOptionItemsEntityFactory_Access_Array_Access;
   function "=" (Left, Right : XmlOptionItemsEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References."=";
   subtype XmlOptionItemsEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References.XmlOptionItemsEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : XmlOptionItemsEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References."=";
   subtype XmlOptionItemsEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References.XmlOptionItemsEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlOptionItemsEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package_References."=";

   type XmlOptionItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : XmlOptionItemsEntityFactory_Access;

   procedure Initialize (This : in out XmlOptionItemsEntityFactory'Class);
   function Create return XmlOptionItemsEntityFactory_Access;
   function getInstance return XmlOptionItemsEntityFactory_Access;
   function getXmlOptionItemsEntityInstance (This : in out XmlOptionItemsEntityFactory) return XmlOptionItemsEntity_Access;

end org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package;


