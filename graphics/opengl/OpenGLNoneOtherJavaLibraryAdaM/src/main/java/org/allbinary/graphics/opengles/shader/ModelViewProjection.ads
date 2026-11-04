-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;
package org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References is
   type ModelViewProjection_Access is access all org.allbinary.graphics.opengles.shader.ModelViewProjection_Package.ModelViewProjection'Class;
   type ModelViewProjection_Access_Array is array (Natural range <>) of ModelViewProjection_Access;
   type ModelViewProjection_Access_Array_Access is access all ModelViewProjection_Access_Array;
   type ModelViewProjection_Access_Array_Access_Array is array (Natural range <>) of ModelViewProjection_Access_Array_Access;
   type ModelViewProjection_Access_Array_Access_Array_Access is access all ModelViewProjection_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References;

with org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.shader.ModelViewProjection_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ModelViewProjection_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access;
   function "=" (Left, Right : ModelViewProjection_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array;
   function "=" (Left, Right : ModelViewProjection_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access;
   function "=" (Left, Right : ModelViewProjection_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access_Array;
   function "=" (Left, Right : ModelViewProjection_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";
   subtype ModelViewProjection_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References.ModelViewProjection_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModelViewProjection_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ModelViewProjection_Package_References."=";

   type ModelViewProjection is new Java_Object with null record;
   instance : ModelViewProjection_Access;

   procedure Initialize (This : in out ModelViewProjection'Class);
   function Create return ModelViewProjection_Access;
   function getInstance return ModelViewProjection_Access;
   function get (This : in out ModelViewProjection) return Float_Array_Access;

end org.allbinary.graphics.opengles.shader.ModelViewProjection_Package;


