-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package;
package org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References is
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access is access all org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package.DemoLockedWithCostLayerInterfaceFactoryInterface'Class;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of DemoLockedWithCostLayerInterfaceFactoryInterface_Access;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access is access all DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Object'Class then DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class then DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References;

with org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DemoLockedWithCostLayerInterfaceFactoryInterface is interface and CostLayerInterfaceFactoryInterface;
   subtype DemoLockedWithCostLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.DemoLockedWithCostLayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : DemoLockedWithCostLayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References."=";
   subtype DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References."=";
   subtype DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array (Value : access Java_Object'Class) return DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.Java_Unbox_DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array;
   subtype DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References."=";
   subtype DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package_References.Java_Unbox_DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DemoLockedWithCostLayerInterfaceFactoryInterface (Value : DemoLockedWithCostLayerInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isDemoLocked (This : in out DemoLockedWithCostLayerInterfaceFactoryInterface) return Boolean is abstract;

end org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package;


