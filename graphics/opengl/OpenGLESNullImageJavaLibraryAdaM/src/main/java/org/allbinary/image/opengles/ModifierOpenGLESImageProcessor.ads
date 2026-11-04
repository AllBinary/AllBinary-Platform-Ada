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

limited with org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package;
package org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References is
   type ModifierOpenGLESImageProcessor_Access is access all org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package.ModifierOpenGLESImageProcessor'Class;
   type ModifierOpenGLESImageProcessor_Access_Array is array (Natural range <>) of ModifierOpenGLESImageProcessor_Access;
   type ModifierOpenGLESImageProcessor_Access_Array_Access is access all ModifierOpenGLESImageProcessor_Access_Array;
   type ModifierOpenGLESImageProcessor_Access_Array_Access_Array is array (Natural range <>) of ModifierOpenGLESImageProcessor_Access_Array_Access;
   type ModifierOpenGLESImageProcessor_Access_Array_Access_Array_Access is access all ModifierOpenGLESImageProcessor_Access_Array_Access_Array;
end org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References;

with org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package; use org.allbinary.image.opengles.OpenGLESImageProcessor_Package;

package org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ModifierOpenGLESImageProcessor_Access is org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References.ModifierOpenGLESImageProcessor_Access;
   function "=" (Left, Right : ModifierOpenGLESImageProcessor_Access) return Boolean renames org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References."=";
   subtype ModifierOpenGLESImageProcessor_Access_Array is org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References.ModifierOpenGLESImageProcessor_Access_Array;
   function "=" (Left, Right : ModifierOpenGLESImageProcessor_Access_Array) return Boolean renames org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References."=";
   subtype ModifierOpenGLESImageProcessor_Access_Array_Access is org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References.ModifierOpenGLESImageProcessor_Access_Array_Access;
   function "=" (Left, Right : ModifierOpenGLESImageProcessor_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References."=";
   subtype ModifierOpenGLESImageProcessor_Access_Array_Access_Array is org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References.ModifierOpenGLESImageProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ModifierOpenGLESImageProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References."=";
   subtype ModifierOpenGLESImageProcessor_Access_Array_Access_Array_Access is org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References.ModifierOpenGLESImageProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModifierOpenGLESImageProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package_References."=";

   type ModifierOpenGLESImageProcessor is new OpenGLESImageProcessor with null record;
   instanceC : ModifierOpenGLESImageProcessor_Access;

   procedure Initialize (This : in out ModifierOpenGLESImageProcessor'Class);
   function Create return ModifierOpenGLESImageProcessor_Access;
   function getInstance return ModifierOpenGLESImageProcessor_Access;

end org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package;


