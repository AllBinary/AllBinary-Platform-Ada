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

limited with org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;
package org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References is
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is access all org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is access all TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access;
   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is access all TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References;

with org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;

package org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package is

   package BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package Reference_Types is
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   use type ImageCache_Access;
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   use type ImageCache_Access_Array;
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   use type ImageCache_Access_Array_Access;
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   use type ImageCache_Access_Array_Access_Array;
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   use type ImageCache_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access is org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   function "=" (Left, Right : TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;
   function "=" (Left, Right : TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";
   subtype TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package_References."=";

   type TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory is new BaseResourceAnimationInterfaceFactoryInterfaceFactory with null record;

   procedure Initialize (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   function createFactory return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   procedure init (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   procedure initImageCache (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; imageCache_Param : access ImageCache_Package.ImageCache'Class; level : Integer);
   function isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer) return Boolean;
   procedure isLoadingLevel (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory; level : Integer);
   function isFeature (This : in out TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) return Boolean;

end org.allbinary.input.motion.button.TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_Package;


