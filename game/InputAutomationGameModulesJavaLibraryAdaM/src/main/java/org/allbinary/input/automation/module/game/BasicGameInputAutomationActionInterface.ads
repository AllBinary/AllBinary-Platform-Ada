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

limited with org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package;
package org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References is
   type BasicGameInputAutomationActionInterface_Access is access all org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package.BasicGameInputAutomationActionInterface'Class;
   type BasicGameInputAutomationActionInterface_Access_Array is array (Natural range <>) of BasicGameInputAutomationActionInterface_Access;
   type BasicGameInputAutomationActionInterface_Access_Array_Access is access all BasicGameInputAutomationActionInterface_Access_Array;
   type BasicGameInputAutomationActionInterface_Access_Array_Access_Array is array (Natural range <>) of BasicGameInputAutomationActionInterface_Access_Array_Access;
   type BasicGameInputAutomationActionInterface_Access_Array_Access_Array_Access is access all BasicGameInputAutomationActionInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References;

with org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
limited with org.allbinary.input.automation.module.game.Rectangle_Package;
with org.allbinary.input.automation.module.game.Rectangle_Package_References;

package org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package is

   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.input.automation.module.game.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.input.automation.module.game.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.module.game.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.module.game.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasicGameInputAutomationActionInterface is interface and InputAutomationActionInterface;
   subtype BasicGameInputAutomationActionInterface_Access is org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References.BasicGameInputAutomationActionInterface_Access;
   function "=" (Left, Right : BasicGameInputAutomationActionInterface_Access) return Boolean renames org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References."=";
   subtype BasicGameInputAutomationActionInterface_Access_Array is org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References.BasicGameInputAutomationActionInterface_Access_Array;
   function "=" (Left, Right : BasicGameInputAutomationActionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References."=";
   subtype BasicGameInputAutomationActionInterface_Access_Array_Access is org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References.BasicGameInputAutomationActionInterface_Access_Array_Access;
   function "=" (Left, Right : BasicGameInputAutomationActionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References."=";
   subtype BasicGameInputAutomationActionInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References.BasicGameInputAutomationActionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGameInputAutomationActionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References."=";
   subtype BasicGameInputAutomationActionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References.BasicGameInputAutomationActionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGameInputAutomationActionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package_References."=";
   function Java_Object_Access_From_BasicGameInputAutomationActionInterface (Value : BasicGameInputAutomationActionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure attack (This : in out BasicGameInputAutomationActionInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;
   procedure target (This : in out BasicGameInputAutomationActionInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;

end org.allbinary.input.automation.module.game.BasicGameInputAutomationActionInterface_Package;


