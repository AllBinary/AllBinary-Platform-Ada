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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References is
   type MouseActionScriptInputInterface_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package.MouseActionScriptInputInterface'Class;
   type MouseActionScriptInputInterface_Access_Array is array (Natural range <>) of MouseActionScriptInputInterface_Access;
   type MouseActionScriptInputInterface_Access_Array_Access is access all MouseActionScriptInputInterface_Access_Array;
   type MouseActionScriptInputInterface_Access_Array_Access_Array is array (Natural range <>) of MouseActionScriptInputInterface_Access_Array_Access;
   type MouseActionScriptInputInterface_Access_Array_Access_Array_Access is access all MouseActionScriptInputInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package is

   package Reference_Types is
   subtype Point_Access is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MouseActionScriptInputInterface is interface and ProfileActionScriptInputInterface;
   subtype MouseActionScriptInputInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access;
   function "=" (Left, Right : MouseActionScriptInputInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References."=";
   subtype MouseActionScriptInputInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array;
   function "=" (Left, Right : MouseActionScriptInputInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References."=";
   subtype MouseActionScriptInputInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInputInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References."=";
   subtype MouseActionScriptInputInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MouseActionScriptInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References."=";
   subtype MouseActionScriptInputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References."=";
   function Java_Object_Access_From_MouseActionScriptInputInterface (Value : MouseActionScriptInputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setPoint (This : in out MouseActionScriptInputInterface; point_Param : access Point_Package.Point'Class) is abstract;
   function getPoint (This : in out MouseActionScriptInputInterface) return Point_Access is abstract;
   function getButtonClicks (This : in out MouseActionScriptInputInterface) return Integer is abstract;
   procedure setButtonClicks (This : in out MouseActionScriptInputInterface; buttons : Integer) is abstract;
   procedure log (This : in out MouseActionScriptInputInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;


