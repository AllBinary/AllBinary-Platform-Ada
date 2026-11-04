-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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

limited with org.allbinary.business.user.role.BasicUserRoles_Package;
package org.allbinary.business.user.role.BasicUserRoles_Package_References is
   type BasicUserRoles_Access is access all org.allbinary.business.user.role.BasicUserRoles_Package.BasicUserRoles'Class;
   type BasicUserRoles_Access_Array is array (Natural range <>) of BasicUserRoles_Access;
   type BasicUserRoles_Access_Array_Access is access all BasicUserRoles_Access_Array;
   type BasicUserRoles_Access_Array_Access_Array is array (Natural range <>) of BasicUserRoles_Access_Array_Access;
   type BasicUserRoles_Access_Array_Access_Array_Access is access all BasicUserRoles_Access_Array_Access_Array;
end org.allbinary.business.user.role.BasicUserRoles_Package_References;

with org.allbinary.business.user.role.BasicUserRoles_Package_References;
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
limited with org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;

package org.allbinary.business.user.role.BasicUserRoles_Package is

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
   subtype BasicUserRole_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access;
   use type BasicUserRole_Access;
   subtype BasicUserRole_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array;
   use type BasicUserRole_Access_Array;
   subtype BasicUserRole_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access;
   subtype BasicUserRole_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array;
   use type BasicUserRole_Access_Array_Access_Array;
   subtype BasicUserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicUserRoles_Access is org.allbinary.business.user.role.BasicUserRoles_Package_References.BasicUserRoles_Access;
   function "=" (Left, Right : BasicUserRoles_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRoles_Package_References."=";
   subtype BasicUserRoles_Access_Array is org.allbinary.business.user.role.BasicUserRoles_Package_References.BasicUserRoles_Access_Array;
   function "=" (Left, Right : BasicUserRoles_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRoles_Package_References."=";
   subtype BasicUserRoles_Access_Array_Access is org.allbinary.business.user.role.BasicUserRoles_Package_References.BasicUserRoles_Access_Array_Access;
   function "=" (Left, Right : BasicUserRoles_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRoles_Package_References."=";
   subtype BasicUserRoles_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRoles_Package_References.BasicUserRoles_Access_Array_Access_Array;
   function "=" (Left, Right : BasicUserRoles_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRoles_Package_References."=";
   subtype BasicUserRoles_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRoles_Package_References.BasicUserRoles_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicUserRoles_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRoles_Package_References."=";

   type BasicUserRoles is new Java_Object with record
      roleVector : BasicArrayList_Access;
   end record;
   instance : BasicUserRoles_Access;

   procedure Initialize (This : in out BasicUserRoles'Class);
   function Create return BasicUserRoles_Access;
   function getInstance return BasicUserRoles_Access;
   function getRole (This : in out BasicUserRoles; role : Unbounded_String) return BasicUserRole_Access;
   procedure getRole (This : in out BasicUserRoles; role : Unbounded_String);
   function getAll (This : in out BasicUserRoles) return BasicArrayList_Access;

end org.allbinary.business.user.role.BasicUserRoles_Package;


