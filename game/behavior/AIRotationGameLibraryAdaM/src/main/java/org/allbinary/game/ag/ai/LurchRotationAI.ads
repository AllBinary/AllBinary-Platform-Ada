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
limited with org.allbinary.game.ag.ai.LurchRotationAI_Package;
package org.allbinary.game.ag.ai.LurchRotationAI_Package_References is
   type LurchRotationAI_Access is access all org.allbinary.game.ag.ai.LurchRotationAI_Package.LurchRotationAI'Class;
   type LurchRotationAI_Access_Array is array (Natural range <>) of LurchRotationAI_Access;
   type LurchRotationAI_Access_Array_Access is access all LurchRotationAI_Access_Array;
   type LurchRotationAI_Access_Array_Access_Array is array (Natural range <>) of LurchRotationAI_Access_Array_Access;
   type LurchRotationAI_Access_Array_Access_Array_Access is access all LurchRotationAI_Access_Array_Access_Array;
   type LurchRotationAI_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LurchRotationAI_Access_Array_Access;
   end record;
   function Java_Box (Value : LurchRotationAI_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LurchRotationAI_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LurchRotationAI_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LurchRotationAI_Access_Array_Access is (if Value /= null and then Value.all in LurchRotationAI_Access_Array_Object'Class then LurchRotationAI_Access_Array_Object'Class (Value.all).Value else null);
   type LurchRotationAI_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LurchRotationAI_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LurchRotationAI_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LurchRotationAI_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LurchRotationAI_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LurchRotationAI_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LurchRotationAI_Access_Array_Access_Array_Object'Class then LurchRotationAI_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.LurchRotationAI_Package_References;

with org.allbinary.game.ag.ai.LurchRotationAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
with org.allbinary.game.ag.ai.tactical.LurchAI_Package; use org.allbinary.game.ag.ai.tactical.LurchAI_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.game.ag.ai.LurchRotationAI_Package is

   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package LurchAI_Package renames Standard.org.allbinary.game.ag.ai.tactical.LurchAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   use type GameInput_Access;
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   use type GameInput_Access_Array;
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   use type GameInput_Access_Array_Access;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   use type GameInput_Access_Array_Access_Array;
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   use type GameInput_Access_Array_Access_Array_Access;
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


   subtype LurchRotationAI_Access is org.allbinary.game.ag.ai.LurchRotationAI_Package_References.LurchRotationAI_Access;
   function "=" (Left, Right : LurchRotationAI_Access) return Boolean renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References."=";
   subtype LurchRotationAI_Access_Array is org.allbinary.game.ag.ai.LurchRotationAI_Package_References.LurchRotationAI_Access_Array;
   function "=" (Left, Right : LurchRotationAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References."=";
   subtype LurchRotationAI_Access_Array_Access is org.allbinary.game.ag.ai.LurchRotationAI_Package_References.LurchRotationAI_Access_Array_Access;
   function "=" (Left, Right : LurchRotationAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References."=";
   function Java_Box (Value : LurchRotationAI_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References.Java_Box;
   function Java_Unbox_LurchRotationAI_Access_Array (Value : access Java_Object'Class) return LurchRotationAI_Access_Array_Access renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References.Java_Unbox_LurchRotationAI_Access_Array;
   subtype LurchRotationAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.LurchRotationAI_Package_References.LurchRotationAI_Access_Array_Access_Array;
   function "=" (Left, Right : LurchRotationAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References."=";
   subtype LurchRotationAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.LurchRotationAI_Package_References.LurchRotationAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LurchRotationAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References."=";
   function Java_Box (Value : LurchRotationAI_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References.Java_Box;
   function Java_Unbox_LurchRotationAI_Access_Array_Access_Array (Value : access Java_Object'Class) return LurchRotationAI_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.LurchRotationAI_Package_References.Java_Unbox_LurchRotationAI_Access_Array_Access_Array;

   type LurchRotationAI is new LurchAI with record
      rotationAnimationInterface : IndexedAnimation_Access;
   end record;

   procedure Initialize (This : in out LurchRotationAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return LurchRotationAI_Access;
   procedure reverse_Id (This : in out LurchRotationAI);
   procedure update (This : in out LurchRotationAI);

end org.allbinary.game.ag.ai.LurchRotationAI_Package;


