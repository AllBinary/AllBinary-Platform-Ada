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

limited with org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package;
package org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References is
   type OrthogonalLightingOpenGLProcessorFactory_Access is access all org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package.OrthogonalLightingOpenGLProcessorFactory'Class;
   type OrthogonalLightingOpenGLProcessorFactory_Access_Array is array (Natural range <>) of OrthogonalLightingOpenGLProcessorFactory_Access;
   type OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access is access all OrthogonalLightingOpenGLProcessorFactory_Access_Array;
   type OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access;
   type OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array_Access is access all OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References;

with org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.OpenGLProcessor_Package;
with org.allbinary.graphics.opengles.OpenGLProcessor_Package_References;

package org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package is

   package Reference_Types is
   subtype OpenGLProcessor_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access;
   use type OpenGLProcessor_Access;
   subtype OpenGLProcessor_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array;
   use type OpenGLProcessor_Access_Array;
   subtype OpenGLProcessor_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access;
   use type OpenGLProcessor_Access_Array_Access;
   subtype OpenGLProcessor_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array;
   use type OpenGLProcessor_Access_Array_Access_Array;
   subtype OpenGLProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLProcessor_Package_References.OpenGLProcessor_Access_Array_Access_Array_Access;
   use type OpenGLProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OrthogonalLightingOpenGLProcessorFactory_Access is org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References.OrthogonalLightingOpenGLProcessorFactory_Access;
   function "=" (Left, Right : OrthogonalLightingOpenGLProcessorFactory_Access) return Boolean renames org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References."=";
   subtype OrthogonalLightingOpenGLProcessorFactory_Access_Array is org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References.OrthogonalLightingOpenGLProcessorFactory_Access_Array;
   function "=" (Left, Right : OrthogonalLightingOpenGLProcessorFactory_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References."=";
   subtype OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access is org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References.OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References."=";
   subtype OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References.OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References."=";
   subtype OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References.OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrthogonalLightingOpenGLProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package_References."=";

   type OrthogonalLightingOpenGLProcessorFactory is new Java_Object with record
      sceneLightingOrthogonalModeOpenGLProcessor : OpenGLProcessor_Access;
      sceneLightsOrthogonalModeOpenGLProcessor : OpenGLProcessor_Access;
   end record;
   instance : OrthogonalLightingOpenGLProcessorFactory_Access;

   procedure Initialize (This : in out OrthogonalLightingOpenGLProcessorFactory'Class);
   function Create return OrthogonalLightingOpenGLProcessorFactory_Access;
   function getInstance return OrthogonalLightingOpenGLProcessorFactory_Access;

end org.allbinary.graphics.opengles.OrthogonalLightingOpenGLProcessorFactory_Package;


