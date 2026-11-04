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

limited with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
package org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References is
   type OpenGLFeatureUtil_Access is access all org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package.OpenGLFeatureUtil'Class;
   type OpenGLFeatureUtil_Access_Array is array (Natural range <>) of OpenGLFeatureUtil_Access;
   type OpenGLFeatureUtil_Access_Array_Access is access all OpenGLFeatureUtil_Access_Array;
   type OpenGLFeatureUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLFeatureUtil_Access_Array_Access;
   type OpenGLFeatureUtil_Access_Array_Access_Array_Access is access all OpenGLFeatureUtil_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References;

with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLFeatureUtil_Access is org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References.OpenGLFeatureUtil_Access;
   function "=" (Left, Right : OpenGLFeatureUtil_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References."=";
   subtype OpenGLFeatureUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References.OpenGLFeatureUtil_Access_Array;
   function "=" (Left, Right : OpenGLFeatureUtil_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References."=";
   subtype OpenGLFeatureUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References.OpenGLFeatureUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeatureUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References."=";
   subtype OpenGLFeatureUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References.OpenGLFeatureUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLFeatureUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References."=";
   subtype OpenGLFeatureUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References.OpenGLFeatureUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeatureUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package_References."=";

   type OpenGLFeatureUtil is new Java_Object with null record;
   instance : OpenGLFeatureUtil_Access;

   procedure Initialize (This : in out OpenGLFeatureUtil'Class);
   function Create return OpenGLFeatureUtil_Access;
   function getInstance return OpenGLFeatureUtil_Access;
   function isAnyThreed (This : in out OpenGLFeatureUtil) return Boolean;

end org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;


