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

limited with org.allbinary.logic.control.workflow.WorkFlowData_Package;
package org.allbinary.logic.control.workflow.WorkFlowData_Package_References is
   type WorkFlowData_Access is access all org.allbinary.logic.control.workflow.WorkFlowData_Package.WorkFlowData'Class;
   type WorkFlowData_Access_Array is array (Natural range <>) of WorkFlowData_Access;
   type WorkFlowData_Access_Array_Access is access all WorkFlowData_Access_Array;
   type WorkFlowData_Access_Array_Access_Array is array (Natural range <>) of WorkFlowData_Access_Array_Access;
   type WorkFlowData_Access_Array_Access_Array_Access is access all WorkFlowData_Access_Array_Access_Array;
end org.allbinary.logic.control.workflow.WorkFlowData_Package_References;

with org.allbinary.logic.control.workflow.WorkFlowData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.workflow.WorkFlowData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype WorkFlowData_Access is org.allbinary.logic.control.workflow.WorkFlowData_Package_References.WorkFlowData_Access;
   function "=" (Left, Right : WorkFlowData_Access) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowData_Package_References."=";
   subtype WorkFlowData_Access_Array is org.allbinary.logic.control.workflow.WorkFlowData_Package_References.WorkFlowData_Access_Array;
   function "=" (Left, Right : WorkFlowData_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowData_Package_References."=";
   subtype WorkFlowData_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowData_Package_References.WorkFlowData_Access_Array_Access;
   function "=" (Left, Right : WorkFlowData_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowData_Package_References."=";
   subtype WorkFlowData_Access_Array_Access_Array is org.allbinary.logic.control.workflow.WorkFlowData_Package_References.WorkFlowData_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowData_Package_References."=";
   subtype WorkFlowData_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowData_Package_References.WorkFlowData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowData_Package_References."=";

   type WorkFlowData is new Java_Object with record
      WORKFLOWS : Unbounded_String;
      WORKFLOW : Unbounded_String;
      NAME : Unbounded_String;
      DATA : Unbounded_String;
   end record;
   instance : WorkFlowData_Access;

   procedure Initialize (This : in out WorkFlowData'Class);
   function Create return WorkFlowData_Access;
   function getInstance return WorkFlowData_Access;

end org.allbinary.logic.control.workflow.WorkFlowData_Package;


