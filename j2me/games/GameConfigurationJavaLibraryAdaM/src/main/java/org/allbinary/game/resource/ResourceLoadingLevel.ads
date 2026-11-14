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
limited with org.allbinary.game.resource.ResourceLoadingLevel_Package;
package org.allbinary.game.resource.ResourceLoadingLevel_Package_References is
   type ResourceLoadingLevel_Access is access all org.allbinary.game.resource.ResourceLoadingLevel_Package.ResourceLoadingLevel'Class;
   type ResourceLoadingLevel_Access_Array is array (Natural range <>) of ResourceLoadingLevel_Access;
   type ResourceLoadingLevel_Access_Array_Access is access all ResourceLoadingLevel_Access_Array;
   type ResourceLoadingLevel_Access_Array_Access_Array is array (Natural range <>) of ResourceLoadingLevel_Access_Array_Access;
   type ResourceLoadingLevel_Access_Array_Access_Array_Access is access all ResourceLoadingLevel_Access_Array_Access_Array;
   type ResourceLoadingLevel_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceLoadingLevel_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceLoadingLevel_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceLoadingLevel_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceLoadingLevel_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceLoadingLevel_Access_Array_Access is (if Value /= null and then Value.all in ResourceLoadingLevel_Access_Array_Object'Class then ResourceLoadingLevel_Access_Array_Object'Class (Value.all).Value else null);
   type ResourceLoadingLevel_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceLoadingLevel_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceLoadingLevel_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceLoadingLevel_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceLoadingLevel_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceLoadingLevel_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ResourceLoadingLevel_Access_Array_Access_Array_Object'Class then ResourceLoadingLevel_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.resource.ResourceLoadingLevel_Package_References;

with org.allbinary.game.resource.ResourceLoadingLevel_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.resource.ResourceLoadingLevel_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ResourceLoadingLevel_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access;
   function "=" (Left, Right : ResourceLoadingLevel_Access) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   subtype ResourceLoadingLevel_Access_Array is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   subtype ResourceLoadingLevel_Access_Array_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   function Java_Box (Value : ResourceLoadingLevel_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References.Java_Box;
   function Java_Unbox_ResourceLoadingLevel_Access_Array (Value : access Java_Object'Class) return ResourceLoadingLevel_Access_Array_Access renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References.Java_Unbox_ResourceLoadingLevel_Access_Array;
   subtype ResourceLoadingLevel_Access_Array_Access_Array is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access_Array;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array_Access_Array) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   subtype ResourceLoadingLevel_Access_Array_Access_Array_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResourceLoadingLevel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References."=";
   function Java_Box (Value : ResourceLoadingLevel_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References.Java_Box;
   function Java_Unbox_ResourceLoadingLevel_Access_Array_Access_Array (Value : access Java_Object'Class) return ResourceLoadingLevel_Access_Array_Access_Array_Access renames org.allbinary.game.resource.ResourceLoadingLevel_Package_References.Java_Unbox_ResourceLoadingLevel_Access_Array_Access_Array;

   type ResourceLoadingLevel is new Java_Object with record
      name : Unbounded_String;
      level : Integer;
   end record;

   procedure Initialize (This : in out ResourceLoadingLevel'Class; name : Unbounded_String; level : Integer);
   function Create (name : Unbounded_String; level : Integer) return ResourceLoadingLevel_Access;
   function getLevel (This : in out ResourceLoadingLevel) return Integer;
   function getName (This : in out ResourceLoadingLevel) return Unbounded_String;

end org.allbinary.game.resource.ResourceLoadingLevel_Package;


