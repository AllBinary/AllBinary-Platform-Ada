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
limited with org.allbinary.animation.AnimationEventHandler_Package;
package org.allbinary.animation.AnimationEventHandler_Package_References is
   type AnimationEventHandler_Access is access all org.allbinary.animation.AnimationEventHandler_Package.AnimationEventHandler'Class;
   type AnimationEventHandler_Access_Array is array (Natural range <>) of AnimationEventHandler_Access;
   type AnimationEventHandler_Access_Array_Access is access all AnimationEventHandler_Access_Array;
   type AnimationEventHandler_Access_Array_Access_Array is array (Natural range <>) of AnimationEventHandler_Access_Array_Access;
   type AnimationEventHandler_Access_Array_Access_Array_Access is access all AnimationEventHandler_Access_Array_Access_Array;
   type AnimationEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationEventHandler_Access_Array_Access is (if Value /= null and then Value.all in AnimationEventHandler_Access_Array_Object'Class then AnimationEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type AnimationEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnimationEventHandler_Access_Array_Access_Array_Object'Class then AnimationEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.AnimationEventHandler_Package_References;

with org.allbinary.animation.AnimationEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.animation.AnimationEventHandler_Package is

   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AnimationEventHandler_Access is org.allbinary.animation.AnimationEventHandler_Package_References.AnimationEventHandler_Access;
   function "=" (Left, Right : AnimationEventHandler_Access) return Boolean renames org.allbinary.animation.AnimationEventHandler_Package_References."=";
   subtype AnimationEventHandler_Access_Array is org.allbinary.animation.AnimationEventHandler_Package_References.AnimationEventHandler_Access_Array;
   function "=" (Left, Right : AnimationEventHandler_Access_Array) return Boolean renames org.allbinary.animation.AnimationEventHandler_Package_References."=";
   subtype AnimationEventHandler_Access_Array_Access is org.allbinary.animation.AnimationEventHandler_Package_References.AnimationEventHandler_Access_Array_Access;
   function "=" (Left, Right : AnimationEventHandler_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationEventHandler_Package_References."=";
   function Java_Box (Value : AnimationEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.AnimationEventHandler_Package_References.Java_Box;
   function Java_Unbox_AnimationEventHandler_Access_Array (Value : access Java_Object'Class) return AnimationEventHandler_Access_Array_Access renames org.allbinary.animation.AnimationEventHandler_Package_References.Java_Unbox_AnimationEventHandler_Access_Array;
   subtype AnimationEventHandler_Access_Array_Access_Array is org.allbinary.animation.AnimationEventHandler_Package_References.AnimationEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationEventHandler_Package_References."=";
   subtype AnimationEventHandler_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationEventHandler_Package_References.AnimationEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationEventHandler_Package_References."=";
   function Java_Box (Value : AnimationEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.AnimationEventHandler_Package_References.Java_Box;
   function Java_Unbox_AnimationEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return AnimationEventHandler_Access_Array_Access_Array_Access renames org.allbinary.animation.AnimationEventHandler_Package_References.Java_Unbox_AnimationEventHandler_Access_Array_Access_Array;

   type AnimationEventHandler is new BasicEventHandler with null record;
   eventHandler : AnimationEventHandler_Access;

   procedure Initialize (This : in out AnimationEventHandler'Class);
   function Create return AnimationEventHandler_Access;
   function getInstance return AnimationEventHandler_Access;

end org.allbinary.animation.AnimationEventHandler_Package;


