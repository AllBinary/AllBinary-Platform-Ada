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
limited with org.allbinary.game.layer.unit.UnitGameInputProcessor_Package;
package org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References is
   type UnitGameInputProcessor_Access is access all org.allbinary.game.layer.unit.UnitGameInputProcessor_Package.UnitGameInputProcessor'Class;
   type UnitGameInputProcessor_Access_Array is array (Natural range <>) of UnitGameInputProcessor_Access;
   type UnitGameInputProcessor_Access_Array_Access is access all UnitGameInputProcessor_Access_Array;
   type UnitGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of UnitGameInputProcessor_Access_Array_Access;
   type UnitGameInputProcessor_Access_Array_Access_Array_Access is access all UnitGameInputProcessor_Access_Array_Access_Array;
   type UnitGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UnitGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : UnitGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UnitGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UnitGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UnitGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in UnitGameInputProcessor_Access_Array_Object'Class then UnitGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type UnitGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UnitGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UnitGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UnitGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UnitGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UnitGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UnitGameInputProcessor_Access_Array_Access_Array_Object'Class then UnitGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References;

with org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
limited with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;

package org.allbinary.game.layer.unit.UnitGameInputProcessor_Package is

   package GameInputProcessor_Package renames Standard.org.allbinary.game.input.GameInputProcessor_Package;
   package Reference_Types is
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   use type UnitLayer_Access;
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   use type UnitLayer_Access_Array;
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   use type UnitLayer_Access_Array_Access;
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   use type UnitLayer_Access_Array_Access_Array;
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   use type UnitLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UnitGameInputProcessor_Access is org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.UnitGameInputProcessor_Access;
   function "=" (Left, Right : UnitGameInputProcessor_Access) return Boolean renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References."=";
   subtype UnitGameInputProcessor_Access_Array is org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.UnitGameInputProcessor_Access_Array;
   function "=" (Left, Right : UnitGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References."=";
   subtype UnitGameInputProcessor_Access_Array_Access is org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.UnitGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : UnitGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References."=";
   function Java_Box (Value : UnitGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_UnitGameInputProcessor_Access_Array (Value : access Java_Object'Class) return UnitGameInputProcessor_Access_Array_Access renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.Java_Unbox_UnitGameInputProcessor_Access_Array;
   subtype UnitGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.UnitGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : UnitGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References."=";
   subtype UnitGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.UnitGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References."=";
   function Java_Box (Value : UnitGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_UnitGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return UnitGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.layer.unit.UnitGameInputProcessor_Package_References.Java_Unbox_UnitGameInputProcessor_Access_Array_Access_Array;

   type UnitGameInputProcessor is new GameInputProcessor with record
      unitLayer : UnitLayer_Access;
   end record;

   procedure Initialize (This : in out UnitGameInputProcessor'Class; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class);
   function Create (unitLayer_Param : access UnitLayer_Package.UnitLayer'Class) return UnitGameInputProcessor_Access;

end org.allbinary.game.layer.unit.UnitGameInputProcessor_Package;


