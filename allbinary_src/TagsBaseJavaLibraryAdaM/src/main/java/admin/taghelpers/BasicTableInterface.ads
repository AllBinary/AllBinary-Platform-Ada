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

package admin.taghelpers.BasicTableInterface_Package is


   type BasicTableInterface is interface;
   type BasicTableInterface_Access is access all BasicTableInterface'Class;
   type BasicTableInterface_Access_Array is array (Natural range <>) of BasicTableInterface_Access;
   type BasicTableInterface_Access_Array_Access is access all BasicTableInterface_Access_Array;
   function drop (This : in out BasicTableInterface) return Unbounded_String is abstract;
   function create (This : in out BasicTableInterface) return Unbounded_String is abstract;
   function restore (This : in out BasicTableInterface) return Unbounded_String is abstract;
   function backup (This : in out BasicTableInterface) return Unbounded_String is abstract;

end admin.taghelpers.BasicTableInterface_Package;


