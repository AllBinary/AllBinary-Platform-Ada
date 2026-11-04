-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

limited with org.allbinary.game.layer.SensorActionFactory_Package;
package org.allbinary.game.layer.SensorActionFactory_Package_References is
   type SensorActionFactory_Access is access all org.allbinary.game.layer.SensorActionFactory_Package.SensorActionFactory'Class;
   type SensorActionFactory_Access_Array is array (Natural range <>) of SensorActionFactory_Access;
   type SensorActionFactory_Access_Array_Access is access all SensorActionFactory_Access_Array;
   type SensorActionFactory_Access_Array_Access_Array is array (Natural range <>) of SensorActionFactory_Access_Array_Access;
   type SensorActionFactory_Access_Array_Access_Array_Access is access all SensorActionFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.SensorActionFactory_Package_References;

with org.allbinary.game.layer.SensorActionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.game.layer.SensorAction_Package_References;

package org.allbinary.game.layer.SensorActionFactory_Package is

   package Reference_Types is
   subtype SensorAction_Access is org.allbinary.game.layer.SensorAction_Package_References.SensorAction_Access;
   use type SensorAction_Access;
   subtype SensorAction_Access_Array is org.allbinary.game.layer.SensorAction_Package_References.SensorAction_Access_Array;
   use type SensorAction_Access_Array;
   subtype SensorAction_Access_Array_Access is org.allbinary.game.layer.SensorAction_Package_References.SensorAction_Access_Array_Access;
   use type SensorAction_Access_Array_Access;
   subtype SensorAction_Access_Array_Access_Array is org.allbinary.game.layer.SensorAction_Package_References.SensorAction_Access_Array_Access_Array;
   use type SensorAction_Access_Array_Access_Array;
   subtype SensorAction_Access_Array_Access_Array_Access is org.allbinary.game.layer.SensorAction_Package_References.SensorAction_Access_Array_Access_Array_Access;
   use type SensorAction_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SensorActionFactory_Access is org.allbinary.game.layer.SensorActionFactory_Package_References.SensorActionFactory_Access;
   function "=" (Left, Right : SensorActionFactory_Access) return Boolean renames org.allbinary.game.layer.SensorActionFactory_Package_References."=";
   subtype SensorActionFactory_Access_Array is org.allbinary.game.layer.SensorActionFactory_Package_References.SensorActionFactory_Access_Array;
   function "=" (Left, Right : SensorActionFactory_Access_Array) return Boolean renames org.allbinary.game.layer.SensorActionFactory_Package_References."=";
   subtype SensorActionFactory_Access_Array_Access is org.allbinary.game.layer.SensorActionFactory_Package_References.SensorActionFactory_Access_Array_Access;
   function "=" (Left, Right : SensorActionFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SensorActionFactory_Package_References."=";
   subtype SensorActionFactory_Access_Array_Access_Array is org.allbinary.game.layer.SensorActionFactory_Package_References.SensorActionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SensorActionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SensorActionFactory_Package_References."=";
   subtype SensorActionFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.SensorActionFactory_Package_References.SensorActionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SensorActionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SensorActionFactory_Package_References."=";

   type SensorActionFactory is new Java_Object with record
      ATTACK : SensorAction_Access;
      EVADE : SensorAction_Access;
   end record;
   instance : SensorActionFactory_Access;

   procedure Initialize (This : in out SensorActionFactory'Class);
   function Create return SensorActionFactory_Access;
   function getInstance return SensorActionFactory_Access;

end org.allbinary.game.layer.SensorActionFactory_Package;


