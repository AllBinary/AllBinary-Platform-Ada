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
limited with org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;
package org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References is
   type BasicProbabilityAIDataFactory_Access is access all org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package.BasicProbabilityAIDataFactory'Class;
   type BasicProbabilityAIDataFactory_Access_Array is array (Natural range <>) of BasicProbabilityAIDataFactory_Access;
   type BasicProbabilityAIDataFactory_Access_Array_Access is access all BasicProbabilityAIDataFactory_Access_Array;
   type BasicProbabilityAIDataFactory_Access_Array_Access_Array is array (Natural range <>) of BasicProbabilityAIDataFactory_Access_Array_Access;
   type BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access is access all BasicProbabilityAIDataFactory_Access_Array_Access_Array;
   type BasicProbabilityAIDataFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicProbabilityAIDataFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicProbabilityAIDataFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicProbabilityAIDataFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicProbabilityAIDataFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicProbabilityAIDataFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicProbabilityAIDataFactory_Access_Array_Object'Class then BasicProbabilityAIDataFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicProbabilityAIDataFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicProbabilityAIDataFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicProbabilityAIDataFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicProbabilityAIDataFactory_Access_Array_Access_Array_Object'Class then BasicProbabilityAIDataFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References;

with org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References;
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

package org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicProbabilityAIDataFactory_Access is org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.BasicProbabilityAIDataFactory_Access;
   function "=" (Left, Right : BasicProbabilityAIDataFactory_Access) return Boolean renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References."=";
   subtype BasicProbabilityAIDataFactory_Access_Array is org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.BasicProbabilityAIDataFactory_Access_Array;
   function "=" (Left, Right : BasicProbabilityAIDataFactory_Access_Array) return Boolean renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References."=";
   subtype BasicProbabilityAIDataFactory_Access_Array_Access is org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.BasicProbabilityAIDataFactory_Access_Array_Access;
   function "=" (Left, Right : BasicProbabilityAIDataFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References."=";
   function Java_Box (Value : BasicProbabilityAIDataFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.Java_Box;
   function Java_Unbox_BasicProbabilityAIDataFactory_Access_Array (Value : access Java_Object'Class) return BasicProbabilityAIDataFactory_Access_Array_Access renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.Java_Unbox_BasicProbabilityAIDataFactory_Access_Array;
   subtype BasicProbabilityAIDataFactory_Access_Array_Access_Array is org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.BasicProbabilityAIDataFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicProbabilityAIDataFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References."=";
   subtype BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References."=";
   function Java_Box (Value : BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.Java_Box;
   function Java_Unbox_BasicProbabilityAIDataFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicProbabilityAIDataFactory_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package_References.Java_Unbox_BasicProbabilityAIDataFactory_Access_Array_Access_Array;

   type BasicProbabilityAIDataFactory is new Java_Object with null record;

   procedure Initialize (This : in out BasicProbabilityAIDataFactory'Class);
   function Create return BasicProbabilityAIDataFactory_Access;
   function getInstance (This : in out BasicProbabilityAIDataFactory) return ABHashtable_Access;

end org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory_Package;


