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

limited with org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package;
package org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References is
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access is access all org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package.BaseAnimationInterfaceFactoryInterfaceComposite'Class;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array is array (Natural range <>) of BaseAnimationInterfaceFactoryInterfaceComposite_Access;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access is access all BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array is array (Natural range <>) of BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access;
   type BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array_Access is access all BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array;
end org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References;

with org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package is

   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   use type ScaleProperties_Access;
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   use type ScaleProperties_Access_Array;
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access;
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   use type ScaleProperties_Access_Array_Access_Array;
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access_Array_Access;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BaseAnimationInterfaceFactoryInterfaceComposite_Access is org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References.BaseAnimationInterfaceFactoryInterfaceComposite_Access;
   function "=" (Left, Right : BaseAnimationInterfaceFactoryInterfaceComposite_Access) return Boolean renames org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References."=";
   subtype BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array is org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References.BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array;
   function "=" (Left, Right : BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array) return Boolean renames org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References."=";
   subtype BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access is org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References.BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access;
   function "=" (Left, Right : BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access) return Boolean renames org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References."=";
   subtype BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array is org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References.BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array;
   function "=" (Left, Right : BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References."=";
   subtype BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array_Access is org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References.BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseAnimationInterfaceFactoryInterfaceComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package_References."=";

   type BaseAnimationInterfaceFactoryInterfaceComposite is new Java_Object and AnimationInterfaceFactoryInterface with record
      basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out BaseAnimationInterfaceFactoryInterfaceComposite'Class; basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access) return BaseAnimationInterfaceFactoryInterfaceComposite_Access;
   function getInstance (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; instanceId : Integer);
   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out BaseAnimationInterfaceFactoryInterfaceComposite) return BasicAnimationInterfaceFactoryInterface_Access_Array_Access;
   procedure setBasicAnimationInterfaceFactoryInterfaceArray (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access);
   procedure setInitialScale (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package;


