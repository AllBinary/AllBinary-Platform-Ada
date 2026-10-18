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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.workflow.WorkFlowWrapper_Package; use org.allbinary.logic.control.workflow.WorkFlowWrapper_Package;

package org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type StoreWorkFlowWrapper is tagged;
   type StoreWorkFlowWrapper_Access is access all StoreWorkFlowWrapper'Class;
   type StoreWorkFlowWrapper_Access_Array is array (Natural range <>) of StoreWorkFlowWrapper_Access;
   type StoreWorkFlowWrapper_Access_Array_Access is access all StoreWorkFlowWrapper_Access_Array;
   type StoreWorkFlowWrapper_Access_Array_Access_Array is array (Natural range <>) of StoreWorkFlowWrapper_Access_Array_Access;
   type StoreWorkFlowWrapper_Access_Array_Access_Array_Access is access all StoreWorkFlowWrapper_Access_Array_Access_Array;

   type StoreWorkFlowWrapper is new WorkFlowWrapper with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out StoreWorkFlowWrapper'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return StoreWorkFlowWrapper_Access;
   function getStoreName (This : in out StoreWorkFlowWrapper) return Unbounded_String;

end org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package;


