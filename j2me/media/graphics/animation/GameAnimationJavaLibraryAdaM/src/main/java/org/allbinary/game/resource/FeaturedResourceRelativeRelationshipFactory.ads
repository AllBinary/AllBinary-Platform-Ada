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
limited with org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;
package org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References is
   type FeaturedResourceRelativeRelationshipFactory_Access is access all org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package.FeaturedResourceRelativeRelationshipFactory'Class;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array is array (Natural range <>) of FeaturedResourceRelativeRelationshipFactory_Access;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Access is access all FeaturedResourceRelativeRelationshipFactory_Access_Array;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array is array (Natural range <>) of FeaturedResourceRelativeRelationshipFactory_Access_Array_Access;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access is access all FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array;
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FeaturedResourceRelativeRelationshipFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FeaturedResourceRelativeRelationshipFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FeaturedResourceRelativeRelationshipFactory_Access_Array_Access is (if Value /= null and then Value.all in FeaturedResourceRelativeRelationshipFactory_Access_Array_Object'Class then FeaturedResourceRelativeRelationshipFactory_Access_Array_Object'Class (Value.all).Value else null);
   type FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object'Class then FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References;

with org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.game.resource.FeaturedResourceFactory_Package; use org.allbinary.game.resource.FeaturedResourceFactory_Package;

package org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
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


   subtype FeaturedResourceRelativeRelationshipFactory_Access is org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.FeaturedResourceRelativeRelationshipFactory_Access;
   function "=" (Left, Right : FeaturedResourceRelativeRelationshipFactory_Access) return Boolean renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References."=";
   subtype FeaturedResourceRelativeRelationshipFactory_Access_Array is org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.FeaturedResourceRelativeRelationshipFactory_Access_Array;
   function "=" (Left, Right : FeaturedResourceRelativeRelationshipFactory_Access_Array) return Boolean renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References."=";
   subtype FeaturedResourceRelativeRelationshipFactory_Access_Array_Access is org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.FeaturedResourceRelativeRelationshipFactory_Access_Array_Access;
   function "=" (Left, Right : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access) return Boolean renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References."=";
   function Java_Box (Value : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.Java_Box;
   function Java_Unbox_FeaturedResourceRelativeRelationshipFactory_Access_Array (Value : access Java_Object'Class) return FeaturedResourceRelativeRelationshipFactory_Access_Array_Access renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.Java_Unbox_FeaturedResourceRelativeRelationshipFactory_Access_Array;
   subtype FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array is org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References."=";
   subtype FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access is org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References."=";
   function Java_Box (Value : FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.Java_Box;
   function Java_Unbox_FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array_Access renames org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package_References.Java_Unbox_FeaturedResourceRelativeRelationshipFactory_Access_Array_Access_Array;

   type FeaturedResourceRelativeRelationshipFactory is new FeaturedResourceFactory with record
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;
   INSTANCE : FeaturedResourceRelativeRelationshipFactory_Access;

   procedure Initialize (This : in out FeaturedResourceRelativeRelationshipFactory'Class);
   function Create return FeaturedResourceRelativeRelationshipFactory_Access;
   function getInstance return FeaturedResourceRelativeRelationshipFactory_Access;
   function getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return BasicArrayList_Access;
   procedure getRelativeRelationshipList (This : in out FeaturedResourceRelativeRelationshipFactory; resource : Unbounded_String; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return BasicArrayList_Access;
   procedure duplicate (This : in out FeaturedResourceRelativeRelationshipFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory_Package;


