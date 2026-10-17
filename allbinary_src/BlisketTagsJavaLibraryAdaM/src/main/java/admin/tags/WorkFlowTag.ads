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
with admin.taghelpers.WorkFlowHelperFactory_Package; use admin.taghelpers.WorkFlowHelperFactory_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.WorkFlowTag_Package is

   package WorkFlowHelperFactory_Package renames admin.taghelpers.WorkFlowHelperFactory_Package;

   type WorkFlowTag is tagged;
   type WorkFlowTag_Access is access all WorkFlowTag'Class;
   type WorkFlowTag_Access_Array is array (Natural range <>) of WorkFlowTag_Access;
   type WorkFlowTag_Access_Array_Access is access all WorkFlowTag_Access_Array;

   type WorkFlowTag is new TableTag with null record;

   procedure Initialize (This : in out WorkFlowTag'Class);
   function Create return WorkFlowTag_Access;

end admin.tags.WorkFlowTag_Package;


