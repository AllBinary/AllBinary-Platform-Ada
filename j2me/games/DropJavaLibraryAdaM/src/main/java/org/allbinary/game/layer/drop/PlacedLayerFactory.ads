--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.layer.drop.PlacedLayerFactory_Package;
package org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References is
   type PlacedLayerFactory_Access is access all org.allbinary.game.layer.drop.PlacedLayerFactory_Package.PlacedLayerFactory'Class;
   type PlacedLayerFactory_Access_Array is array (Natural range <>) of PlacedLayerFactory_Access;
   type PlacedLayerFactory_Access_Array_Access is access all PlacedLayerFactory_Access_Array;
   type PlacedLayerFactory_Access_Array_Access_Array is array (Natural range <>) of PlacedLayerFactory_Access_Array_Access;
   type PlacedLayerFactory_Access_Array_Access_Array_Access is access all PlacedLayerFactory_Access_Array_Access_Array;
   type PlacedLayerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlacedLayerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PlacedLayerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlacedLayerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlacedLayerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlacedLayerFactory_Access_Array_Access is (if Value /= null and then Value.all in PlacedLayerFactory_Access_Array_Object'Class then PlacedLayerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PlacedLayerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlacedLayerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlacedLayerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlacedLayerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlacedLayerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlacedLayerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlacedLayerFactory_Access_Array_Access_Array_Object'Class then PlacedLayerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References;

with org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;

package org.allbinary.game.layer.drop.PlacedLayerFactory_Package is

   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Reference_Types is
   subtype AllBinaryLayerFactoryInterface_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access;
   use type AllBinaryLayerFactoryInterface_Access;
   subtype AllBinaryLayerFactoryInterface_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array;
   use type AllBinaryLayerFactoryInterface_Access_Array;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlacedLayerFactory_Access is org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.PlacedLayerFactory_Access;
   function "=" (Left, Right : PlacedLayerFactory_Access) return Boolean renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References."=";
   subtype PlacedLayerFactory_Access_Array is org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.PlacedLayerFactory_Access_Array;
   function "=" (Left, Right : PlacedLayerFactory_Access_Array) return Boolean renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References."=";
   subtype PlacedLayerFactory_Access_Array_Access is org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.PlacedLayerFactory_Access_Array_Access;
   function "=" (Left, Right : PlacedLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References."=";
   function Java_Box (Value : PlacedLayerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.Java_Box;
   function Java_Unbox_PlacedLayerFactory_Access_Array (Value : access Java_Object'Class) return PlacedLayerFactory_Access_Array_Access renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.Java_Unbox_PlacedLayerFactory_Access_Array;
   subtype PlacedLayerFactory_Access_Array_Access_Array is org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.PlacedLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlacedLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References."=";
   subtype PlacedLayerFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.PlacedLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlacedLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References."=";
   function Java_Box (Value : PlacedLayerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.Java_Box;
   function Java_Unbox_PlacedLayerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PlacedLayerFactory_Access_Array_Access_Array_Access renames org.allbinary.game.layer.drop.PlacedLayerFactory_Package_References.Java_Unbox_PlacedLayerFactory_Access_Array_Access_Array;

   type PlacedLayerFactory is new Java_Object with record
      list : BasicArrayList_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;
   instance : PlacedLayerFactory_Access;

   procedure Initialize (This : in out PlacedLayerFactory'Class);
   function Create return PlacedLayerFactory_Access;
   procedure clear (This : in out PlacedLayerFactory);
   function getInstance return PlacedLayerFactory_Access;
   function getSize (This : in out PlacedLayerFactory) return Integer;
   function getRandomInstance (This : in out PlacedLayerFactory) return AllBinaryLayerFactoryInterface_Access;
   procedure add (This : in out PlacedLayerFactory; layerInterfaceFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class);

end org.allbinary.game.layer.drop.PlacedLayerFactory_Package;


