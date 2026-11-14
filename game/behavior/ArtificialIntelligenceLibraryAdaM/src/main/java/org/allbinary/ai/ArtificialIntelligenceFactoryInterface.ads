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
limited with org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package;
package org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References is
   type ArtificialIntelligenceFactoryInterface_Access is access all org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package.ArtificialIntelligenceFactoryInterface'Class;
   type ArtificialIntelligenceFactoryInterface_Access_Array is array (Natural range <>) of ArtificialIntelligenceFactoryInterface_Access;
   type ArtificialIntelligenceFactoryInterface_Access_Array_Access is access all ArtificialIntelligenceFactoryInterface_Access_Array;
   type ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceFactoryInterface_Access_Array_Access;
   type ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access is access all ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array;
   type ArtificialIntelligenceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceFactoryInterface_Access_Array_Object'Class then ArtificialIntelligenceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Object'Class then ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References;

with org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.ai.ArtificialIntelligence_Package_References;

package org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package is

   package Reference_Types is
   subtype ArtificialIntelligence_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access;
   use type ArtificialIntelligence_Access;
   subtype ArtificialIntelligence_Access_Array is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array;
   use type ArtificialIntelligence_Access_Array;
   subtype ArtificialIntelligence_Access_Array_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access;
   use type ArtificialIntelligence_Access_Array_Access;
   subtype ArtificialIntelligence_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access_Array;
   use type ArtificialIntelligence_Access_Array_Access_Array;
   subtype ArtificialIntelligence_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligence_Package_References.ArtificialIntelligence_Access_Array_Access_Array_Access;
   use type ArtificialIntelligence_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ArtificialIntelligenceFactoryInterface is interface;
   subtype ArtificialIntelligenceFactoryInterface_Access is org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.ArtificialIntelligenceFactoryInterface_Access;
   function "=" (Left, Right : ArtificialIntelligenceFactoryInterface_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceFactoryInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.ArtificialIntelligenceFactoryInterface_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceFactoryInterface_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceFactoryInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.ArtificialIntelligenceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceFactoryInterface_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceFactoryInterface_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.Java_Unbox_ArtificialIntelligenceFactoryInterface_Access_Array;
   subtype ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package_References.Java_Unbox_ArtificialIntelligenceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ArtificialIntelligenceFactoryInterface (Value : ArtificialIntelligenceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out ArtificialIntelligenceFactoryInterface; anyType_Param : access Java_Object'Class) return ArtificialIntelligence_Access is abstract;
   procedure getInstance (This : in out ArtificialIntelligenceFactoryInterface; anyType_Param : access Java_Object'Class) is abstract;

end org.allbinary.ai.ArtificialIntelligenceFactoryInterface_Package;


