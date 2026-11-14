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
limited with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
package org.allbinary.ai.ArtificialIntelligenceInterface_Package_References is
   type ArtificialIntelligenceInterface_Access is access all org.allbinary.ai.ArtificialIntelligenceInterface_Package.ArtificialIntelligenceInterface'Class;
   type ArtificialIntelligenceInterface_Access_Array is array (Natural range <>) of ArtificialIntelligenceInterface_Access;
   type ArtificialIntelligenceInterface_Access_Array_Access is access all ArtificialIntelligenceInterface_Access_Array;
   type ArtificialIntelligenceInterface_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceInterface_Access_Array_Access;
   type ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is access all ArtificialIntelligenceInterface_Access_Array_Access_Array;
   type ArtificialIntelligenceInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceInterface_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceInterface_Access_Array_Object'Class then ArtificialIntelligenceInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ArtificialIntelligenceInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceInterface_Access_Array_Access_Array_Object'Class then ArtificialIntelligenceInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;

with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.IdentifierInterface_Package; use org.allbinary.graphics.IdentifierInterface_Package;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.ai.ArtificialIntelligenceInterface_Package is

   package IdentifierInterface_Package renames Standard.org.allbinary.graphics.IdentifierInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ArtificialIntelligenceInterface is interface and IdentifierInterface;
   subtype ArtificialIntelligenceInterface_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceInterface_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceInterface_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.Java_Unbox_ArtificialIntelligenceInterface_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceInterface_Access_Array_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.Java_Unbox_ArtificialIntelligenceInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ArtificialIntelligenceInterface (Value : ArtificialIntelligenceInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure processAI (This : in out ArtificialIntelligenceInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is abstract;

end org.allbinary.ai.ArtificialIntelligenceInterface_Package;


