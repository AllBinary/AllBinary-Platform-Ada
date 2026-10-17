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
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;
with taghelpers.transform.info.TransformInfoHelperFactory_Package; use taghelpers.transform.info.TransformInfoHelperFactory_Package;

package tags.transform.info.TransformInfoTableTag_Package is

   package TableTag_Package renames admin.tags.TableTag_Package;
   package TransformInfoHelperFactory_Package renames taghelpers.transform.info.TransformInfoHelperFactory_Package;

   type TransformInfoTableTag is tagged;
   type TransformInfoTableTag_Access is access all TransformInfoTableTag'Class;
   type TransformInfoTableTag_Access_Array is array (Natural range <>) of TransformInfoTableTag_Access;
   type TransformInfoTableTag_Access_Array_Access is access all TransformInfoTableTag_Access_Array;

   type TransformInfoTableTag is new TableTag with null record;

   procedure Initialize (This : in out TransformInfoTableTag'Class);
   function Create return TransformInfoTableTag_Access;

end tags.transform.info.TransformInfoTableTag_Package;


