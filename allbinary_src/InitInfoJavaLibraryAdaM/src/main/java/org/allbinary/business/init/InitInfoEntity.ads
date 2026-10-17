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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.business.init.InitSql_Package; use org.allbinary.business.init.InitSql_Package;

package org.allbinary.business.init.InitInfoEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type InitInfoEntity is tagged;
   type InitInfoEntity_Access is access all InitInfoEntity'Class;
   type InitInfoEntity_Access_Array is array (Natural range <>) of InitInfoEntity_Access;
   type InitInfoEntity_Access_Array_Access is access all InitInfoEntity_Access_Array;

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
   procedure get (This : in out InitInfoEntity);
   function is_Id (This : in out InitInfoEntity) return Boolean;
   procedure is_Id (This : in out InitInfoEntity);
   procedure update (This : in out InitInfoEntity);
   procedure add (This : in out InitInfoEntity);
   function createTable (This : in out InitInfoEntity) return Unbounded_String;
   procedure createTable (This : in out InitInfoEntity);

end org.allbinary.business.init.InitInfoEntity_Package;


