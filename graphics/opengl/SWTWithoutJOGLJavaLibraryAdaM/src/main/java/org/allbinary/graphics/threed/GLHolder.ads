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

limited with org.allbinary.graphics.threed.GLHolder_Package;
package org.allbinary.graphics.threed.GLHolder_Package_References is
   type GLHolder_Access is access all org.allbinary.graphics.threed.GLHolder_Package.GLHolder'Class;
   type GLHolder_Access_Array is array (Natural range <>) of GLHolder_Access;
   type GLHolder_Access_Array_Access is access all GLHolder_Access_Array;
   type GLHolder_Access_Array_Access_Array is array (Natural range <>) of GLHolder_Access_Array_Access;
   type GLHolder_Access_Array_Access_Array_Access is access all GLHolder_Access_Array_Access_Array;
end org.allbinary.graphics.threed.GLHolder_Package_References;

with org.allbinary.graphics.threed.GLHolder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.threed.GLHolder_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GLHolder_Access is org.allbinary.graphics.threed.GLHolder_Package_References.GLHolder_Access;
   function "=" (Left, Right : GLHolder_Access) return Boolean renames org.allbinary.graphics.threed.GLHolder_Package_References."=";
   subtype GLHolder_Access_Array is org.allbinary.graphics.threed.GLHolder_Package_References.GLHolder_Access_Array;
   function "=" (Left, Right : GLHolder_Access_Array) return Boolean renames org.allbinary.graphics.threed.GLHolder_Package_References."=";
   subtype GLHolder_Access_Array_Access is org.allbinary.graphics.threed.GLHolder_Package_References.GLHolder_Access_Array_Access;
   function "=" (Left, Right : GLHolder_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.GLHolder_Package_References."=";
   subtype GLHolder_Access_Array_Access_Array is org.allbinary.graphics.threed.GLHolder_Package_References.GLHolder_Access_Array_Access_Array;
   function "=" (Left, Right : GLHolder_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.threed.GLHolder_Package_References."=";
   subtype GLHolder_Access_Array_Access_Array_Access is org.allbinary.graphics.threed.GLHolder_Package_References.GLHolder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GLHolder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.threed.GLHolder_Package_References."=";

   type GLHolder is new Java_Object with record
      isCreated : Boolean;
   end record;

   procedure Initialize (This : in out GLHolder'Class);
   function Create return GLHolder_Access;
   procedure runOnSurfaceCreated (This : in out GLHolder; renderer_Param : access Java_Object'Class);
   procedure runOnSurfaceChanged (This : in out GLHolder; renderer_Param : access Java_Object'Class; width : Integer; height : Integer);
   procedure run (This : in out GLHolder; renderer_Param : access Java_Object'Class);
   procedure runOnSurfaceCreated (This : in out GLHolder; Value : Unbounded_String);
   procedure run (This : in out GLHolder; Value : Unbounded_String);

end org.allbinary.graphics.threed.GLHolder_Package;


