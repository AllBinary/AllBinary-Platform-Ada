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
limited with org.allbinary.game.part.PartInterface_Package;
package org.allbinary.game.part.PartInterface_Package_References is
   type PartInterface_Access is access all org.allbinary.game.part.PartInterface_Package.PartInterface'Class;
   type PartInterface_Access_Array is array (Natural range <>) of PartInterface_Access;
   type PartInterface_Access_Array_Access is access all PartInterface_Access_Array;
   type PartInterface_Access_Array_Access_Array is array (Natural range <>) of PartInterface_Access_Array_Access;
   type PartInterface_Access_Array_Access_Array_Access is access all PartInterface_Access_Array_Access_Array;
   type PartInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PartInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PartInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PartInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PartInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PartInterface_Access_Array_Access is (if Value /= null and then Value.all in PartInterface_Access_Array_Object'Class then PartInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PartInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PartInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PartInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PartInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PartInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PartInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PartInterface_Access_Array_Access_Array_Object'Class then PartInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.part.PartInterface_Package_References;

with org.allbinary.game.part.PartInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.AnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.AnimationInterfaceCompositeInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.game.part.PartInterface_Package is

   package AnimationInterfaceCompositeInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceCompositeInterface_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type PartInterface is interface and PaintableInterface and AnimationInterfaceCompositeInterface;
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   function "=" (Left, Right : PartInterface_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   function Java_Box (Value : PartInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.PartInterface_Package_References.Java_Box;
   function Java_Unbox_PartInterface_Access_Array (Value : access Java_Object'Class) return PartInterface_Access_Array_Access renames org.allbinary.game.part.PartInterface_Package_References.Java_Unbox_PartInterface_Access_Array;
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PartInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterface_Package_References."=";
   function Java_Box (Value : PartInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.PartInterface_Package_References.Java_Box;
   function Java_Unbox_PartInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PartInterface_Access_Array_Access_Array_Access renames org.allbinary.game.part.PartInterface_Package_References.Java_Unbox_PartInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PartInterface (Value : PartInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.game.part.PartInterface_Package;


