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
limited with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;
package org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References is
   type BasicDirectionAIHelper_Access is access all org.allbinary.game.ai.path.BasicDirectionAIHelper_Package.BasicDirectionAIHelper'Class;
   type BasicDirectionAIHelper_Access_Array is array (Natural range <>) of BasicDirectionAIHelper_Access;
   type BasicDirectionAIHelper_Access_Array_Access is access all BasicDirectionAIHelper_Access_Array;
   type BasicDirectionAIHelper_Access_Array_Access_Array is array (Natural range <>) of BasicDirectionAIHelper_Access_Array_Access;
   type BasicDirectionAIHelper_Access_Array_Access_Array_Access is access all BasicDirectionAIHelper_Access_Array_Access_Array;
   type BasicDirectionAIHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicDirectionAIHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicDirectionAIHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicDirectionAIHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicDirectionAIHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicDirectionAIHelper_Access_Array_Access is (if Value /= null and then Value.all in BasicDirectionAIHelper_Access_Array_Object'Class then BasicDirectionAIHelper_Access_Array_Object'Class (Value.all).Value else null);
   type BasicDirectionAIHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicDirectionAIHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicDirectionAIHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicDirectionAIHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicDirectionAIHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicDirectionAIHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicDirectionAIHelper_Access_Array_Access_Array_Object'Class then BasicDirectionAIHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References;

with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;

package org.allbinary.game.ai.path.BasicDirectionAIHelper_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package Reference_Types is
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   use type AngleInfo_Access;
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   use type AngleInfo_Access_Array;
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   use type AngleInfo_Access_Array_Access;
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   use type AngleInfo_Access_Array_Access_Array;
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   use type AngleInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicDirectionAIHelper_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access;
   function "=" (Left, Right : BasicDirectionAIHelper_Access) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   subtype BasicDirectionAIHelper_Access_Array is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   subtype BasicDirectionAIHelper_Access_Array_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array_Access) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   function Java_Box (Value : BasicDirectionAIHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.Java_Box;
   function Java_Unbox_BasicDirectionAIHelper_Access_Array (Value : access Java_Object'Class) return BasicDirectionAIHelper_Access_Array_Access renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.Java_Unbox_BasicDirectionAIHelper_Access_Array;
   subtype BasicDirectionAIHelper_Access_Array_Access_Array is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   subtype BasicDirectionAIHelper_Access_Array_Access_Array_Access is org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.BasicDirectionAIHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDirectionAIHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References."=";
   function Java_Box (Value : BasicDirectionAIHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.Java_Box;
   function Java_Unbox_BasicDirectionAIHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicDirectionAIHelper_Access_Array_Access_Array_Access renames org.allbinary.game.ai.path.BasicDirectionAIHelper_Package_References.Java_Unbox_BasicDirectionAIHelper_Access_Array_Access_Array;

   type BasicDirectionAIHelper is new Java_Object with record
      name : Unbounded_String;
      angleInfo : AngleInfo_Access;
   end record;

   procedure Initialize (This : in out BasicDirectionAIHelper'Class; name : Unbounded_String; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class);
   function Create (name : Unbounded_String; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class) return BasicDirectionAIHelper_Access;
   function turnAI (This : in out BasicDirectionAIHelper; frame : Integer) return Integer;
   procedure turnAI (This : in out BasicDirectionAIHelper; frame : Integer);
   function getAIKeyPressed (This : in out BasicDirectionAIHelper; frame : Integer) return Integer;
   procedure getAIKeyPressed (This : in out BasicDirectionAIHelper; frame : Integer);
   function getAIKeyPressedFromDirection (This : in out BasicDirectionAIHelper; geographicMapDirectionData_Param : access Direction_Package.Direction'Class) return Integer;
   procedure getAIKeyPressedFromDirection (This : in out BasicDirectionAIHelper; geographicMapDirectionData_Param : access Direction_Package.Direction'Class);
   function getAngleInfoP (This : in out BasicDirectionAIHelper) return AngleInfo_Access;
   function getName (This : in out BasicDirectionAIHelper) return Unbounded_String;

end org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;


