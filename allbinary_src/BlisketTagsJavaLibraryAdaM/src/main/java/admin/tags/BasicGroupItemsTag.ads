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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with admin.taghelpers.BasicGroupItemsHelperFactory_Package; use admin.taghelpers.BasicGroupItemsHelperFactory_Package;
with admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package; use admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.BasicGroupItemsTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicGroupItemsHelperFactory_Package renames Standard.admin.taghelpers.BasicGroupItemsHelperFactory_Package;
   package BasicGroupItemsRequestHelperFactory_Package renames Standard.admin.taghelpers.BasicGroupItemsRequestHelperFactory_Package;

   type BasicGroupItemsTag is tagged;
   type BasicGroupItemsTag_Access is access all BasicGroupItemsTag'Class;
   type BasicGroupItemsTag_Access_Array is array (Natural range <>) of BasicGroupItemsTag_Access;
   type BasicGroupItemsTag_Access_Array_Access is access all BasicGroupItemsTag_Access_Array;

   type BasicGroupItemsTag is new TableTag with record
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out BasicGroupItemsTag'Class);
   function Create return BasicGroupItemsTag_Access;

end admin.tags.BasicGroupItemsTag_Package;


