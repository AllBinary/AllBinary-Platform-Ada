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
limited with org.allbinary.game.layer.geological.resources.GeologicalResource_Package;
package org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References is
   type GeologicalResource_Access is access all org.allbinary.game.layer.geological.resources.GeologicalResource_Package.GeologicalResource'Class;
   type GeologicalResource_Access_Array is array (Natural range <>) of GeologicalResource_Access;
   type GeologicalResource_Access_Array_Access is access all GeologicalResource_Access_Array;
   type GeologicalResource_Access_Array_Access_Array is array (Natural range <>) of GeologicalResource_Access_Array_Access;
   type GeologicalResource_Access_Array_Access_Array_Access is access all GeologicalResource_Access_Array_Access_Array;
   type GeologicalResource_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeologicalResource_Access_Array_Access;
   end record;
   function Java_Box (Value : GeologicalResource_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeologicalResource_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeologicalResource_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeologicalResource_Access_Array_Access is (if Value /= null and then Value.all in GeologicalResource_Access_Array_Object'Class then GeologicalResource_Access_Array_Object'Class (Value.all).Value else null);
   type GeologicalResource_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeologicalResource_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeologicalResource_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeologicalResource_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeologicalResource_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeologicalResource_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeologicalResource_Access_Array_Access_Array_Object'Class then GeologicalResource_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References;

with org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.geological.resources.GeologicalResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GeologicalResource_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access;
   function "=" (Left, Right : GeologicalResource_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   subtype GeologicalResource_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array;
   function "=" (Left, Right : GeologicalResource_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   subtype GeologicalResource_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access;
   function "=" (Left, Right : GeologicalResource_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   function Java_Box (Value : GeologicalResource_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.Java_Box;
   function Java_Unbox_GeologicalResource_Access_Array (Value : access Java_Object'Class) return GeologicalResource_Access_Array_Access renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.Java_Unbox_GeologicalResource_Access_Array;
   subtype GeologicalResource_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalResource_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   subtype GeologicalResource_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   function Java_Box (Value : GeologicalResource_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.Java_Box;
   function Java_Unbox_GeologicalResource_Access_Array_Access_Array (Value : access Java_Object'Class) return GeologicalResource_Access_Array_Access_Array_Access renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.Java_Unbox_GeologicalResource_Access_Array_Access_Array;

   type GeologicalResource is new Java_Object with record
      total : Integer;
      initTotal : Integer;
   end record;

   procedure Initialize (This : in out GeologicalResource'Class; initTotal : Integer);
   function Create (initTotal : Integer) return GeologicalResource_Access;
   procedure init (This : in out GeologicalResource);
   procedure add (This : in out GeologicalResource; value : Integer);
   procedure remove (This : in out GeologicalResource; value : Integer);
   function getTotal (This : in out GeologicalResource) return Integer;
   procedure setTotal (This : in out GeologicalResource; total : Integer);

end org.allbinary.game.layer.geological.resources.GeologicalResource_Package;


