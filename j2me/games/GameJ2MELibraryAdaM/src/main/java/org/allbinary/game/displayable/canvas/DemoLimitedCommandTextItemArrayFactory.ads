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

limited with org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package;
package org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References is
   type DemoLimitedCommandTextItemArrayFactory_Access is access all org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package.DemoLimitedCommandTextItemArrayFactory'Class;
   type DemoLimitedCommandTextItemArrayFactory_Access_Array is array (Natural range <>) of DemoLimitedCommandTextItemArrayFactory_Access;
   type DemoLimitedCommandTextItemArrayFactory_Access_Array_Access is access all DemoLimitedCommandTextItemArrayFactory_Access_Array;
   type DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array is array (Natural range <>) of DemoLimitedCommandTextItemArrayFactory_Access_Array_Access;
   type DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access is access all DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References;

with org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References;

package org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package is

   package CommandTextItemArrayFactory_Package renames Standard.org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
   package Reference_Types is
   subtype CommandTextItemArrayFactory_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access;
   use type CommandTextItemArrayFactory_Access;
   subtype CommandTextItemArrayFactory_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array;
   use type CommandTextItemArrayFactory_Access_Array;
   subtype CommandTextItemArrayFactory_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access;
   use type CommandTextItemArrayFactory_Access_Array_Access;
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array;
   use type CommandTextItemArrayFactory_Access_Array_Access_Array;
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   use type CommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoLimitedCommandTextItemArrayFactory_Access is org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References.DemoLimitedCommandTextItemArrayFactory_Access;
   function "=" (Left, Right : DemoLimitedCommandTextItemArrayFactory_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References."=";
   subtype DemoLimitedCommandTextItemArrayFactory_Access_Array is org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References.DemoLimitedCommandTextItemArrayFactory_Access_Array;
   function "=" (Left, Right : DemoLimitedCommandTextItemArrayFactory_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References."=";
   subtype DemoLimitedCommandTextItemArrayFactory_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References.DemoLimitedCommandTextItemArrayFactory_Access_Array_Access;
   function "=" (Left, Right : DemoLimitedCommandTextItemArrayFactory_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References."=";
   subtype DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References.DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References."=";
   subtype DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References.DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoLimitedCommandTextItemArrayFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package_References."=";

   type DemoLimitedCommandTextItemArrayFactory is new Java_Object with record
      commandTextItemArrayFactory : CommandTextItemArrayFactory_Access;
   end record;
   instance : DemoLimitedCommandTextItemArrayFactory_Access;

   procedure Initialize (This : in out DemoLimitedCommandTextItemArrayFactory'Class);
   function Create return DemoLimitedCommandTextItemArrayFactory_Access;
   function getInstance return DemoLimitedCommandTextItemArrayFactory_Access;
   function getCommandTextItemArrayFactory (This : in out DemoLimitedCommandTextItemArrayFactory) return CommandTextItemArrayFactory_Access;

end org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package;


