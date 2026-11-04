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

limited with org.allbinary.game.identification.Group_Package;
package org.allbinary.game.identification.Group_Package_References is
   type Group_Access is access all org.allbinary.game.identification.Group_Package.Group'Class;
   type Group_Access_Array is array (Natural range <>) of Group_Access;
   type Group_Access_Array_Access is access all Group_Access_Array;
   type Group_Access_Array_Access_Array is array (Natural range <>) of Group_Access_Array_Access;
   type Group_Access_Array_Access_Array_Access is access all Group_Access_Array_Access_Array;
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
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";

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


