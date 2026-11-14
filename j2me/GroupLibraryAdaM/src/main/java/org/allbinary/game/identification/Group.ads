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
limited with org.allbinary.game.identification.Group_Package;
package org.allbinary.game.identification.Group_Package_References is
   type Group_Access is access all org.allbinary.game.identification.Group_Package.Group'Class;
   type Group_Access_Array is array (Natural range <>) of Group_Access;
   type Group_Access_Array_Access is access all Group_Access_Array;
   type Group_Access_Array_Access_Array is array (Natural range <>) of Group_Access_Array_Access;
   type Group_Access_Array_Access_Array_Access is access all Group_Access_Array_Access_Array;
   type Group_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Group_Access_Array_Access;
   end record;
   function Java_Box (Value : Group_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Group_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Group_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Group_Access_Array_Access is (if Value /= null and then Value.all in Group_Access_Array_Object'Class then Group_Access_Array_Object'Class (Value.all).Value else null);
   type Group_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Group_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Group_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Group_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Group_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Group_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Group_Access_Array_Access_Array_Object'Class then Group_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.identification.Group_Package_References;

with org.allbinary.game.identification.Group_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.identification.GroupInterface_Package; use org.allbinary.game.identification.GroupInterface_Package;

package org.allbinary.game.identification.Group_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   function Java_Box (Value : Group_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.identification.Group_Package_References.Java_Box;
   function Java_Unbox_Group_Access_Array (Value : access Java_Object'Class) return Group_Access_Array_Access renames org.allbinary.game.identification.Group_Package_References.Java_Unbox_Group_Access_Array;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   function Java_Box (Value : Group_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.identification.Group_Package_References.Java_Box;
   function Java_Unbox_Group_Access_Array_Access_Array (Value : access Java_Object'Class) return Group_Access_Array_Access_Array_Access renames org.allbinary.game.identification.Group_Package_References.Java_Unbox_Group_Access_Array_Access_Array;

   type Group is new Java_Object and GroupInterface with record
      name : Unbounded_String;
      teamId : Short_Integer;
      string_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out Group'Class; teamName : Unbounded_String; teamId : Short_Integer);
   function Create (teamName : Unbounded_String; teamId : Short_Integer) return Group_Access;
   function getGroupName (This : in out Group) return Unbounded_String;
   procedure setName (This : in out Group; name : Unbounded_String);
   function getGroupId (This : in out Group) return Short_Integer;
   function toString (This : in out Group) return Unbounded_String;

end org.allbinary.game.identification.Group_Package;


