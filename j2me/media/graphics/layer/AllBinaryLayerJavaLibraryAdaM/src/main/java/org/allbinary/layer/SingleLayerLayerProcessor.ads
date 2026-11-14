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
limited with org.allbinary.layer.SingleLayerLayerProcessor_Package;
package org.allbinary.layer.SingleLayerLayerProcessor_Package_References is
   type SingleLayerLayerProcessor_Access is access all org.allbinary.layer.SingleLayerLayerProcessor_Package.SingleLayerLayerProcessor'Class;
   type SingleLayerLayerProcessor_Access_Array is array (Natural range <>) of SingleLayerLayerProcessor_Access;
   type SingleLayerLayerProcessor_Access_Array_Access is access all SingleLayerLayerProcessor_Access_Array;
   type SingleLayerLayerProcessor_Access_Array_Access_Array is array (Natural range <>) of SingleLayerLayerProcessor_Access_Array_Access;
   type SingleLayerLayerProcessor_Access_Array_Access_Array_Access is access all SingleLayerLayerProcessor_Access_Array_Access_Array;
   type SingleLayerLayerProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SingleLayerLayerProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SingleLayerLayerProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SingleLayerLayerProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SingleLayerLayerProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SingleLayerLayerProcessor_Access_Array_Access is (if Value /= null and then Value.all in SingleLayerLayerProcessor_Access_Array_Object'Class then SingleLayerLayerProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SingleLayerLayerProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SingleLayerLayerProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SingleLayerLayerProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SingleLayerLayerProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SingleLayerLayerProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SingleLayerLayerProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SingleLayerLayerProcessor_Access_Array_Access_Array_Object'Class then SingleLayerLayerProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.SingleLayerLayerProcessor_Package_References;

with org.allbinary.layer.SingleLayerLayerProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.layer.SingleLayerLayerProcessor_Package is

   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SingleLayerLayerProcessor_Access is org.allbinary.layer.SingleLayerLayerProcessor_Package_References.SingleLayerLayerProcessor_Access;
   function "=" (Left, Right : SingleLayerLayerProcessor_Access) return Boolean renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References."=";
   subtype SingleLayerLayerProcessor_Access_Array is org.allbinary.layer.SingleLayerLayerProcessor_Package_References.SingleLayerLayerProcessor_Access_Array;
   function "=" (Left, Right : SingleLayerLayerProcessor_Access_Array) return Boolean renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References."=";
   subtype SingleLayerLayerProcessor_Access_Array_Access is org.allbinary.layer.SingleLayerLayerProcessor_Package_References.SingleLayerLayerProcessor_Access_Array_Access;
   function "=" (Left, Right : SingleLayerLayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References."=";
   function Java_Box (Value : SingleLayerLayerProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References.Java_Box;
   function Java_Unbox_SingleLayerLayerProcessor_Access_Array (Value : access Java_Object'Class) return SingleLayerLayerProcessor_Access_Array_Access renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References.Java_Unbox_SingleLayerLayerProcessor_Access_Array;
   subtype SingleLayerLayerProcessor_Access_Array_Access_Array is org.allbinary.layer.SingleLayerLayerProcessor_Package_References.SingleLayerLayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SingleLayerLayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References."=";
   subtype SingleLayerLayerProcessor_Access_Array_Access_Array_Access is org.allbinary.layer.SingleLayerLayerProcessor_Package_References.SingleLayerLayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SingleLayerLayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References."=";
   function Java_Box (Value : SingleLayerLayerProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References.Java_Box;
   function Java_Unbox_SingleLayerLayerProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SingleLayerLayerProcessor_Access_Array_Access_Array_Access renames org.allbinary.layer.SingleLayerLayerProcessor_Package_References.Java_Unbox_SingleLayerLayerProcessor_Access_Array_Access_Array;

   type SingleLayerLayerProcessor is new LayerProcessor with null record;

   procedure Initialize (This : in out SingleLayerLayerProcessor'Class);
   function Create return SingleLayerLayerProcessor_Access;
   procedure process (This : in out SingleLayerLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.layer.SingleLayerLayerProcessor_Package;


