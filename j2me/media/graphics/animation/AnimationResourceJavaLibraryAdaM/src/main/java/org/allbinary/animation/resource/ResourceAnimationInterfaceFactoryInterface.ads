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
limited with org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package;
package org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References is
   type ResourceAnimationInterfaceFactoryInterface_Access is access all org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package.ResourceAnimationInterfaceFactoryInterface'Class;
   type ResourceAnimationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of ResourceAnimationInterfaceFactoryInterface_Access;
   type ResourceAnimationInterfaceFactoryInterface_Access_Array_Access is access all ResourceAnimationInterfaceFactoryInterface_Access_Array;
   type ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ResourceAnimationInterfaceFactoryInterface_Access_Array_Access;
   type ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   type ResourceAnimationInterfaceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceAnimationInterfaceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceAnimationInterfaceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceAnimationInterfaceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in ResourceAnimationInterfaceFactoryInterface_Access_Array_Object'Class then ResourceAnimationInterfaceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class then ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References;

with org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package_References;

package org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package is

   package BasicAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
   package Reference_Types is
   subtype BasicAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package_References.BasicAnimationInterfaceFactoryInterface_Access;
   use type BasicAnimationInterfaceFactoryInterface_Access;
   subtype BasicAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package_References.BasicAnimationInterfaceFactoryInterface_Access_Array;
   use type BasicAnimationInterfaceFactoryInterface_Access_Array;
   subtype BasicAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package_References.BasicAnimationInterfaceFactoryInterface_Access_Array_Access;
   use type BasicAnimationInterfaceFactoryInterface_Access_Array_Access;
   subtype BasicAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package_References.BasicAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   use type BasicAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype BasicAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package_References.BasicAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type BasicAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ResourceAnimationInterfaceFactoryInterface is interface;
   subtype ResourceAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.ResourceAnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : ResourceAnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ResourceAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.ResourceAnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : ResourceAnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ResourceAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.ResourceAnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ResourceAnimationInterfaceFactoryInterface_Access_Array (Value : access Java_Object'Class) return ResourceAnimationInterfaceFactoryInterface_Access_Array_Access renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.Java_Unbox_ResourceAnimationInterfaceFactoryInterface_Access_Array;
   subtype ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References."=";
   subtype ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package_References.Java_Unbox_ResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ResourceAnimationInterfaceFactoryInterface (Value : ResourceAnimationInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getBasicAnimationInterfaceFactoryInstance (This : in out ResourceAnimationInterfaceFactoryInterface; resource : Unbounded_String) return BasicAnimationInterfaceFactoryInterface_Access is abstract;
   procedure getBasicAnimationInterfaceFactoryInstance (This : in out ResourceAnimationInterfaceFactoryInterface; resource : Unbounded_String) is abstract;

end org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package;


