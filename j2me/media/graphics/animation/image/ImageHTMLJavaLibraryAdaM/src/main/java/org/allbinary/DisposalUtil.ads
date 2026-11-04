-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.DisposalUtil_Package;
package org.allbinary.DisposalUtil_Package_References is
   type DisposalUtil_Access is access all org.allbinary.DisposalUtil_Package.DisposalUtil'Class;
   type DisposalUtil_Access_Array is array (Natural range <>) of DisposalUtil_Access;
   type DisposalUtil_Access_Array_Access is access all DisposalUtil_Access_Array;
   type DisposalUtil_Access_Array_Access_Array is array (Natural range <>) of DisposalUtil_Access_Array_Access;
   type DisposalUtil_Access_Array_Access_Array_Access is access all DisposalUtil_Access_Array_Access_Array;
end org.allbinary.DisposalUtil_Package_References;

with org.allbinary.DisposalUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.eclipse.swt.graphics.Resource_Package;
with org.eclipse.swt.graphics.Resource_Package_References;

package org.allbinary.DisposalUtil_Package is

   package Resource_Package renames Standard.org.eclipse.swt.graphics.Resource_Package;
   package Reference_Types is
   subtype Resource_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access;
   use type Resource_Access;
   subtype Resource_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array;
   use type Resource_Access_Array;
   subtype Resource_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access;
   use type Resource_Access_Array_Access;
   subtype Resource_Access_Array_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array;
   use type Resource_Access_Array_Access_Array;
   subtype Resource_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array_Access;
   use type Resource_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DisposalUtil_Access is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access;
   function "=" (Left, Right : DisposalUtil_Access) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   subtype DisposalUtil_Access_Array is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array;
   function "=" (Left, Right : DisposalUtil_Access_Array) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   subtype DisposalUtil_Access_Array_Access is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array_Access;
   function "=" (Left, Right : DisposalUtil_Access_Array_Access) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   subtype DisposalUtil_Access_Array_Access_Array is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DisposalUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";
   subtype DisposalUtil_Access_Array_Access_Array_Access is org.allbinary.DisposalUtil_Package_References.DisposalUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisposalUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.DisposalUtil_Package_References."=";

   type DisposalUtil is new Java_Object with null record;
   instance : DisposalUtil_Access;

   procedure Initialize (This : in out DisposalUtil'Class);
   function Create return DisposalUtil_Access;
   function getInstance return DisposalUtil_Access;
   procedure dispose (This : in out DisposalUtil; resource_Param : access Resource_Package.Resource'Class);

end org.allbinary.DisposalUtil_Package;


