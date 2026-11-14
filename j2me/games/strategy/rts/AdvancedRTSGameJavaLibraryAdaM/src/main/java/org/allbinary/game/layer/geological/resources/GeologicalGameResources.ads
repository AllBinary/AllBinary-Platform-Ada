-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
limited with org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package;
package org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References is
   type GeologicalGameResources_Access is access all org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package.GeologicalGameResources'Class;
   type GeologicalGameResources_Access_Array is array (Natural range <>) of GeologicalGameResources_Access;
   type GeologicalGameResources_Access_Array_Access is access all GeologicalGameResources_Access_Array;
   type GeologicalGameResources_Access_Array_Access_Array is array (Natural range <>) of GeologicalGameResources_Access_Array_Access;
   type GeologicalGameResources_Access_Array_Access_Array_Access is access all GeologicalGameResources_Access_Array_Access_Array;
   type GeologicalGameResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeologicalGameResources_Access_Array_Access;
   end record;
   function Java_Box (Value : GeologicalGameResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeologicalGameResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeologicalGameResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeologicalGameResources_Access_Array_Access is (if Value /= null and then Value.all in GeologicalGameResources_Access_Array_Object'Class then GeologicalGameResources_Access_Array_Object'Class (Value.all).Value else null);
   type GeologicalGameResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeologicalGameResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeologicalGameResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeologicalGameResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeologicalGameResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeologicalGameResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeologicalGameResources_Access_Array_Access_Array_Object'Class then GeologicalGameResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References;

with org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;

package org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GeologicalGameResources_Access is org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.GeologicalGameResources_Access;
   function "=" (Left, Right : GeologicalGameResources_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References."=";
   subtype GeologicalGameResources_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.GeologicalGameResources_Access_Array;
   function "=" (Left, Right : GeologicalGameResources_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References."=";
   subtype GeologicalGameResources_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.GeologicalGameResources_Access_Array_Access;
   function "=" (Left, Right : GeologicalGameResources_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References."=";
   function Java_Box (Value : GeologicalGameResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.Java_Box;
   function Java_Unbox_GeologicalGameResources_Access_Array (Value : access Java_Object'Class) return GeologicalGameResources_Access_Array_Access renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.Java_Unbox_GeologicalGameResources_Access_Array;
   subtype GeologicalGameResources_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.GeologicalGameResources_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalGameResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References."=";
   subtype GeologicalGameResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.GeologicalGameResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalGameResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References."=";
   function Java_Box (Value : GeologicalGameResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.Java_Box;
   function Java_Unbox_GeologicalGameResources_Access_Array_Access_Array (Value : access Java_Object'Class) return GeologicalGameResources_Access_Array_Access_Array_Access renames org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package_References.Java_Unbox_GeologicalGameResources_Access_Array_Access_Array;

   type GeologicalGameResources is new BasicGameResources with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GeologicalGameResources'Class);
   function Create return GeologicalGameResources_Access;
   function getInstance return BasicGameResources_Access;
   procedure append (This : in out GeologicalGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out GeologicalGameResources) return Unbounded_String;

end org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package;


