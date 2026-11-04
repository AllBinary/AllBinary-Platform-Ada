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

limited with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
package org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References is
   type AllBinaryLayerFactoryInterface_Access is access all org.allbinary.layer.AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class;
   type AllBinaryLayerFactoryInterface_Access_Array is array (Natural range <>) of AllBinaryLayerFactoryInterface_Access;
   type AllBinaryLayerFactoryInterface_Access_Array_Access is access all AllBinaryLayerFactoryInterface_Access_Array;
   type AllBinaryLayerFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of AllBinaryLayerFactoryInterface_Access_Array_Access;
   type AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access is access all AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
end org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References;

with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References;
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

package org.allbinary.layer.AllBinaryLayerFactoryInterface_Package is

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
   end Reference_Types;
   use Reference_Types;


   type AllBinaryLayerFactoryInterface is interface;
   subtype AllBinaryLayerFactoryInterface_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References."=";
   function Java_Object_Access_From_AllBinaryLayerFactoryInterface (Value : AllBinaryLayerFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out AllBinaryLayerFactoryInterface) return AllBinaryLayer_Access is abstract;

end org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;


