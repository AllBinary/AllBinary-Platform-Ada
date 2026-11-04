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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References is
   type MouseInputAutomationProcessor_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package.MouseInputAutomationProcessor'Class;
   type MouseInputAutomationProcessor_Access_Array is array (Natural range <>) of MouseInputAutomationProcessor_Access;
   type MouseInputAutomationProcessor_Access_Array_Access is access all MouseInputAutomationProcessor_Access_Array;
   type MouseInputAutomationProcessor_Access_Array_Access_Array is array (Natural range <>) of MouseInputAutomationProcessor_Access_Array_Access;
   type MouseInputAutomationProcessor_Access_Array_Access_Array_Access is access all MouseInputAutomationProcessor_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package is

   package Reference_Types is
   subtype MouseActionScriptInputInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access;
   use type MouseActionScriptInputInterface_Access;
   subtype MouseActionScriptInputInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array;
   use type MouseActionScriptInputInterface_Access_Array;
   subtype MouseActionScriptInputInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access;
   use type MouseActionScriptInputInterface_Access_Array_Access;
   subtype MouseActionScriptInputInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access_Array;
   use type MouseActionScriptInputInterface_Access_Array_Access_Array;
   subtype MouseActionScriptInputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package_References.MouseActionScriptInputInterface_Access_Array_Access_Array_Access;
   use type MouseActionScriptInputInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MouseInputAutomationProcessor_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References.MouseInputAutomationProcessor_Access;
   function "=" (Left, Right : MouseInputAutomationProcessor_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References."=";
   subtype MouseInputAutomationProcessor_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References.MouseInputAutomationProcessor_Access_Array;
   function "=" (Left, Right : MouseInputAutomationProcessor_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References."=";
   subtype MouseInputAutomationProcessor_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References.MouseInputAutomationProcessor_Access_Array_Access;
   function "=" (Left, Right : MouseInputAutomationProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References."=";
   subtype MouseInputAutomationProcessor_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References.MouseInputAutomationProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MouseInputAutomationProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References."=";
   subtype MouseInputAutomationProcessor_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References.MouseInputAutomationProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MouseInputAutomationProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package_References."=";

   type MouseInputAutomationProcessor is new Java_Object with null record;

   procedure Initialize (This : in out MouseInputAutomationProcessor'Class);
   function Create return MouseInputAutomationProcessor_Access;
   procedure process (mouseActionScriptInputInterface_Param : access MouseActionScriptInputInterface_Package.MouseActionScriptInputInterface'Class);

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package;


