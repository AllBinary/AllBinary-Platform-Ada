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

limited with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
package org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References is
   type BaseBasicArrayListCache_Access is access all org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package.BaseBasicArrayListCache'Class;
   type BaseBasicArrayListCache_Access_Array is array (Natural range <>) of BaseBasicArrayListCache_Access;
   type BaseBasicArrayListCache_Access_Array_Access is access all BaseBasicArrayListCache_Access_Array;
   type BaseBasicArrayListCache_Access_Array_Access_Array is array (Natural range <>) of BaseBasicArrayListCache_Access_Array_Access;
   type BaseBasicArrayListCache_Access_Array_Access_Array_Access is access all BaseBasicArrayListCache_Access_Array_Access_Array;
end org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References;

with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References;
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

package org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package is

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


   subtype BaseBasicArrayListCache_Access is org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References.BaseBasicArrayListCache_Access;
   function "=" (Left, Right : BaseBasicArrayListCache_Access) return Boolean renames org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References."=";
   subtype BaseBasicArrayListCache_Access_Array is org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References.BaseBasicArrayListCache_Access_Array;
   function "=" (Left, Right : BaseBasicArrayListCache_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References."=";
   subtype BaseBasicArrayListCache_Access_Array_Access is org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References.BaseBasicArrayListCache_Access_Array_Access;
   function "=" (Left, Right : BaseBasicArrayListCache_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References."=";
   subtype BaseBasicArrayListCache_Access_Array_Access_Array is org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References.BaseBasicArrayListCache_Access_Array_Access_Array;
   function "=" (Left, Right : BaseBasicArrayListCache_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References."=";
   subtype BaseBasicArrayListCache_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References.BaseBasicArrayListCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseBasicArrayListCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package_References."=";

   type BaseBasicArrayListCache is new Java_Object with record
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BaseBasicArrayListCache'Class);
   function Create return BaseBasicArrayListCache_Access;
   function log (This : in out BaseBasicArrayListCache) return Unbounded_String;

end org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;


