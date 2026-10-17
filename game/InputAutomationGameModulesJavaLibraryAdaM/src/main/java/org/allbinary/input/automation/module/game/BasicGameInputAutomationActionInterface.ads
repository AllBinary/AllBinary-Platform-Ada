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
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.game.Rectangle_Package; use org.allbinary.input.automation.module.game.Rectangle_Package;

package org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package is

   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;

   type BasicGameInputAutomationActionInterface is interface and InputAutomationActionInterface;
   type BasicGameInputAutomationActionInterface_Access is access all BasicGameInputAutomationActionInterface'Class;
   type BasicGameInputAutomationActionInterface_Access_Array is array (Natural range <>) of BasicGameInputAutomationActionInterface_Access;
   type BasicGameInputAutomationActionInterface_Access_Array_Access is access all BasicGameInputAutomationActionInterface_Access_Array;
   procedure attack (This : in out BasicGameInputAutomationActionInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;
   procedure target (This : in out BasicGameInputAutomationActionInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;

end org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package;


