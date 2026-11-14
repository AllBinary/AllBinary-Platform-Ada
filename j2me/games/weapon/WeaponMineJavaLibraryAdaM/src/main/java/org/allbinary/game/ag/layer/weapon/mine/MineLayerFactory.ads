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
limited with org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;
package org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References is
   type MineLayerFactory_Access is access all org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package.MineLayerFactory'Class;
   type MineLayerFactory_Access_Array is array (Natural range <>) of MineLayerFactory_Access;
   type MineLayerFactory_Access_Array_Access is access all MineLayerFactory_Access_Array;
   type MineLayerFactory_Access_Array_Access_Array is array (Natural range <>) of MineLayerFactory_Access_Array_Access;
   type MineLayerFactory_Access_Array_Access_Array_Access is access all MineLayerFactory_Access_Array_Access_Array;
   type MineLayerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MineLayerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MineLayerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MineLayerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MineLayerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MineLayerFactory_Access_Array_Access is (if Value /= null and then Value.all in MineLayerFactory_Access_Array_Object'Class then MineLayerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MineLayerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MineLayerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MineLayerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MineLayerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MineLayerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MineLayerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MineLayerFactory_Access_Array_Access_Array_Object'Class then MineLayerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References;

with org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References;
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
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
limited with org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package_References;

package org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
   package ViewPositionFactoryInterface_Package renames Standard.org.allbinary.view.ViewPositionFactoryInterface_Package;
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
   subtype ViewPositionFactoryInterface_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access;
   use type ViewPositionFactoryInterface_Access;
   subtype ViewPositionFactoryInterface_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array;
   use type ViewPositionFactoryInterface_Access_Array;
   subtype ViewPositionFactoryInterface_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access;
   use type ViewPositionFactoryInterface_Access_Array_Access;
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array;
   use type ViewPositionFactoryInterface_Access_Array_Access_Array;
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array_Access;
   use type ViewPositionFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MineLayerFactory_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.MineLayerFactory_Access;
   function "=" (Left, Right : MineLayerFactory_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References."=";
   subtype MineLayerFactory_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.MineLayerFactory_Access_Array;
   function "=" (Left, Right : MineLayerFactory_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References."=";
   subtype MineLayerFactory_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.MineLayerFactory_Access_Array_Access;
   function "=" (Left, Right : MineLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References."=";
   function Java_Box (Value : MineLayerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.Java_Box;
   function Java_Unbox_MineLayerFactory_Access_Array (Value : access Java_Object'Class) return MineLayerFactory_Access_Array_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.Java_Unbox_MineLayerFactory_Access_Array;
   subtype MineLayerFactory_Access_Array_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.MineLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MineLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References."=";
   subtype MineLayerFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.MineLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MineLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References."=";
   function Java_Box (Value : MineLayerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.Java_Box;
   function Java_Unbox_MineLayerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MineLayerFactory_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package_References.Java_Unbox_MineLayerFactory_Access_Array_Access_Array;

   type MineLayerFactory is new Java_Object and AllBinaryLayerFactoryInterface with record
      viewPositionFactoryInterface : ViewPositionFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out MineLayerFactory'Class; viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class);
   function Create (viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class) return MineLayerFactory_Access;
   function getInstance (This : in out MineLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;


