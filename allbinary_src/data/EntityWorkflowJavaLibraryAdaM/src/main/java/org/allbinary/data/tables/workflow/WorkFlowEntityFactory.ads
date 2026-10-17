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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.data.tables.workflow.WorkFlowEntity_Package; use org.allbinary.data.tables.workflow.WorkFlowEntity_Package;

package org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type WorkFlowEntityFactory is tagged;
   type WorkFlowEntityFactory_Access is access all WorkFlowEntityFactory'Class;
   type WorkFlowEntityFactory_Access_Array is array (Natural range <>) of WorkFlowEntityFactory_Access;
   type WorkFlowEntityFactory_Access_Array_Access is access all WorkFlowEntityFactory_Access_Array;

   type WorkFlowEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : WorkFlowEntityFactory_Access;

   procedure Initialize (This : in out WorkFlowEntityFactory'Class);
   function Create return WorkFlowEntityFactory_Access;
   function getInstance return WorkFlowEntityFactory_Access;
   function create2 (This : in out WorkFlowEntityFactory) return WorkFlowEntity_Access;

end org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;


