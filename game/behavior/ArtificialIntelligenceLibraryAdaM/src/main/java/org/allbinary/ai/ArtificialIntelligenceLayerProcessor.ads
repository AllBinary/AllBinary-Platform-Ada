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
limited with org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package;
package org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References is
   type ArtificialIntelligenceLayerProcessor_Access is access all org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package.ArtificialIntelligenceLayerProcessor'Class;
   type ArtificialIntelligenceLayerProcessor_Access_Array is array (Natural range <>) of ArtificialIntelligenceLayerProcessor_Access;
   type ArtificialIntelligenceLayerProcessor_Access_Array_Access is access all ArtificialIntelligenceLayerProcessor_Access_Array;
   type ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceLayerProcessor_Access_Array_Access;
   type ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access is access all ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array;
   type ArtificialIntelligenceLayerProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceLayerProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceLayerProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceLayerProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceLayerProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceLayerProcessor_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceLayerProcessor_Access_Array_Object'Class then ArtificialIntelligenceLayerProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Object'Class then ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References;

with org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;

package org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LayerProcessor_Package renames Standard.org.allbinary.layer.LayerProcessor_Package;
   package Reference_Types is
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


   subtype ArtificialIntelligenceLayerProcessor_Access is org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.ArtificialIntelligenceLayerProcessor_Access;
   function "=" (Left, Right : ArtificialIntelligenceLayerProcessor_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References."=";
   subtype ArtificialIntelligenceLayerProcessor_Access_Array is org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.ArtificialIntelligenceLayerProcessor_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceLayerProcessor_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References."=";
   subtype ArtificialIntelligenceLayerProcessor_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.ArtificialIntelligenceLayerProcessor_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceLayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceLayerProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceLayerProcessor_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceLayerProcessor_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.Java_Unbox_ArtificialIntelligenceLayerProcessor_Access_Array;
   subtype ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References."=";
   subtype ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References."=";
   function Java_Box (Value : ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.Java_Box;
   function Java_Unbox_ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array_Access renames org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package_References.Java_Unbox_ArtificialIntelligenceLayerProcessor_Access_Array_Access_Array;

   type ArtificialIntelligenceLayerProcessor is new LayerProcessor with null record;

   procedure Initialize (This : in out ArtificialIntelligenceLayerProcessor'Class);
   function Create return ArtificialIntelligenceLayerProcessor_Access;
   procedure processAt (This : in out ArtificialIntelligenceLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   function isProcessorLayer (This : in out ArtificialIntelligenceLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isProcessorLayer (This : in out ArtificialIntelligenceLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.ai.ArtificialIntelligenceLayerProcessor_Package;


