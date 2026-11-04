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

limited with org.allbinary.android.AndroidInfoFactory_Package;
package org.allbinary.android.AndroidInfoFactory_Package_References is
   type AndroidInfoFactory_Access is access all org.allbinary.android.AndroidInfoFactory_Package.AndroidInfoFactory'Class;
   type AndroidInfoFactory_Access_Array is array (Natural range <>) of AndroidInfoFactory_Access;
   type AndroidInfoFactory_Access_Array_Access is access all AndroidInfoFactory_Access_Array;
   type AndroidInfoFactory_Access_Array_Access_Array is array (Natural range <>) of AndroidInfoFactory_Access_Array_Access;
   type AndroidInfoFactory_Access_Array_Access_Array_Access is access all AndroidInfoFactory_Access_Array_Access_Array;
end org.allbinary.android.AndroidInfoFactory_Package_References;

with org.allbinary.android.AndroidInfoFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.android.AndroidInfoFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidInfoFactory_Access is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access;
   function "=" (Left, Right : AndroidInfoFactory_Access) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   subtype AndroidInfoFactory_Access_Array is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   subtype AndroidInfoFactory_Access_Array_Access is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array_Access;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   subtype AndroidInfoFactory_Access_Array_Access_Array is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   subtype AndroidInfoFactory_Access_Array_Access_Array_Access is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";

   type AndroidInfoFactory is new Java_Object with record
      version : Integer;
   end record;
   instance : AndroidInfoFactory_Access;

   procedure Initialize (This : in out AndroidInfoFactory'Class);
   function Create return AndroidInfoFactory_Access;
   function getInstance return AndroidInfoFactory_Access;
   function getVersion (This : in out AndroidInfoFactory) return Integer;

end org.allbinary.android.AndroidInfoFactory_Package;


