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
limited with org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
package org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References is
   type WorkFlowInterface_Access is access all org.allbinary.logic.control.workflow.WorkFlowInterface_Package.WorkFlowInterface'Class;
   type WorkFlowInterface_Access_Array is array (Natural range <>) of WorkFlowInterface_Access;
   type WorkFlowInterface_Access_Array_Access is access all WorkFlowInterface_Access_Array;
   type WorkFlowInterface_Access_Array_Access_Array is array (Natural range <>) of WorkFlowInterface_Access_Array_Access;
   type WorkFlowInterface_Access_Array_Access_Array_Access is access all WorkFlowInterface_Access_Array_Access_Array;
   type WorkFlowInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkFlowInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkFlowInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkFlowInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkFlowInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkFlowInterface_Access_Array_Access is (if Value /= null and then Value.all in WorkFlowInterface_Access_Array_Object'Class then WorkFlowInterface_Access_Array_Object'Class (Value.all).Value else null);
   type WorkFlowInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkFlowInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkFlowInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkFlowInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkFlowInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkFlowInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WorkFlowInterface_Access_Array_Access_Array_Object'Class then WorkFlowInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References;

with org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.workflow.WorkFlowInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type WorkFlowInterface is interface;
   subtype WorkFlowInterface_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access;
   function "=" (Left, Right : WorkFlowInterface_Access) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References."=";
   subtype WorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array;
   function "=" (Left, Right : WorkFlowInterface_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References."=";
   subtype WorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access;
   function "=" (Left, Right : WorkFlowInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References."=";
   function Java_Box (Value : WorkFlowInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.Java_Box;
   function Java_Unbox_WorkFlowInterface_Access_Array (Value : access Java_Object'Class) return WorkFlowInterface_Access_Array_Access renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.Java_Unbox_WorkFlowInterface_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References."=";
   subtype WorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References."=";
   function Java_Box (Value : WorkFlowInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.Java_Box;
   function Java_Unbox_WorkFlowInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return WorkFlowInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.Java_Unbox_WorkFlowInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_WorkFlowInterface (Value : WorkFlowInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out WorkFlowInterface) return Unbounded_String is abstract;
   function process (This : in out WorkFlowInterface) return Integer is abstract;

end org.allbinary.logic.control.workflow.WorkFlowInterface_Package;


