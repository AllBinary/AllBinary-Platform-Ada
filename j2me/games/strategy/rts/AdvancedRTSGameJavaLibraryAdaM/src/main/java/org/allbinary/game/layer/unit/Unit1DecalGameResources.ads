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

with AllBinary_Java;
limited with org.allbinary.game.layer.unit.Unit1DecalGameResources_Package;
package org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References is
   type Unit1DecalGameResources_Access is access all org.allbinary.game.layer.unit.Unit1DecalGameResources_Package.Unit1DecalGameResources'Class;
   type Unit1DecalGameResources_Access_Array is array (Natural range <>) of Unit1DecalGameResources_Access;
   type Unit1DecalGameResources_Access_Array_Access is access all Unit1DecalGameResources_Access_Array;
   type Unit1DecalGameResources_Access_Array_Access_Array is array (Natural range <>) of Unit1DecalGameResources_Access_Array_Access;
   type Unit1DecalGameResources_Access_Array_Access_Array_Access is access all Unit1DecalGameResources_Access_Array_Access_Array;
   type Unit1DecalGameResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Unit1DecalGameResources_Access_Array_Access;
   end record;
   function Java_Box (Value : Unit1DecalGameResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Unit1DecalGameResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Unit1DecalGameResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Unit1DecalGameResources_Access_Array_Access is (if Value /= null and then Value.all in Unit1DecalGameResources_Access_Array_Object'Class then Unit1DecalGameResources_Access_Array_Object'Class (Value.all).Value else null);
   type Unit1DecalGameResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Unit1DecalGameResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Unit1DecalGameResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Unit1DecalGameResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Unit1DecalGameResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Unit1DecalGameResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Unit1DecalGameResources_Access_Array_Access_Array_Object'Class then Unit1DecalGameResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References;

with org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;

package org.allbinary.game.layer.unit.Unit1DecalGameResources_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Unit1DecalGameResources_Access is org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Unit1DecalGameResources_Access;
   function "=" (Left, Right : Unit1DecalGameResources_Access) return Boolean renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References."=";
   subtype Unit1DecalGameResources_Access_Array is org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Unit1DecalGameResources_Access_Array;
   function "=" (Left, Right : Unit1DecalGameResources_Access_Array) return Boolean renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References."=";
   subtype Unit1DecalGameResources_Access_Array_Access is org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Unit1DecalGameResources_Access_Array_Access;
   function "=" (Left, Right : Unit1DecalGameResources_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References."=";
   function Java_Box (Value : Unit1DecalGameResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Java_Box;
   function Java_Unbox_Unit1DecalGameResources_Access_Array (Value : access Java_Object'Class) return Unit1DecalGameResources_Access_Array_Access renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Java_Unbox_Unit1DecalGameResources_Access_Array;
   subtype Unit1DecalGameResources_Access_Array_Access_Array is org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Unit1DecalGameResources_Access_Array_Access_Array;
   function "=" (Left, Right : Unit1DecalGameResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References."=";
   subtype Unit1DecalGameResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Unit1DecalGameResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Unit1DecalGameResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References."=";
   function Java_Box (Value : Unit1DecalGameResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Java_Box;
   function Java_Unbox_Unit1DecalGameResources_Access_Array_Access_Array (Value : access Java_Object'Class) return Unit1DecalGameResources_Access_Array_Access_Array_Access renames org.allbinary.game.layer.unit.Unit1DecalGameResources_Package_References.Java_Unbox_Unit1DecalGameResources_Access_Array_Access_Array;

   type Unit1DecalGameResources is new BasicGameResources with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out Unit1DecalGameResources'Class);
   function Create return Unit1DecalGameResources_Access;
   function getInstance return BasicGameResources_Access;
   procedure append (This : in out Unit1DecalGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out Unit1DecalGameResources) return Unbounded_String;

end org.allbinary.game.layer.unit.Unit1DecalGameResources_Package;


