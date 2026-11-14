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
limited with org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package;
package org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References is
   type ArtificialIntelligenceCompositeInterface_Access is access all org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package.ArtificialIntelligenceCompositeInterface'Class;
   type ArtificialIntelligenceCompositeInterface_Access_Array is array (Natural range <>) of ArtificialIntelligenceCompositeInterface_Access;
   type ArtificialIntelligenceCompositeInterface_Access_Array_Access is access all ArtificialIntelligenceCompositeInterface_Access_Array;
   type ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceCompositeInterface_Access_Array_Access;
   type ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access is access all ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array;
   type ArtificialIntelligenceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceCompositeInterface_Access_Array_Object'Class then ArtificialIntelligenceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Object'Class then ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References;

with org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;

package org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package is

   package Reference_Types is
   subtype ArtificialIntelligenceInterface_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access;
   use type ArtificialIntelligenceInterface_Access;
   subtype ArtificialIntelligenceInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ArtificialIntelligenceCompositeInterface is interface;
   subtype ArtificialIntelligenceCompositeInterface_Access is org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.ArtificialIntelligenceCompositeInterface_Access;
   function "=" (Left, Right : ArtificialIntelligenceCompositeInterface_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References."=";
   subtype ArtificialIntelligenceCompositeInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.ArtificialIntelligenceCompositeInterface_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceCompositeInterface_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References."=";
   subtype ArtificialIntelligenceCompositeInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.ArtificialIntelligenceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceCompositeInterface_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceCompositeInterface_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.Java_Unbox_ArtificialIntelligenceCompositeInterface_Access_Array;
   subtype ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References."=";
   subtype ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package_References.Java_Unbox_ArtificialIntelligenceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ArtificialIntelligenceCompositeInterface (Value : ArtificialIntelligenceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getArtificialIntelligenceInterface (This : in out ArtificialIntelligenceCompositeInterface) return ArtificialIntelligenceInterface_Access is abstract;

end org.allbinary.ai.ArtificialIntelligenceCompositeInterface_Package;


