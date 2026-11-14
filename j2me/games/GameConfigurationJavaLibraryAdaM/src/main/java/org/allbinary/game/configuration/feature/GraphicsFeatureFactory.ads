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
limited with org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;
package org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References is
   type GraphicsFeatureFactory_Access is access all org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package.GraphicsFeatureFactory'Class;
   type GraphicsFeatureFactory_Access_Array is array (Natural range <>) of GraphicsFeatureFactory_Access;
   type GraphicsFeatureFactory_Access_Array_Access is access all GraphicsFeatureFactory_Access_Array;
   type GraphicsFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of GraphicsFeatureFactory_Access_Array_Access;
   type GraphicsFeatureFactory_Access_Array_Access_Array_Access is access all GraphicsFeatureFactory_Access_Array_Access_Array;
   type GraphicsFeatureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicsFeatureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicsFeatureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicsFeatureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicsFeatureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicsFeatureFactory_Access_Array_Access is (if Value /= null and then Value.all in GraphicsFeatureFactory_Access_Array_Object'Class then GraphicsFeatureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GraphicsFeatureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicsFeatureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicsFeatureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicsFeatureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicsFeatureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicsFeatureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GraphicsFeatureFactory_Access_Array_Access_Array_Object'Class then GraphicsFeatureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References;

with org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.GraphicsFeature_Package;
with org.allbinary.game.configuration.feature.GraphicsFeature_Package_References;

package org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package is

   package Reference_Types is
   subtype GraphicsFeature_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access;
   use type GraphicsFeature_Access;
   subtype GraphicsFeature_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array;
   use type GraphicsFeature_Access_Array;
   subtype GraphicsFeature_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access;
   use type GraphicsFeature_Access_Array_Access;
   subtype GraphicsFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access_Array;
   use type GraphicsFeature_Access_Array_Access_Array;
   subtype GraphicsFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access_Array_Access;
   use type GraphicsFeature_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GraphicsFeatureFactory_Access is org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.GraphicsFeatureFactory_Access;
   function "=" (Left, Right : GraphicsFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References."=";
   subtype GraphicsFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.GraphicsFeatureFactory_Access_Array;
   function "=" (Left, Right : GraphicsFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References."=";
   subtype GraphicsFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.GraphicsFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : GraphicsFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References."=";
   function Java_Box (Value : GraphicsFeatureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_GraphicsFeatureFactory_Access_Array (Value : access Java_Object'Class) return GraphicsFeatureFactory_Access_Array_Access renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.Java_Unbox_GraphicsFeatureFactory_Access_Array;
   subtype GraphicsFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.GraphicsFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicsFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References."=";
   subtype GraphicsFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.GraphicsFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicsFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References."=";
   function Java_Box (Value : GraphicsFeatureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_GraphicsFeatureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GraphicsFeatureFactory_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package_References.Java_Unbox_GraphicsFeatureFactory_Access_Array_Access_Array;

   type GraphicsFeatureFactory is new Java_Object with record
      NONE : GraphicsFeature_Access;
      TRANSPARENT_IMAGE_CREATION : GraphicsFeature_Access;
      IMAGE_GRAPHICS : GraphicsFeature_Access;
      IMAGE_ROTATION_ON_THE_FLY : GraphicsFeature_Access;
      IMAGE_TO_ARRAY_GRAPHICS : GraphicsFeature_Access;
      SPRITE_QUARTER_ROTATION_GRAPHICS : GraphicsFeature_Access;
      SPRITE_FULL_GRAPHICS : GraphicsFeature_Access;
      VECTOR_GRAPHICS : GraphicsFeature_Access;
      VECTOR_TO_IMAGE_GRAPHICS : GraphicsFeature_Access;
   end record;
   instance : GraphicsFeatureFactory_Access;

   procedure Initialize (This : in out GraphicsFeatureFactory'Class);
   function Create return GraphicsFeatureFactory_Access;
   function getInstance return GraphicsFeatureFactory_Access;

end org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;


