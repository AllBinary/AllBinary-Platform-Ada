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

limited with org.allbinary.graphics.RendererStateFactory_Package;
package org.allbinary.graphics.RendererStateFactory_Package_References is
   type RendererStateFactory_Access is access all org.allbinary.graphics.RendererStateFactory_Package.RendererStateFactory'Class;
   type RendererStateFactory_Access_Array is array (Natural range <>) of RendererStateFactory_Access;
   type RendererStateFactory_Access_Array_Access is access all RendererStateFactory_Access_Array;
   type RendererStateFactory_Access_Array_Access_Array is array (Natural range <>) of RendererStateFactory_Access_Array_Access;
   type RendererStateFactory_Access_Array_Access_Array_Access is access all RendererStateFactory_Access_Array_Access_Array;
end org.allbinary.graphics.RendererStateFactory_Package_References;

with org.allbinary.graphics.RendererStateFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.RendererStateFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RendererStateFactory_Access is org.allbinary.graphics.RendererStateFactory_Package_References.RendererStateFactory_Access;
   function "=" (Left, Right : RendererStateFactory_Access) return Boolean renames org.allbinary.graphics.RendererStateFactory_Package_References."=";
   subtype RendererStateFactory_Access_Array is org.allbinary.graphics.RendererStateFactory_Package_References.RendererStateFactory_Access_Array;
   function "=" (Left, Right : RendererStateFactory_Access_Array) return Boolean renames org.allbinary.graphics.RendererStateFactory_Package_References."=";
   subtype RendererStateFactory_Access_Array_Access is org.allbinary.graphics.RendererStateFactory_Package_References.RendererStateFactory_Access_Array_Access;
   function "=" (Left, Right : RendererStateFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.RendererStateFactory_Package_References."=";
   subtype RendererStateFactory_Access_Array_Access_Array is org.allbinary.graphics.RendererStateFactory_Package_References.RendererStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RendererStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.RendererStateFactory_Package_References."=";
   subtype RendererStateFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.RendererStateFactory_Package_References.RendererStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RendererStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.RendererStateFactory_Package_References."=";

   type RendererStateFactory is new Java_Object with record
      loaded : Boolean;
      surfaceChanged : Boolean;
   end record;
   instance : RendererStateFactory_Access;

   procedure Initialize (This : in out RendererStateFactory'Class);
   function Create return RendererStateFactory_Access;
   function getInstance return RendererStateFactory_Access;
   procedure setLoaded (This : in out RendererStateFactory; loaded : Boolean);
   function isLoaded (This : in out RendererStateFactory) return Boolean;
   procedure setSurfaceChanged (This : in out RendererStateFactory; initialized : Boolean);
   function isSurfaceChanged (This : in out RendererStateFactory) return Boolean;

end org.allbinary.graphics.RendererStateFactory_Package;


