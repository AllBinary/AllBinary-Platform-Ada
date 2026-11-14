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
limited with org.allbinary.game.configuration.feature.GraphicsFeature_Package;
package org.allbinary.game.configuration.feature.GraphicsFeature_Package_References is
   type GraphicsFeature_Access is access all org.allbinary.game.configuration.feature.GraphicsFeature_Package.GraphicsFeature'Class;
   type GraphicsFeature_Access_Array is array (Natural range <>) of GraphicsFeature_Access;
   type GraphicsFeature_Access_Array_Access is access all GraphicsFeature_Access_Array;
   type GraphicsFeature_Access_Array_Access_Array is array (Natural range <>) of GraphicsFeature_Access_Array_Access;
   type GraphicsFeature_Access_Array_Access_Array_Access is access all GraphicsFeature_Access_Array_Access_Array;
   type GraphicsFeature_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicsFeature_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicsFeature_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicsFeature_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicsFeature_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicsFeature_Access_Array_Access is (if Value /= null and then Value.all in GraphicsFeature_Access_Array_Object'Class then GraphicsFeature_Access_Array_Object'Class (Value.all).Value else null);
   type GraphicsFeature_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicsFeature_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicsFeature_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicsFeature_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicsFeature_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicsFeature_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GraphicsFeature_Access_Array_Access_Array_Object'Class then GraphicsFeature_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.GraphicsFeature_Package_References;

with org.allbinary.game.configuration.feature.GraphicsFeature_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;

package org.allbinary.game.configuration.feature.GraphicsFeature_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GraphicsFeature_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access;
   function "=" (Left, Right : GraphicsFeature_Access) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References."=";
   subtype GraphicsFeature_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array;
   function "=" (Left, Right : GraphicsFeature_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References."=";
   subtype GraphicsFeature_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access;
   function "=" (Left, Right : GraphicsFeature_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References."=";
   function Java_Box (Value : GraphicsFeature_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.Java_Box;
   function Java_Unbox_GraphicsFeature_Access_Array (Value : access Java_Object'Class) return GraphicsFeature_Access_Array_Access renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.Java_Unbox_GraphicsFeature_Access_Array;
   subtype GraphicsFeature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicsFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References."=";
   subtype GraphicsFeature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.GraphicsFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicsFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References."=";
   function Java_Box (Value : GraphicsFeature_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.Java_Box;
   function Java_Unbox_GraphicsFeature_Access_Array_Access_Array (Value : access Java_Object'Class) return GraphicsFeature_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.GraphicsFeature_Package_References.Java_Unbox_GraphicsFeature_Access_Array_Access_Array;

   type GraphicsFeature is new Feature_Package.Feature with null record;

   procedure Initialize (This : in out GraphicsFeature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return GraphicsFeature_Access;

end org.allbinary.game.configuration.feature.GraphicsFeature_Package;


