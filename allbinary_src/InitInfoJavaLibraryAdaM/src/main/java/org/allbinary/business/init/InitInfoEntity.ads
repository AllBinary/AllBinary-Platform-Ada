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
with org.allbinary.business.init.InitSql_Package; use org.allbinary.business.init.InitSql_Package;

package org.allbinary.business.init.InitInfoEntity_Package is


   type InitInfoEntity is tagged;
   type InitInfoEntity_Access is access all InitInfoEntity'Class;
   type InitInfoEntity_Access_Array is array (Natural range <>) of InitInfoEntity_Access;
   type InitInfoEntity_Access_Array_Access is access all InitInfoEntity_Access_Array;
   type InitInfoEntity_Access_Array_Access_Array is array (Natural range <>) of InitInfoEntity_Access_Array_Access;
   type InitInfoEntity_Access_Array_Access_Array_Access is access all InitInfoEntity_Access_Array_Access_Array;

   type InitInfoEntity is new InitSql with record
      NAME : Unbounded_String;
      NOTHING : Unbounded_String;
      tableName : Unbounded_String;
      tableData : Unbounded_String;
      NOT_IN_DB : Unbounded_String;
      METHOD_GET : Unbounded_String;
      METHOD_IS : Unbounded_String;
      METHOD_ADD : Unbounded_String;
      CREATED_SUCCESS : Unbounded_String;
      FAILED_TO_CREATE : Unbounded_String;
   end record;

   procedure Initialize (This : in out InitInfoEntity'Class);
   function Create return InitInfoEntity_Access;
   function get (This : in out InitInfoEntity) return Boolean;
   function is_Id (This : in out InitInfoEntity) return Boolean;
   procedure update (This : in out InitInfoEntity);
   procedure add (This : in out InitInfoEntity);
   function createTable (This : in out InitInfoEntity) return Unbounded_String;

end org.allbinary.business.init.InitInfoEntity_Package;


