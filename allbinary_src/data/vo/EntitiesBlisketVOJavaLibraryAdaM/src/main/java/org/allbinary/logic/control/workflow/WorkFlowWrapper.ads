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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;

package org.allbinary.logic.control.workflow.WorkFlowWrapper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type WorkFlowWrapper is tagged;
   type WorkFlowWrapper_Access is access all WorkFlowWrapper'Class;
   type WorkFlowWrapper_Access_Array is array (Natural range <>) of WorkFlowWrapper_Access;
   type WorkFlowWrapper_Access_Array_Access is access all WorkFlowWrapper_Access_Array;

   type WorkFlowWrapper is new WorkFlowInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      anyType : Java_Object_Access;
   end record;

   procedure Initialize (This : in out WorkFlowWrapper'Class; anyType : Java_Object_Access);
   function Create (anyType : Java_Object_Access) return WorkFlowWrapper_Access;
   function getWorkFlowObject (This : in out WorkFlowWrapper) return Java_Object_Access;
   function getName (This : in out WorkFlowWrapper) return Unbounded_String;
   function getStoreName (This : in out WorkFlowWrapper) return Unbounded_String;
   function process (This : in out WorkFlowWrapper) return Integer;

end org.allbinary.logic.control.workflow.WorkFlowWrapper_Package;


