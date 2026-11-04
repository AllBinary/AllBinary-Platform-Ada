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

limited with org.allbinary.game.health.HealthBarAnimation_Package;
package org.allbinary.game.health.HealthBarAnimation_Package_References is
   type HealthBarAnimation_Access is access all org.allbinary.game.health.HealthBarAnimation_Package.HealthBarAnimation'Class;
   type HealthBarAnimation_Access_Array is array (Natural range <>) of HealthBarAnimation_Access;
   type HealthBarAnimation_Access_Array_Access is access all HealthBarAnimation_Access_Array;
   type HealthBarAnimation_Access_Array_Access_Array is array (Natural range <>) of HealthBarAnimation_Access_Array_Access;
   type HealthBarAnimation_Access_Array_Access_Array_Access is access all HealthBarAnimation_Access_Array_Access_Array;
end org.allbinary.game.health.HealthBarAnimation_Package_References;

with org.allbinary.game.health.HealthBarAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.game.health.HealthBarAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   use type BasicColorFactory_Access;
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   use type BasicColorFactory_Access_Array;
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   use type BasicColorFactory_Access_Array_Access;
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   use type BasicColorFactory_Access_Array_Access_Array;
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   use type BasicColorFactory_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype HealthBarAnimation_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access;
   function "=" (Left, Right : HealthBarAnimation_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array;
   function "=" (Left, Right : HealthBarAnimation_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";
   subtype HealthBarAnimation_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBarAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarAnimation_Package_References."=";

   type HealthBarAnimation is new Animation with record
      basicColorFactory : BasicColorFactory_Access;
      x2 : Integer;
      thickness : Integer;
      location : Integer;
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out HealthBarAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarAnimation_Access;
   procedure onHealthChange (This : in out HealthBarAnimation; newX2 : Integer);
   function getY (This : in out HealthBarAnimation) return Integer;

end org.allbinary.game.health.HealthBarAnimation_Package;


