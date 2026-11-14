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
limited with org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package;
package org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References is
   type ResourceRelativeRelationshipFactoryInterface_Access is access all org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package.ResourceRelativeRelationshipFactoryInterface'Class;
   type ResourceRelativeRelationshipFactoryInterface_Access_Array is array (Natural range <>) of ResourceRelativeRelationshipFactoryInterface_Access;
   type ResourceRelativeRelationshipFactoryInterface_Access_Array_Access is access all ResourceRelativeRelationshipFactoryInterface_Access_Array;
   type ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ResourceRelativeRelationshipFactoryInterface_Access_Array_Access;
   type ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access is access all ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array;
   type ResourceRelativeRelationshipFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceRelativeRelationshipFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceRelativeRelationshipFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceRelativeRelationshipFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in ResourceRelativeRelationshipFactoryInterface_Access_Array_Object'Class then ResourceRelativeRelationshipFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Object'Class then ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References;

with org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package; use org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
limited with org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package is

   package GameFeatureControlledInterface_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   use type RelativeRelationship_Access;
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   use type RelativeRelationship_Access_Array;
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access;
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   use type RelativeRelationship_Access_Array_Access_Array;
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ResourceRelativeRelationshipFactoryInterface is interface and GameFeatureControlledInterface;
   subtype ResourceRelativeRelationshipFactoryInterface_Access is org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.ResourceRelativeRelationshipFactoryInterface_Access;
   function "=" (Left, Right : ResourceRelativeRelationshipFactoryInterface_Access) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References."=";
   subtype ResourceRelativeRelationshipFactoryInterface_Access_Array is org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.ResourceRelativeRelationshipFactoryInterface_Access_Array;
   function "=" (Left, Right : ResourceRelativeRelationshipFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References."=";
   subtype ResourceRelativeRelationshipFactoryInterface_Access_Array_Access is org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.ResourceRelativeRelationshipFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References."=";
   function Java_Box (Value : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ResourceRelativeRelationshipFactoryInterface_Access_Array (Value : access Java_Object'Class) return ResourceRelativeRelationshipFactoryInterface_Access_Array_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.Java_Unbox_ResourceRelativeRelationshipFactoryInterface_Access_Array;
   subtype ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array is org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References."=";
   subtype ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References."=";
   function Java_Box (Value : ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package_References.Java_Unbox_ResourceRelativeRelationshipFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ResourceRelativeRelationshipFactoryInterface (Value : ResourceRelativeRelationshipFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactoryInterface; resource : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactoryInterface; resource : Unbounded_String) is abstract;
   procedure addResourceRelativeRelationship (This : in out ResourceRelativeRelationshipFactoryInterface; resource : Unbounded_String; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is abstract;

end org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package;


