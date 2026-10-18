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
with admin.taghelpers.BasicTableInterface_Package; use admin.taghelpers.BasicTableInterface_Package;
with admin.taghelpers.ModifyTableInterface_Package; use admin.taghelpers.ModifyTableInterface_Package;

package admin.taghelpers.TableInterface_Package is


   type TableInterface is interface and BasicTableInterface and ModifyTableInterface;
   type TableInterface_Access is access all TableInterface'Class;
   type TableInterface_Access_Array is array (Natural range <>) of TableInterface_Access;
   type TableInterface_Access_Array_Access is access all TableInterface_Access_Array;
   type TableInterface_Access_Array_Access_Array is array (Natural range <>) of TableInterface_Access_Array_Access;
   type TableInterface_Access_Array_Access_Array_Access is access all TableInterface_Access_Array_Access_Array;

end admin.taghelpers.TableInterface_Package;


