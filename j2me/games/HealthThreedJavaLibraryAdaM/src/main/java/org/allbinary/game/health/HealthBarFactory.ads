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

limited with org.allbinary.game.health.HealthBarFactory_Package;
package org.allbinary.game.health.HealthBarFactory_Package_References is
   type HealthBarFactory_Access is access all org.allbinary.game.health.HealthBarFactory_Package.HealthBarFactory'Class;
   type HealthBarFactory_Access_Array is array (Natural range <>) of HealthBarFactory_Access;
   type HealthBarFactory_Access_Array_Access is access all HealthBarFactory_Access_Array;
   type HealthBarFactory_Access_Array_Access_Array is array (Natural range <>) of HealthBarFactory_Access_Array_Access;
   type HealthBarFactory_Access_Array_Access_Array_Access is access all HealthBarFactory_Access_Array_Access_Array;
end org.allbinary.game.health.HealthBarFactory_Package_References;

with org.allbinary.game.health.HealthBarFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.health.HealthBar_Package;
with org.allbinary.game.health.HealthBar_Package_References;
limited with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;

package org.allbinary.game.health.HealthBarFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype HealthBar_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access;
   use type HealthBar_Access;
   subtype HealthBar_Access_Array is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array;
   use type HealthBar_Access_Array;
   subtype HealthBar_Access_Array_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access;
   use type HealthBar_Access_Array_Access;
   subtype HealthBar_Access_Array_Access_Array is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access_Array;
   use type HealthBar_Access_Array_Access_Array;
   subtype HealthBar_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access_Array_Access;
   use type HealthBar_Access_Array_Access_Array_Access;
   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   use type Health_Access;
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   use type Health_Access_Array;
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   use type Health_Access_Array_Access;
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   use type Health_Access_Array_Access_Array;
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   use type Health_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealthBarFactory_Access is org.allbinary.game.health.HealthBarFactory_Package_References.HealthBarFactory_Access;
   function "=" (Left, Right : HealthBarFactory_Access) return Boolean renames org.allbinary.game.health.HealthBarFactory_Package_References."=";
   subtype HealthBarFactory_Access_Array is org.allbinary.game.health.HealthBarFactory_Package_References.HealthBarFactory_Access_Array;
   function "=" (Left, Right : HealthBarFactory_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarFactory_Package_References."=";
   subtype HealthBarFactory_Access_Array_Access is org.allbinary.game.health.HealthBarFactory_Package_References.HealthBarFactory_Access_Array_Access;
   function "=" (Left, Right : HealthBarFactory_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarFactory_Package_References."=";
   subtype HealthBarFactory_Access_Array_Access_Array is org.allbinary.game.health.HealthBarFactory_Package_References.HealthBarFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBarFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarFactory_Package_References."=";
   subtype HealthBarFactory_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarFactory_Package_References.HealthBarFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBarFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarFactory_Package_References."=";

   type HealthBarFactory is new Java_Object with null record;

   procedure Initialize (This : in out HealthBarFactory'Class);
   function Create return HealthBarFactory_Access;
   function getInstance (This : in out HealthBarFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer) return HealthBar_Access;
   procedure getInstance (This : in out HealthBarFactory; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer);

end org.allbinary.game.health.HealthBarFactory_Package;


