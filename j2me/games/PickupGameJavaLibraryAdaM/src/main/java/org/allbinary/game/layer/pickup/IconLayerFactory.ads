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

limited with org.allbinary.game.layer.pickup.IconLayerFactory_Package;
package org.allbinary.game.layer.pickup.IconLayerFactory_Package_References is
   type IconLayerFactory_Access is access all org.allbinary.game.layer.pickup.IconLayerFactory_Package.IconLayerFactory'Class;
   type IconLayerFactory_Access_Array is array (Natural range <>) of IconLayerFactory_Access;
   type IconLayerFactory_Access_Array_Access is access all IconLayerFactory_Access_Array;
   type IconLayerFactory_Access_Array_Access_Array is array (Natural range <>) of IconLayerFactory_Access_Array_Access;
   type IconLayerFactory_Access_Array_Access_Array_Access is access all IconLayerFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.pickup.IconLayerFactory_Package_References;

with org.allbinary.game.layer.pickup.IconLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.game.layer.pickup.IconLayer_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package_References;

package org.allbinary.game.layer.pickup.IconLayerFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package Reference_Types is
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype IconLayer_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access;
   use type IconLayer_Access;
   subtype IconLayer_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array;
   use type IconLayer_Access_Array;
   subtype IconLayer_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access;
   use type IconLayer_Access_Array_Access;
   subtype IconLayer_Access_Array_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array;
   use type IconLayer_Access_Array_Access_Array;
   subtype IconLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array_Access;
   use type IconLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype IconLayerFactory_Access is org.allbinary.game.layer.pickup.IconLayerFactory_Package_References.IconLayerFactory_Access;
   function "=" (Left, Right : IconLayerFactory_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayerFactory_Package_References."=";
   subtype IconLayerFactory_Access_Array is org.allbinary.game.layer.pickup.IconLayerFactory_Package_References.IconLayerFactory_Access_Array;
   function "=" (Left, Right : IconLayerFactory_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayerFactory_Package_References."=";
   subtype IconLayerFactory_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayerFactory_Package_References.IconLayerFactory_Access_Array_Access;
   function "=" (Left, Right : IconLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayerFactory_Package_References."=";
   subtype IconLayerFactory_Access_Array_Access_Array is org.allbinary.game.layer.pickup.IconLayerFactory_Package_References.IconLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : IconLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.IconLayerFactory_Package_References."=";
   subtype IconLayerFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayerFactory_Package_References.IconLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IconLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.IconLayerFactory_Package_References."=";

   type IconLayerFactory is new Java_Object with null record;

   procedure Initialize (This : in out IconLayerFactory'Class);
   function Create return IconLayerFactory_Access;
   function getInstance (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) return IconLayer_Access;
   procedure getInstance (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer);

end org.allbinary.game.layer.pickup.IconLayerFactory_Package;


