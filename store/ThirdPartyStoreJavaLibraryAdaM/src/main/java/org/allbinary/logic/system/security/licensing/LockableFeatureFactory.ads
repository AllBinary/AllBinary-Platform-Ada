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
limited with org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package;
package org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References is
   type LockableFeatureFactory_Access is access all org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package.LockableFeatureFactory'Class;
   type LockableFeatureFactory_Access_Array is array (Natural range <>) of LockableFeatureFactory_Access;
   type LockableFeatureFactory_Access_Array_Access is access all LockableFeatureFactory_Access_Array;
   type LockableFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of LockableFeatureFactory_Access_Array_Access;
   type LockableFeatureFactory_Access_Array_Access_Array_Access is access all LockableFeatureFactory_Access_Array_Access_Array;
   type LockableFeatureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockableFeatureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LockableFeatureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockableFeatureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockableFeatureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockableFeatureFactory_Access_Array_Access is (if Value /= null and then Value.all in LockableFeatureFactory_Access_Array_Object'Class then LockableFeatureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LockableFeatureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockableFeatureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LockableFeatureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockableFeatureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockableFeatureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockableFeatureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LockableFeatureFactory_Access_Array_Access_Array_Object'Class then LockableFeatureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References;

with org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype LockableFeatureFactory_Access is org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.LockableFeatureFactory_Access;
   function "=" (Left, Right : LockableFeatureFactory_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References."=";
   subtype LockableFeatureFactory_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.LockableFeatureFactory_Access_Array;
   function "=" (Left, Right : LockableFeatureFactory_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References."=";
   subtype LockableFeatureFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.LockableFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : LockableFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References."=";
   function Java_Box (Value : LockableFeatureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_LockableFeatureFactory_Access_Array (Value : access Java_Object'Class) return LockableFeatureFactory_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.Java_Unbox_LockableFeatureFactory_Access_Array;
   subtype LockableFeatureFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.LockableFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LockableFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References."=";
   subtype LockableFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.LockableFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockableFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References."=";
   function Java_Box (Value : LockableFeatureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_LockableFeatureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LockableFeatureFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package_References.Java_Unbox_LockableFeatureFactory_Access_Array_Access_Array;

   type LockableFeatureFactory is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : LockableFeatureFactory_Access;

   procedure Initialize (This : in out LockableFeatureFactory'Class);
   function Create return LockableFeatureFactory_Access;
   function getInstance return LockableFeatureFactory_Access;
   function getList (This : in out LockableFeatureFactory) return BasicArrayList_Access;

end org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package;


