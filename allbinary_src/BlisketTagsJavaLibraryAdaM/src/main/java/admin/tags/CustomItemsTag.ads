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
with admin.taghelpers.CustomItemsHelperFactory_Package; use admin.taghelpers.CustomItemsHelperFactory_Package;
with admin.taghelpers.CustomItemsRequestHelperFactory_Package; use admin.taghelpers.CustomItemsRequestHelperFactory_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.CustomItemsTag_Package is

   package CustomItemsHelperFactory_Package renames admin.taghelpers.CustomItemsHelperFactory_Package;
   package CustomItemsRequestHelperFactory_Package renames admin.taghelpers.CustomItemsRequestHelperFactory_Package;

   type CustomItemsTag is tagged;
   type CustomItemsTag_Access is access all CustomItemsTag'Class;
   type CustomItemsTag_Access_Array is array (Natural range <>) of CustomItemsTag_Access;
   type CustomItemsTag_Access_Array_Access is access all CustomItemsTag_Access_Array;

   type CustomItemsTag is new TableTag with null record;

   procedure Initialize (This : in out CustomItemsTag'Class);
   function Create return CustomItemsTag_Access;

end admin.tags.CustomItemsTag_Package;


