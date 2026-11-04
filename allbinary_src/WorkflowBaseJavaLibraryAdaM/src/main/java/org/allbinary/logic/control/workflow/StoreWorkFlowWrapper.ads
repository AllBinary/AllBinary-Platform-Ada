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

limited with org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package;
package org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References is
   type StoreWorkFlowWrapper_Access is access all org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package.StoreWorkFlowWrapper'Class;
   type StoreWorkFlowWrapper_Access_Array is array (Natural range <>) of StoreWorkFlowWrapper_Access;
   type StoreWorkFlowWrapper_Access_Array_Access is access all StoreWorkFlowWrapper_Access_Array;
   type StoreWorkFlowWrapper_Access_Array_Access_Array is array (Natural range <>) of StoreWorkFlowWrapper_Access_Array_Access;
   type StoreWorkFlowWrapper_Access_Array_Access_Array_Access is access all StoreWorkFlowWrapper_Access_Array_Access_Array;
end org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References;

with org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.workflow.WorkFlowWrapper_Package; use org.allbinary.logic.control.workflow.WorkFlowWrapper_Package;

package org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype StoreWorkFlowWrapper_Access is org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References.StoreWorkFlowWrapper_Access;
   function "=" (Left, Right : StoreWorkFlowWrapper_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References."=";
   subtype StoreWorkFlowWrapper_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References.StoreWorkFlowWrapper_Access_Array;
   function "=" (Left, Right : StoreWorkFlowWrapper_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References."=";
   subtype StoreWorkFlowWrapper_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References.StoreWorkFlowWrapper_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowWrapper_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References."=";
   subtype StoreWorkFlowWrapper_Access_Array_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References.StoreWorkFlowWrapper_Access_Array_Access_Array;
   function "=" (Left, Right : StoreWorkFlowWrapper_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References."=";
   subtype StoreWorkFlowWrapper_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References.StoreWorkFlowWrapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowWrapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package_References."=";

   type StoreWorkFlowWrapper is new WorkFlowWrapper with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out StoreWorkFlowWrapper'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return StoreWorkFlowWrapper_Access;
   function getStoreName (This : in out StoreWorkFlowWrapper) return Unbounded_String;

end org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package;


