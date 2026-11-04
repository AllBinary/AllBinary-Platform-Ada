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

limited with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
package org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References is
   type StoreWorkFlowInterface_Access is access all org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package.StoreWorkFlowInterface'Class;
   type StoreWorkFlowInterface_Access_Array is array (Natural range <>) of StoreWorkFlowInterface_Access;
   type StoreWorkFlowInterface_Access_Array_Access is access all StoreWorkFlowInterface_Access_Array;
   type StoreWorkFlowInterface_Access_Array_Access_Array is array (Natural range <>) of StoreWorkFlowInterface_Access_Array_Access;
   type StoreWorkFlowInterface_Access_Array_Access_Array_Access is access all StoreWorkFlowInterface_Access_Array_Access_Array;
end org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References;

with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;

package org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type StoreWorkFlowInterface is interface and WorkFlowInterface;
   subtype StoreWorkFlowInterface_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access;
   function "=" (Left, Right : StoreWorkFlowInterface_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   subtype StoreWorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References.StoreWorkFlowInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package_References."=";
   function Java_Object_Access_From_StoreWorkFlowInterface (Value : StoreWorkFlowInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getStoreName (This : in out StoreWorkFlowInterface) return Unbounded_String is abstract;

end org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;


