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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with admin.taghelpers.BasicOptionItemsHelperFactory_Package; use admin.taghelpers.BasicOptionItemsHelperFactory_Package;
with admin.taghelpers.BasicOptionItemsRequestHelperFactory_Package; use admin.taghelpers.BasicOptionItemsRequestHelperFactory_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.BasicOptionItemsTag_Package is

   package BasicOptionItemsHelperFactory_Package renames admin.taghelpers.BasicOptionItemsHelperFactory_Package;
   package BasicOptionItemsRequestHelperFactory_Package renames admin.taghelpers.BasicOptionItemsRequestHelperFactory_Package;

   type BasicOptionItemsTag is tagged;
   type BasicOptionItemsTag_Access is access all BasicOptionItemsTag'Class;
   type BasicOptionItemsTag_Access_Array is array (Natural range <>) of BasicOptionItemsTag_Access;
   type BasicOptionItemsTag_Access_Array_Access is access all BasicOptionItemsTag_Access_Array;

   type BasicOptionItemsTag is new TableTag with record
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out BasicOptionItemsTag'Class);
   function Create return BasicOptionItemsTag_Access;

end admin.tags.BasicOptionItemsTag_Package;


