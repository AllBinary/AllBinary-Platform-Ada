-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
limited with org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package;
package org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References is
   type StaticTileLayerViewPositionFactory_Access is access all org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package.StaticTileLayerViewPositionFactory'Class;
   type StaticTileLayerViewPositionFactory_Access_Array is array (Natural range <>) of StaticTileLayerViewPositionFactory_Access;
   type StaticTileLayerViewPositionFactory_Access_Array_Access is access all StaticTileLayerViewPositionFactory_Access_Array;
   type StaticTileLayerViewPositionFactory_Access_Array_Access_Array is array (Natural range <>) of StaticTileLayerViewPositionFactory_Access_Array_Access;
   type StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access is access all StaticTileLayerViewPositionFactory_Access_Array_Access_Array;
   type StaticTileLayerViewPositionFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StaticTileLayerViewPositionFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : StaticTileLayerViewPositionFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StaticTileLayerViewPositionFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StaticTileLayerViewPositionFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StaticTileLayerViewPositionFactory_Access_Array_Access is (if Value /= null and then Value.all in StaticTileLayerViewPositionFactory_Access_Array_Object'Class then StaticTileLayerViewPositionFactory_Access_Array_Object'Class (Value.all).Value else null);
   type StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StaticTileLayerViewPositionFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Object'Class then StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References;

with org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;

package org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package is

   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package ViewPositionFactoryInterface_Package renames Standard.org.allbinary.view.ViewPositionFactoryInterface_Package;
   package Reference_Types is
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StaticTileLayerViewPositionFactory_Access is org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.StaticTileLayerViewPositionFactory_Access;
   function "=" (Left, Right : StaticTileLayerViewPositionFactory_Access) return Boolean renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References."=";
   subtype StaticTileLayerViewPositionFactory_Access_Array is org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.StaticTileLayerViewPositionFactory_Access_Array;
   function "=" (Left, Right : StaticTileLayerViewPositionFactory_Access_Array) return Boolean renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References."=";
   subtype StaticTileLayerViewPositionFactory_Access_Array_Access is org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.StaticTileLayerViewPositionFactory_Access_Array_Access;
   function "=" (Left, Right : StaticTileLayerViewPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References."=";
   function Java_Box (Value : StaticTileLayerViewPositionFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.Java_Box;
   function Java_Unbox_StaticTileLayerViewPositionFactory_Access_Array (Value : access Java_Object'Class) return StaticTileLayerViewPositionFactory_Access_Array_Access renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.Java_Unbox_StaticTileLayerViewPositionFactory_Access_Array;
   subtype StaticTileLayerViewPositionFactory_Access_Array_Access_Array is org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.StaticTileLayerViewPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StaticTileLayerViewPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References."=";
   subtype StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access is org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References."=";
   function Java_Box (Value : StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.Java_Box;
   function Java_Unbox_StaticTileLayerViewPositionFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return StaticTileLayerViewPositionFactory_Access_Array_Access_Array_Access renames org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package_References.Java_Unbox_StaticTileLayerViewPositionFactory_Access_Array_Access_Array;

   type StaticTileLayerViewPositionFactory is new Java_Object and ViewPositionFactoryInterface with null record;

   procedure Initialize (This : in out StaticTileLayerViewPositionFactory'Class);
   function Create return StaticTileLayerViewPositionFactory_Access;
   function getInstance (This : in out StaticTileLayerViewPositionFactory) return ViewPositionBase_Access;

end org.allbinary.game.view.StaticTileLayerViewPositionFactory_Package;


