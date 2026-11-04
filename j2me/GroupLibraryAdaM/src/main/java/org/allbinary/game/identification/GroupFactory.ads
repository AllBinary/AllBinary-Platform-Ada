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

limited with org.allbinary.game.identification.GroupFactory_Package;
package org.allbinary.game.identification.GroupFactory_Package_References is
   type GroupFactory_Access is access all org.allbinary.game.identification.GroupFactory_Package.GroupFactory'Class;
   type GroupFactory_Access_Array is array (Natural range <>) of GroupFactory_Access;
   type GroupFactory_Access_Array_Access is access all GroupFactory_Access_Array;
   type GroupFactory_Access_Array_Access_Array is array (Natural range <>) of GroupFactory_Access_Array_Access;
   type GroupFactory_Access_Array_Access_Array_Access is access all GroupFactory_Access_Array_Access_Array;
end org.allbinary.game.identification.GroupFactory_Package_References;

with org.allbinary.game.identification.GroupFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;

package org.allbinary.game.identification.GroupFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GroupFactory_Access is org.allbinary.game.identification.GroupFactory_Package_References.GroupFactory_Access;
   function "=" (Left, Right : GroupFactory_Access) return Boolean renames org.allbinary.game.identification.GroupFactory_Package_References."=";
   subtype GroupFactory_Access_Array is org.allbinary.game.identification.GroupFactory_Package_References.GroupFactory_Access_Array;
   function "=" (Left, Right : GroupFactory_Access_Array) return Boolean renames org.allbinary.game.identification.GroupFactory_Package_References."=";
   subtype GroupFactory_Access_Array_Access is org.allbinary.game.identification.GroupFactory_Package_References.GroupFactory_Access_Array_Access;
   function "=" (Left, Right : GroupFactory_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupFactory_Package_References."=";
   subtype GroupFactory_Access_Array_Access_Array is org.allbinary.game.identification.GroupFactory_Package_References.GroupFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GroupFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.GroupFactory_Package_References."=";
   subtype GroupFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupFactory_Package_References.GroupFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupFactory_Package_References."=";

   type GroupFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      NULL_GROUP_ARRAY : Group_Access_Array_Access;
      list : BasicArrayList_Access;
      index : Integer;
   end record;
   instance : GroupFactory_Access;

   procedure Initialize (This : in out GroupFactory'Class);
   function Create return GroupFactory_Access;
   function getInstance return GroupFactory_Access;
   function getNextGroup (This : in out GroupFactory) return Group_Access;
   function getNextGroupByName (This : in out GroupFactory; name : Unbounded_String) return Group_Access;
   procedure getNextGroupByName (This : in out GroupFactory; name : Unbounded_String);
   procedure init (This : in out GroupFactory; groups : Short_Integer; nameArray : Unbounded_String_Array_Access);

end org.allbinary.game.identification.GroupFactory_Package;


