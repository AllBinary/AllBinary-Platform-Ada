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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type XmlOptionItemsEntityFactory is tagged;
   type XmlOptionItemsEntityFactory_Access is access all XmlOptionItemsEntityFactory'Class;
   type XmlOptionItemsEntityFactory_Access_Array is array (Natural range <>) of XmlOptionItemsEntityFactory_Access;
   type XmlOptionItemsEntityFactory_Access_Array_Access is access all XmlOptionItemsEntityFactory_Access_Array;

   type XmlOptionItemsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : XmlOptionItemsEntityFactory_Access;

   procedure Initialize (This : in out XmlOptionItemsEntityFactory'Class);
   function Create return XmlOptionItemsEntityFactory_Access;
   function getInstance return XmlOptionItemsEntityFactory_Access;
   procedure getInstance;
   function getXmlOptionItemsEntityInstance (This : in out XmlOptionItemsEntityFactory) return XmlOptionItemsEntity_Access;
   procedure getXmlOptionItemsEntityInstance (This : in out XmlOptionItemsEntityFactory);

end org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory_Package;


