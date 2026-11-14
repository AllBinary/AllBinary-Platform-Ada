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

with AllBinary_Java;
limited with org.allbinary.data.tables.workflow.WorkFlowEntity_Package;
package org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References is
   type WorkFlowEntity_Access is access all org.allbinary.data.tables.workflow.WorkFlowEntity_Package.WorkFlowEntity'Class;
   type WorkFlowEntity_Access_Array is array (Natural range <>) of WorkFlowEntity_Access;
   type WorkFlowEntity_Access_Array_Access is access all WorkFlowEntity_Access_Array;
   type WorkFlowEntity_Access_Array_Access_Array is array (Natural range <>) of WorkFlowEntity_Access_Array_Access;
   type WorkFlowEntity_Access_Array_Access_Array_Access is access all WorkFlowEntity_Access_Array_Access_Array;
   type WorkFlowEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkFlowEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkFlowEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkFlowEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkFlowEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkFlowEntity_Access_Array_Access is (if Value /= null and then Value.all in WorkFlowEntity_Access_Array_Object'Class then WorkFlowEntity_Access_Array_Object'Class (Value.all).Value else null);
   type WorkFlowEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkFlowEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkFlowEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkFlowEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkFlowEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkFlowEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WorkFlowEntity_Access_Array_Access_Array_Object'Class then WorkFlowEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References;

with org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
limited with org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package; use org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package;

package org.allbinary.data.tables.workflow.WorkFlowEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype WorkFlowInterface_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access;
   use type WorkFlowInterface_Access;
   subtype WorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array;
   use type WorkFlowInterface_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access;
   subtype WorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array;
   use type WorkFlowInterface_Access_Array_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WorkFlowEntity_Access is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access;
   function "=" (Left, Right : WorkFlowEntity_Access) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References."=";
   subtype WorkFlowEntity_Access_Array is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array;
   function "=" (Left, Right : WorkFlowEntity_Access_Array) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References."=";
   subtype WorkFlowEntity_Access_Array_Access is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array_Access;
   function "=" (Left, Right : WorkFlowEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References."=";
   function Java_Box (Value : WorkFlowEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.Java_Box;
   function Java_Unbox_WorkFlowEntity_Access_Array (Value : access Java_Object'Class) return WorkFlowEntity_Access_Array_Access renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.Java_Unbox_WorkFlowEntity_Access_Array;
   subtype WorkFlowEntity_Access_Array_Access_Array is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References."=";
   subtype WorkFlowEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References."=";
   function Java_Box (Value : WorkFlowEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.Java_Box;
   function Java_Unbox_WorkFlowEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return WorkFlowEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.Java_Unbox_WorkFlowEntity_Access_Array_Access_Array;

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


