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

limited with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package;
package org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References is
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access is access all org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package.ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class;
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access is access all ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array;
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access;
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is access all ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References;

with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References;

package org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access;
   use type ArtificialIntelligenceInterfaceFactoryInterface_Access;
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array;
   use type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array;
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access;
   use type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access;
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array;
   use type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package_References."=";

   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   SINGLETON : ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;

   procedure Initialize (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class);
   function Create return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;
   procedure clear (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory);
   function getInstance return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;
   function getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return ArtificialIntelligenceInterfaceFactoryInterface_Access;
   procedure getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   procedure add (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; artificialIntelligenceInterfaceFactoryInterface_Param : access ArtificialIntelligenceInterfaceFactoryInterface_Package.ArtificialIntelligenceInterfaceFactoryInterface'Class);

end org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package;


