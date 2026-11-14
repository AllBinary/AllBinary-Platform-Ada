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
limited with org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package;
package org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References is
   type ResourceRelativeRelationshipFactory_Access is access all org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package.ResourceRelativeRelationshipFactory'Class;
   type ResourceRelativeRelationshipFactory_Access_Array is array (Natural range <>) of ResourceRelativeRelationshipFactory_Access;
   type ResourceRelativeRelationshipFactory_Access_Array_Access is access all ResourceRelativeRelationshipFactory_Access_Array;
   type ResourceRelativeRelationshipFactory_Access_Array_Access_Array is array (Natural range <>) of ResourceRelativeRelationshipFactory_Access_Array_Access;
   type ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access is access all ResourceRelativeRelationshipFactory_Access_Array_Access_Array;
   type ResourceRelativeRelationshipFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceRelativeRelationshipFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceRelativeRelationshipFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceRelativeRelationshipFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceRelativeRelationshipFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceRelativeRelationshipFactory_Access_Array_Access is (if Value /= null and then Value.all in ResourceRelativeRelationshipFactory_Access_Array_Object'Class then ResourceRelativeRelationshipFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceRelativeRelationshipFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object'Class then ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References;

with org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package; use org.allbinary.game.resource.ResourceRelativeRelationshipFactoryInterface_Package;

package org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package is

   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
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
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ResourceRelativeRelationshipFactory_Access is org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.ResourceRelativeRelationshipFactory_Access;
   function "=" (Left, Right : ResourceRelativeRelationshipFactory_Access) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References."=";
   subtype ResourceRelativeRelationshipFactory_Access_Array is org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.ResourceRelativeRelationshipFactory_Access_Array;
   function "=" (Left, Right : ResourceRelativeRelationshipFactory_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References."=";
   subtype ResourceRelativeRelationshipFactory_Access_Array_Access is org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.ResourceRelativeRelationshipFactory_Access_Array_Access;
   function "=" (Left, Right : ResourceRelativeRelationshipFactory_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References."=";
   function Java_Box (Value : ResourceRelativeRelationshipFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.Java_Box;
   function Java_Unbox_ResourceRelativeRelationshipFactory_Access_Array (Value : access Java_Object'Class) return ResourceRelativeRelationshipFactory_Access_Array_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.Java_Unbox_ResourceRelativeRelationshipFactory_Access_Array;
   subtype ResourceRelativeRelationshipFactory_Access_Array_Access_Array is org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.ResourceRelativeRelationshipFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ResourceRelativeRelationshipFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References."=";
   subtype ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access is org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References."=";
   function Java_Box (Value : ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.Java_Box;
   function Java_Unbox_ResourceRelativeRelationshipFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access renames org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package_References.Java_Unbox_ResourceRelativeRelationshipFactory_Access_Array_Access_Array;

   type ResourceRelativeRelationshipFactory is new Java_Object and ResourceRelativeRelationshipFactoryInterface with record
      basicArrayListUtil : BasicArrayListUtil_Access;
      hashtable : ABHashtable_Access;
      initialized : Boolean;
   end record;

   procedure Initialize (This : in out ResourceRelativeRelationshipFactory'Class);
   function Create return ResourceRelativeRelationshipFactory_Access;
   procedure init (This : in out ResourceRelativeRelationshipFactory; level : Integer);
   function getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String) return BasicArrayList_Access;
   procedure getResourceRelativeRelationshipList (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String);
   procedure addResourceRelativeRelationship (This : in out ResourceRelativeRelationshipFactory; resource : Unbounded_String; hardPoint_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   function isLoadingLevel (This : in out ResourceRelativeRelationshipFactory; level : Integer) return Boolean;
   procedure isLoadingLevel (This : in out ResourceRelativeRelationshipFactory; level : Integer);
   function isFeature (This : in out ResourceRelativeRelationshipFactory) return Boolean;
   procedure setInitialized (This : in out ResourceRelativeRelationshipFactory; initialized : Boolean);
   function isInitialized (This : in out ResourceRelativeRelationshipFactory) return Boolean;

end org.allbinary.game.resource.ResourceRelativeRelationshipFactory_Package;


