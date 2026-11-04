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

limited with org.allbinary.graphics.opengles.OpenGLVUtil_Package;
package org.allbinary.graphics.opengles.OpenGLVUtil_Package_References is
   type OpenGLVUtil_Access is access all org.allbinary.graphics.opengles.OpenGLVUtil_Package.OpenGLVUtil'Class;
   type OpenGLVUtil_Access_Array is array (Natural range <>) of OpenGLVUtil_Access;
   type OpenGLVUtil_Access_Array_Access is access all OpenGLVUtil_Access_Array;
   type OpenGLVUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLVUtil_Access_Array_Access;
   type OpenGLVUtil_Access_Array_Access_Array_Access is access all OpenGLVUtil_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.OpenGLVUtil_Package_References;

with org.allbinary.graphics.opengles.OpenGLVUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.opengles.OpenGLVUtilBase_Package; use org.allbinary.graphics.opengles.OpenGLVUtilBase_Package;

package org.allbinary.graphics.opengles.OpenGLVUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLVUtil_Access is org.allbinary.graphics.opengles.OpenGLVUtil_Package_References.OpenGLVUtil_Access;
   function "=" (Left, Right : OpenGLVUtil_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtil_Package_References."=";
   subtype OpenGLVUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLVUtil_Package_References.OpenGLVUtil_Access_Array;
   function "=" (Left, Right : OpenGLVUtil_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtil_Package_References."=";
   subtype OpenGLVUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLVUtil_Package_References.OpenGLVUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLVUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtil_Package_References."=";
   subtype OpenGLVUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLVUtil_Package_References.OpenGLVUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLVUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtil_Package_References."=";
   subtype OpenGLVUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLVUtil_Package_References.OpenGLVUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLVUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLVUtil_Package_References."=";

   type OpenGLVUtil is new OpenGLVUtilBase with null record;
   instance : OpenGLVUtil_Access;

   procedure Initialize (This : in out OpenGLVUtil'Class);
   function Create return OpenGLVUtil_Access;
   function getInstance return OpenGLVUtil_Access;

end org.allbinary.graphics.opengles.OpenGLVUtil_Package;


