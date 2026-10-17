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

package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type StoreFrontsEntityFactory is tagged;
   type StoreFrontsEntityFactory_Access is access all StoreFrontsEntityFactory'Class;
   type StoreFrontsEntityFactory_Access_Array is array (Natural range <>) of StoreFrontsEntityFactory_Access;
   type StoreFrontsEntityFactory_Access_Array_Access is access all StoreFrontsEntityFactory_Access_Array;

   type StoreFrontsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StoreFrontsEntityFactory_Access;

   procedure Initialize (This : in out StoreFrontsEntityFactory'Class);
   function Create return StoreFrontsEntityFactory_Access;
   function getInstance return StoreFrontsEntityFactory_Access;
   procedure getInstance;
   function getStoreFrontsEntityInstance (This : in out StoreFrontsEntityFactory) return StoreFrontsEntity_Access;
   procedure getStoreFrontsEntityInstance (This : in out StoreFrontsEntityFactory);

end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;


