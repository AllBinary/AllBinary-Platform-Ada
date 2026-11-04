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

limited with org.allbinary.game.terrain.TerrainEventFactory_Package;
package org.allbinary.game.terrain.TerrainEventFactory_Package_References is
   type TerrainEventFactory_Access is access all org.allbinary.game.terrain.TerrainEventFactory_Package.TerrainEventFactory'Class;
   type TerrainEventFactory_Access_Array is array (Natural range <>) of TerrainEventFactory_Access;
   type TerrainEventFactory_Access_Array_Access is access all TerrainEventFactory_Access_Array;
   type TerrainEventFactory_Access_Array_Access_Array is array (Natural range <>) of TerrainEventFactory_Access_Array_Access;
   type TerrainEventFactory_Access_Array_Access_Array_Access is access all TerrainEventFactory_Access_Array_Access_Array;
end org.allbinary.game.terrain.TerrainEventFactory_Package_References;

with org.allbinary.game.terrain.TerrainEventFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.game.terrain.TerrainEventFactory_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package AllBinaryEventObjectFactoryInterface_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TerrainEventFactory_Access is org.allbinary.game.terrain.TerrainEventFactory_Package_References.TerrainEventFactory_Access;
   function "=" (Left, Right : TerrainEventFactory_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventFactory_Package_References."=";
   subtype TerrainEventFactory_Access_Array is org.allbinary.game.terrain.TerrainEventFactory_Package_References.TerrainEventFactory_Access_Array;
   function "=" (Left, Right : TerrainEventFactory_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventFactory_Package_References."=";
   subtype TerrainEventFactory_Access_Array_Access is org.allbinary.game.terrain.TerrainEventFactory_Package_References.TerrainEventFactory_Access_Array_Access;
   function "=" (Left, Right : TerrainEventFactory_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventFactory_Package_References."=";
   subtype TerrainEventFactory_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventFactory_Package_References.TerrainEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventFactory_Package_References."=";
   subtype TerrainEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventFactory_Package_References.TerrainEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventFactory_Package_References."=";

   type TerrainEventFactory is new Java_Object and AllBinaryEventObjectFactoryInterface with null record;

   procedure Initialize (This : in out TerrainEventFactory'Class);
   function Create return TerrainEventFactory_Access;
   function getInstance (This : in out TerrainEventFactory) return AllBinaryEventObject_Access;

end org.allbinary.game.terrain.TerrainEventFactory_Package;


