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

limited with org.allbinary.graphics.form.InputProcessor_Package;
package org.allbinary.graphics.form.InputProcessor_Package_References is
   type InputProcessor_Access is access all org.allbinary.graphics.form.InputProcessor_Package.InputProcessor'Class;
   type InputProcessor_Access_Array is array (Natural range <>) of InputProcessor_Access;
   type InputProcessor_Access_Array_Access is access all InputProcessor_Access_Array;
   type InputProcessor_Access_Array_Access_Array is array (Natural range <>) of InputProcessor_Access_Array_Access;
   type InputProcessor_Access_Array_Access_Array_Access is access all InputProcessor_Access_Array_Access_Array;
end org.allbinary.graphics.form.InputProcessor_Package_References;

with org.allbinary.graphics.form.InputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References;

package org.allbinary.graphics.form.InputProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package Reference_Types is
   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   use type PlayerGameInputCompositeInterface_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputProcessor_Access is org.allbinary.graphics.form.InputProcessor_Package_References.InputProcessor_Access;
   function "=" (Left, Right : InputProcessor_Access) return Boolean renames org.allbinary.graphics.form.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array is org.allbinary.graphics.form.InputProcessor_Package_References.InputProcessor_Access_Array;
   function "=" (Left, Right : InputProcessor_Access_Array) return Boolean renames org.allbinary.graphics.form.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access is org.allbinary.graphics.form.InputProcessor_Package_References.InputProcessor_Access_Array_Access;
   function "=" (Left, Right : InputProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access_Array is org.allbinary.graphics.form.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : InputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.InputProcessor_Package_References."=";
   subtype InputProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.form.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.InputProcessor_Package_References."=";

   type InputProcessor is new Processor with record
      playerGameInputCompositeInterface : PlayerGameInputCompositeInterface_Access;
   end record;

   procedure Initialize (This : in out InputProcessor'Class; playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class);
   function Create (playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class) return InputProcessor_Access;
   procedure process (This : in out InputProcessor);

end org.allbinary.graphics.form.InputProcessor_Package;


