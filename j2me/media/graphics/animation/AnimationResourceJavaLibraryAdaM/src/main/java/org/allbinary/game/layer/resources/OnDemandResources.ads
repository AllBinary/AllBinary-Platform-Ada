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
limited with org.allbinary.game.layer.resources.OnDemandResources_Package;
package org.allbinary.game.layer.resources.OnDemandResources_Package_References is
   type OnDemandResources_Access is access all org.allbinary.game.layer.resources.OnDemandResources_Package.OnDemandResources'Class;
   type OnDemandResources_Access_Array is array (Natural range <>) of OnDemandResources_Access;
   type OnDemandResources_Access_Array_Access is access all OnDemandResources_Access_Array;
   type OnDemandResources_Access_Array_Access_Array is array (Natural range <>) of OnDemandResources_Access_Array_Access;
   type OnDemandResources_Access_Array_Access_Array_Access is access all OnDemandResources_Access_Array_Access_Array;
   type OnDemandResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OnDemandResources_Access_Array_Access;
   end record;
   function Java_Box (Value : OnDemandResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OnDemandResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OnDemandResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OnDemandResources_Access_Array_Access is (if Value /= null and then Value.all in OnDemandResources_Access_Array_Object'Class then OnDemandResources_Access_Array_Object'Class (Value.all).Value else null);
   type OnDemandResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OnDemandResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OnDemandResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OnDemandResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OnDemandResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OnDemandResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OnDemandResources_Access_Array_Access_Array_Object'Class then OnDemandResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.resources.OnDemandResources_Package_References;

with org.allbinary.game.layer.resources.OnDemandResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.layer.resources.OnDemandResources_Package is

   package BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   use type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access;
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;
   use type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array;
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access;
   use type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access;
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
   use type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;
   subtype BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package_References.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access;
   use type BaseResourceAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OnDemandResources_Access is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access;
   function "=" (Left, Right : OnDemandResources_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResources_Package_References."=";
   subtype OnDemandResources_Access_Array is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array;
   function "=" (Left, Right : OnDemandResources_Access_Array) return Boolean renames org.allbinary.game.layer.resources.OnDemandResources_Package_References."=";
   subtype OnDemandResources_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array_Access;
   function "=" (Left, Right : OnDemandResources_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResources_Package_References."=";
   function Java_Box (Value : OnDemandResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.resources.OnDemandResources_Package_References.Java_Box;
   function Java_Unbox_OnDemandResources_Access_Array (Value : access Java_Object'Class) return OnDemandResources_Access_Array_Access renames org.allbinary.game.layer.resources.OnDemandResources_Package_References.Java_Unbox_OnDemandResources_Access_Array;
   subtype OnDemandResources_Access_Array_Access_Array is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array_Access_Array;
   function "=" (Left, Right : OnDemandResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.resources.OnDemandResources_Package_References."=";
   subtype OnDemandResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.OnDemandResources_Package_References.OnDemandResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OnDemandResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.OnDemandResources_Package_References."=";
   function Java_Box (Value : OnDemandResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.resources.OnDemandResources_Package_References.Java_Box;
   function Java_Unbox_OnDemandResources_Access_Array_Access_Array (Value : access Java_Object'Class) return OnDemandResources_Access_Array_Access_Array_Access renames org.allbinary.game.layer.resources.OnDemandResources_Package_References.Java_Unbox_OnDemandResources_Access_Array_Access_Array;

   type OnDemandResources is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   NULL_ON_DEMAND_RESOURCES : OnDemandResources_Access;

   procedure Initialize (This : in out OnDemandResources'Class);
   function Create return OnDemandResources_Access;
   procedure waitFor (This : in out OnDemandResources);
   procedure init (This : in out OnDemandResources);
   function initAt (This : in out OnDemandResources; imageCache_Param : access ImageCache_Package.ImageCache'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; portion : Integer; loadingString : Unbounded_String; index : Integer) return Integer;
   procedure initAt (This : in out OnDemandResources; imageCache_Param : access ImageCache_Package.ImageCache'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package.BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; portion : Integer; loadingString : Unbounded_String; index : Integer);

end org.allbinary.game.layer.resources.OnDemandResources_Package;


