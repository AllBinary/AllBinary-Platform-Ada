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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package; use org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package;

package org.allbinary.data.tables.workflow.WorkFlowEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type WorkFlowEntity is tagged;
   type WorkFlowEntity_Access is access all WorkFlowEntity'Class;
   type WorkFlowEntity_Access_Array is array (Natural range <>) of WorkFlowEntity_Access;
   type WorkFlowEntity_Access_Array_Access is access all WorkFlowEntity_Access_Array;
   type WorkFlowEntity_Access_Array_Access_Array is array (Natural range <>) of WorkFlowEntity_Access_Array_Access;
   type WorkFlowEntity_Access_Array_Access_Array_Access is access all WorkFlowEntity_Access_Array_Access_Array;

   type WorkFlowEntity is new AbSqlBean and WorkFlowEntityInterface with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      tableName : Unbounded_String;
      METHOD_GET : Unbounded_String;
      METHOD_UPDATE : Unbounded_String;
   end record;

   procedure Initialize (This : in out WorkFlowEntity'Class);
   function Create return WorkFlowEntity_Access;
   procedure insert (This : in out WorkFlowEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure delete (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String);
   function get (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String) return WorkFlowInterface_Access;
   procedure get (This : in out WorkFlowEntity; name : Unbounded_String; storeName : Unbounded_String);
   function get (This : in out WorkFlowEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out WorkFlowEntity; storeName : Unbounded_String);
   procedure update (This : in out WorkFlowEntity; updatedValues_Param : access HashMap_Package.HashMap'Class);
   function createTableStatement (This : in out WorkFlowEntity) return Unbounded_String;
   function createTable (This : in out WorkFlowEntity) return Unbounded_String;
   function dropTable (This : in out WorkFlowEntity) return Unbounded_String;

end org.allbinary.data.tables.workflow.WorkFlowEntity_Package;


