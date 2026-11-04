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

limited with org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
package org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References is
   type WorkFlowEntityFactory_Access is access all org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package.WorkFlowEntityFactory'Class;
   type WorkFlowEntityFactory_Access_Array is array (Natural range <>) of WorkFlowEntityFactory_Access;
   type WorkFlowEntityFactory_Access_Array_Access is access all WorkFlowEntityFactory_Access_Array;
   type WorkFlowEntityFactory_Access_Array_Access_Array is array (Natural range <>) of WorkFlowEntityFactory_Access_Array_Access;
   type WorkFlowEntityFactory_Access_Array_Access_Array_Access is access all WorkFlowEntityFactory_Access_Array_Access_Array;
end org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References;

with org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tables.workflow.WorkFlowEntity_Package;
with org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References;

package org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package is

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
   subtype WorkFlowEntity_Access is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access;
   use type WorkFlowEntity_Access;
   subtype WorkFlowEntity_Access_Array is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array;
   use type WorkFlowEntity_Access_Array;
   subtype WorkFlowEntity_Access_Array_Access is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array_Access;
   use type WorkFlowEntity_Access_Array_Access;
   subtype WorkFlowEntity_Access_Array_Access_Array is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array_Access_Array;
   use type WorkFlowEntity_Access_Array_Access_Array;
   subtype WorkFlowEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.workflow.WorkFlowEntity_Package_References.WorkFlowEntity_Access_Array_Access_Array_Access;
   use type WorkFlowEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WorkFlowEntityFactory_Access is org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References.WorkFlowEntityFactory_Access;
   function "=" (Left, Right : WorkFlowEntityFactory_Access) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References."=";
   subtype WorkFlowEntityFactory_Access_Array is org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References.WorkFlowEntityFactory_Access_Array;
   function "=" (Left, Right : WorkFlowEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References."=";
   subtype WorkFlowEntityFactory_Access_Array_Access is org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References.WorkFlowEntityFactory_Access_Array_Access;
   function "=" (Left, Right : WorkFlowEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References."=";
   subtype WorkFlowEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References.WorkFlowEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References."=";
   subtype WorkFlowEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References.WorkFlowEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package_References."=";

   type WorkFlowEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : WorkFlowEntityFactory_Access;

   procedure Initialize (This : in out WorkFlowEntityFactory'Class);
   function Create return WorkFlowEntityFactory_Access;
   function getInstance return WorkFlowEntityFactory_Access;
   function create2 (This : in out WorkFlowEntityFactory) return WorkFlowEntity_Access;

end org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;


