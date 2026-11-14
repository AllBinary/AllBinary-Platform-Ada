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
limited with org.allbinary.ai.ArtificialIntelligenceLayerManager_Package;
package org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References is
   type ArtificialIntelligenceLayerManager_Access is access all org.allbinary.ai.ArtificialIntelligenceLayerManager_Package.ArtificialIntelligenceLayerManager'Class;
   type ArtificialIntelligenceLayerManager_Access_Array is array (Natural range <>) of ArtificialIntelligenceLayerManager_Access;
   type ArtificialIntelligenceLayerManager_Access_Array_Access is access all ArtificialIntelligenceLayerManager_Access_Array;
   type ArtificialIntelligenceLayerManager_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceLayerManager_Access_Array_Access;
   type ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access is access all ArtificialIntelligenceLayerManager_Access_Array_Access_Array;
   type ArtificialIntelligenceLayerManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceLayerManager_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceLayerManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceLayerManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceLayerManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceLayerManager_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceLayerManager_Access_Array_Object'Class then ArtificialIntelligenceLayerManager_Access_Array_Object'Class (Value.all).Value else null);
   type ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceLayerManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Object'Class then ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References;

with org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;

package org.allbinary.ai.ArtificialIntelligenceLayerManager_Package is

   package LayerManager_Package renames Standard.org.allbinary.layer.LayerManager_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ArtificialIntelligenceLayerManager_Access is org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.ArtificialIntelligenceLayerManager_Access;
   function "=" (Left, Right : ArtificialIntelligenceLayerManager_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References."=";
   subtype ArtificialIntelligenceLayerManager_Access_Array is org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.ArtificialIntelligenceLayerManager_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceLayerManager_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References."=";
   subtype ArtificialIntelligenceLayerManager_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.ArtificialIntelligenceLayerManager_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceLayerManager_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceLayerManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceLayerManager_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceLayerManager_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.Java_Unbox_ArtificialIntelligenceLayerManager_Access_Array;
   subtype ArtificialIntelligenceLayerManager_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.ArtificialIntelligenceLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References."=";
   subtype ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceLayerManager_Access_Array_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceLayerManager_Access_Array_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceLayerManager_Package_References.Java_Unbox_ArtificialIntelligenceLayerManager_Access_Array_Access_Array;

   type ArtificialIntelligenceLayerManager is new LayerManager with null record;

   procedure Initialize (This : in out ArtificialIntelligenceLayerManager'Class);
   function Create return ArtificialIntelligenceLayerManager_Access;

end org.allbinary.ai.ArtificialIntelligenceLayerManager_Package;


