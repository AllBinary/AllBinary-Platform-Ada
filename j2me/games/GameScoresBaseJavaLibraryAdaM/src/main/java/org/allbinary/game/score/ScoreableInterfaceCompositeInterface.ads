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
limited with org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package;
package org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References is
   type ScoreableInterfaceCompositeInterface_Access is access all org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package.ScoreableInterfaceCompositeInterface'Class;
   type ScoreableInterfaceCompositeInterface_Access_Array is array (Natural range <>) of ScoreableInterfaceCompositeInterface_Access;
   type ScoreableInterfaceCompositeInterface_Access_Array_Access is access all ScoreableInterfaceCompositeInterface_Access_Array;
   type ScoreableInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of ScoreableInterfaceCompositeInterface_Access_Array_Access;
   type ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all ScoreableInterfaceCompositeInterface_Access_Array_Access_Array;
   type ScoreableInterfaceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScoreableInterfaceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ScoreableInterfaceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScoreableInterfaceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScoreableInterfaceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScoreableInterfaceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in ScoreableInterfaceCompositeInterface_Access_Array_Object'Class then ScoreableInterfaceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScoreableInterfaceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class then ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References;

with org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.Scoreable_Package;
with org.allbinary.game.score.Scoreable_Package_References;

package org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package is

   package Reference_Types is
   subtype Scoreable_Access is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access;
   use type Scoreable_Access;
   subtype Scoreable_Access_Array is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array;
   use type Scoreable_Access_Array;
   subtype Scoreable_Access_Array_Access is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array_Access;
   use type Scoreable_Access_Array_Access;
   subtype Scoreable_Access_Array_Access_Array is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array_Access_Array;
   use type Scoreable_Access_Array_Access_Array;
   subtype Scoreable_Access_Array_Access_Array_Access is org.allbinary.game.score.Scoreable_Package_References.Scoreable_Access_Array_Access_Array_Access;
   use type Scoreable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ScoreableInterfaceCompositeInterface is interface;
   subtype ScoreableInterfaceCompositeInterface_Access is org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.ScoreableInterfaceCompositeInterface_Access;
   function "=" (Left, Right : ScoreableInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References."=";
   subtype ScoreableInterfaceCompositeInterface_Access_Array is org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.ScoreableInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : ScoreableInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References."=";
   subtype ScoreableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.ScoreableInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : ScoreableInterfaceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_ScoreableInterfaceCompositeInterface_Access_Array (Value : access Java_Object'Class) return ScoreableInterfaceCompositeInterface_Access_Array_Access renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.Java_Unbox_ScoreableInterfaceCompositeInterface_Access_Array;
   subtype ScoreableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.ScoreableInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreableInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References."=";
   subtype ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_ScoreableInterfaceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ScoreableInterfaceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package_References.Java_Unbox_ScoreableInterfaceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ScoreableInterfaceCompositeInterface (Value : ScoreableInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getScoreableInterface (This : in out ScoreableInterfaceCompositeInterface) return Scoreable_Access is abstract;

end org.allbinary.game.score.ScoreableInterfaceCompositeInterface_Package;


