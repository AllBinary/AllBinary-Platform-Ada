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
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package is


   type MouseInputAutomationProcessor is tagged;
   type MouseInputAutomationProcessor_Access is access all MouseInputAutomationProcessor'Class;
   type MouseInputAutomationProcessor_Access_Array is array (Natural range <>) of MouseInputAutomationProcessor_Access;
   type MouseInputAutomationProcessor_Access_Array_Access is access all MouseInputAutomationProcessor_Access_Array;
   type MouseInputAutomationProcessor_Access_Array_Access_Array is array (Natural range <>) of MouseInputAutomationProcessor_Access_Array_Access;
   type MouseInputAutomationProcessor_Access_Array_Access_Array_Access is access all MouseInputAutomationProcessor_Access_Array_Access_Array;

   type MouseInputAutomationProcessor is new Java_Object with null record;

   procedure Initialize (This : in out MouseInputAutomationProcessor'Class);
   function Create return MouseInputAutomationProcessor_Access;
   procedure process (mouseActionScriptInputInterface_Param : access MouseActionScriptInputInterface_Package.MouseActionScriptInputInterface'Class);

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package;


