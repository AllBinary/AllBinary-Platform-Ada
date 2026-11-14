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
limited with org.allbinary.game.combat.damage.AnimationDamageFloaters_Package;
package org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References is
   type AnimationDamageFloaters_Access is access all org.allbinary.game.combat.damage.AnimationDamageFloaters_Package.AnimationDamageFloaters'Class;
   type AnimationDamageFloaters_Access_Array is array (Natural range <>) of AnimationDamageFloaters_Access;
   type AnimationDamageFloaters_Access_Array_Access is access all AnimationDamageFloaters_Access_Array;
   type AnimationDamageFloaters_Access_Array_Access_Array is array (Natural range <>) of AnimationDamageFloaters_Access_Array_Access;
   type AnimationDamageFloaters_Access_Array_Access_Array_Access is access all AnimationDamageFloaters_Access_Array_Access_Array;
   type AnimationDamageFloaters_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationDamageFloaters_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationDamageFloaters_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationDamageFloaters_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationDamageFloaters_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationDamageFloaters_Access_Array_Access is (if Value /= null and then Value.all in AnimationDamageFloaters_Access_Array_Object'Class then AnimationDamageFloaters_Access_Array_Object'Class (Value.all).Value else null);
   type AnimationDamageFloaters_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationDamageFloaters_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationDamageFloaters_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationDamageFloaters_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationDamageFloaters_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationDamageFloaters_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnimationDamageFloaters_Access_Array_Access_Array_Object'Class then AnimationDamageFloaters_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References;

with org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;

package org.allbinary.game.combat.damage.AnimationDamageFloaters_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
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
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnimationDamageFloaters_Access is org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.AnimationDamageFloaters_Access;
   function "=" (Left, Right : AnimationDamageFloaters_Access) return Boolean renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References."=";
   subtype AnimationDamageFloaters_Access_Array is org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.AnimationDamageFloaters_Access_Array;
   function "=" (Left, Right : AnimationDamageFloaters_Access_Array) return Boolean renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References."=";
   subtype AnimationDamageFloaters_Access_Array_Access is org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.AnimationDamageFloaters_Access_Array_Access;
   function "=" (Left, Right : AnimationDamageFloaters_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References."=";
   function Java_Box (Value : AnimationDamageFloaters_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.Java_Box;
   function Java_Unbox_AnimationDamageFloaters_Access_Array (Value : access Java_Object'Class) return AnimationDamageFloaters_Access_Array_Access renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.Java_Unbox_AnimationDamageFloaters_Access_Array;
   subtype AnimationDamageFloaters_Access_Array_Access_Array is org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.AnimationDamageFloaters_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationDamageFloaters_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References."=";
   subtype AnimationDamageFloaters_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.AnimationDamageFloaters_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationDamageFloaters_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References."=";
   function Java_Box (Value : AnimationDamageFloaters_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.Java_Box;
   function Java_Unbox_AnimationDamageFloaters_Access_Array_Access_Array (Value : access Java_Object'Class) return AnimationDamageFloaters_Access_Array_Access_Array_Access renames org.allbinary.game.combat.damage.AnimationDamageFloaters_Package_References.Java_Unbox_AnimationDamageFloaters_Access_Array_Access_Array;

   type AnimationDamageFloaters is new DamageFloaters with record
      logUtil : LogUtil_Access;
      layerInterface : AllBinaryLayer_Access;
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
      circularIndexUtil : CircularIndexUtil_Access;
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AnimationDamageFloaters'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; dx : Integer; dy : Integer) return AnimationDamageFloaters_Access;
   procedure add (This : in out AnimationDamageFloaters; damage : Integer);
   procedure paint (This : in out AnimationDamageFloaters; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.combat.damage.AnimationDamageFloaters_Package;


