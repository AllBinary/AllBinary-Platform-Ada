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
limited with org.allbinary.business.init.db.InventoryDbInitInfo_Package;
package org.allbinary.business.init.db.InventoryDbInitInfo_Package_References is
   type InventoryDbInitInfo_Access is access all org.allbinary.business.init.db.InventoryDbInitInfo_Package.InventoryDbInitInfo'Class;
   type InventoryDbInitInfo_Access_Array is array (Natural range <>) of InventoryDbInitInfo_Access;
   type InventoryDbInitInfo_Access_Array_Access is access all InventoryDbInitInfo_Access_Array;
   type InventoryDbInitInfo_Access_Array_Access_Array is array (Natural range <>) of InventoryDbInitInfo_Access_Array_Access;
   type InventoryDbInitInfo_Access_Array_Access_Array_Access is access all InventoryDbInitInfo_Access_Array_Access_Array;
   type InventoryDbInitInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryDbInitInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryDbInitInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryDbInitInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryDbInitInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryDbInitInfo_Access_Array_Access is (if Value /= null and then Value.all in InventoryDbInitInfo_Access_Array_Object'Class then InventoryDbInitInfo_Access_Array_Object'Class (Value.all).Value else null);
   type InventoryDbInitInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InventoryDbInitInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InventoryDbInitInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InventoryDbInitInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InventoryDbInitInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InventoryDbInitInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InventoryDbInitInfo_Access_Array_Access_Array_Object'Class then InventoryDbInitInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.init.db.InventoryDbInitInfo_Package_References;

with org.allbinary.business.init.db.InventoryDbInitInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.init.db.DbInitInfo_Package; use org.allbinary.business.init.db.DbInitInfo_Package;

package org.allbinary.business.init.db.InventoryDbInitInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InventoryDbInitInfo_Access is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access;
   function "=" (Left, Right : InventoryDbInitInfo_Access) return Boolean renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References."=";
   subtype InventoryDbInitInfo_Access_Array is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array;
   function "=" (Left, Right : InventoryDbInitInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References."=";
   subtype InventoryDbInitInfo_Access_Array_Access is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array_Access;
   function "=" (Left, Right : InventoryDbInitInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References."=";
   function Java_Box (Value : InventoryDbInitInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.Java_Box;
   function Java_Unbox_InventoryDbInitInfo_Access_Array (Value : access Java_Object'Class) return InventoryDbInitInfo_Access_Array_Access renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.Java_Unbox_InventoryDbInitInfo_Access_Array;
   subtype InventoryDbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : InventoryDbInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References."=";
   subtype InventoryDbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.InventoryDbInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InventoryDbInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References."=";
   function Java_Box (Value : InventoryDbInitInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.Java_Box;
   function Java_Unbox_InventoryDbInitInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return InventoryDbInitInfo_Access_Array_Access_Array_Access renames org.allbinary.business.init.db.InventoryDbInitInfo_Package_References.Java_Unbox_InventoryDbInitInfo_Access_Array_Access_Array;

   type InventoryDbInitInfo is new DbInitInfo with null record;
   INITFILE : Unbounded_String;

   procedure Initialize (This : in out InventoryDbInitInfo'Class);
   function Create return InventoryDbInitInfo_Access;
   procedure Initialize (This : in out InventoryDbInitInfo'Class; read : Boolean);
   function Create (read : Boolean) return InventoryDbInitInfo_Access;

end org.allbinary.business.init.db.InventoryDbInitInfo_Package;


