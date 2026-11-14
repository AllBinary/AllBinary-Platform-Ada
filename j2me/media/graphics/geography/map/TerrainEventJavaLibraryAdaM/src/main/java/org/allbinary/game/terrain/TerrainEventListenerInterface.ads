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

with AllBinary_Java;
limited with org.allbinary.game.terrain.TerrainEventListenerInterface_Package;
package org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References is
   type TerrainEventListenerInterface_Access is access all org.allbinary.game.terrain.TerrainEventListenerInterface_Package.TerrainEventListenerInterface'Class;
   type TerrainEventListenerInterface_Access_Array is array (Natural range <>) of TerrainEventListenerInterface_Access;
   type TerrainEventListenerInterface_Access_Array_Access is access all TerrainEventListenerInterface_Access_Array;
   type TerrainEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of TerrainEventListenerInterface_Access_Array_Access;
   type TerrainEventListenerInterface_Access_Array_Access_Array_Access is access all TerrainEventListenerInterface_Access_Array_Access_Array;
   type TerrainEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TerrainEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TerrainEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TerrainEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TerrainEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TerrainEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in TerrainEventListenerInterface_Access_Array_Object'Class then TerrainEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TerrainEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TerrainEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TerrainEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TerrainEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TerrainEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TerrainEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TerrainEventListenerInterface_Access_Array_Access_Array_Object'Class then TerrainEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References;

with org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEvent_Package_References;

package org.allbinary.game.terrain.TerrainEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype TerrainEvent_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access;
   use type TerrainEvent_Access;
   subtype TerrainEvent_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array;
   use type TerrainEvent_Access_Array;
   subtype TerrainEvent_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access;
   use type TerrainEvent_Access_Array_Access;
   subtype TerrainEvent_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array;
   use type TerrainEvent_Access_Array_Access_Array;
   subtype TerrainEvent_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array_Access;
   use type TerrainEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TerrainEventListenerInterface is interface and EventListenerInterface;
   subtype TerrainEventListenerInterface_Access is org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.TerrainEventListenerInterface_Access;
   function "=" (Left, Right : TerrainEventListenerInterface_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References."=";
   subtype TerrainEventListenerInterface_Access_Array is org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.TerrainEventListenerInterface_Access_Array;
   function "=" (Left, Right : TerrainEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References."=";
   subtype TerrainEventListenerInterface_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.TerrainEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References."=";
   function Java_Box (Value : TerrainEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_TerrainEventListenerInterface_Access_Array (Value : access Java_Object'Class) return TerrainEventListenerInterface_Access_Array_Access renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.Java_Unbox_TerrainEventListenerInterface_Access_Array;
   subtype TerrainEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.TerrainEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References."=";
   subtype TerrainEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.TerrainEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References."=";
   function Java_Box (Value : TerrainEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_TerrainEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TerrainEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.terrain.TerrainEventListenerInterface_Package_References.Java_Unbox_TerrainEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TerrainEventListenerInterface (Value : TerrainEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onTerrainEvent (This : in out TerrainEventListenerInterface; trackingEvent_Param : access TerrainEvent_Package.TerrainEvent'Class) is abstract;

end org.allbinary.game.terrain.TerrainEventListenerInterface_Package;


