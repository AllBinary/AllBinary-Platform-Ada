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

limited with org.allbinary.graphics.ScreenCaptureNoneFactory_Package;
package org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References is
   type ScreenCaptureNoneFactory_Access is access all org.allbinary.graphics.ScreenCaptureNoneFactory_Package.ScreenCaptureNoneFactory'Class;
   type ScreenCaptureNoneFactory_Access_Array is array (Natural range <>) of ScreenCaptureNoneFactory_Access;
   type ScreenCaptureNoneFactory_Access_Array_Access is access all ScreenCaptureNoneFactory_Access_Array;
   type ScreenCaptureNoneFactory_Access_Array_Access_Array is array (Natural range <>) of ScreenCaptureNoneFactory_Access_Array_Access;
   type ScreenCaptureNoneFactory_Access_Array_Access_Array_Access is access all ScreenCaptureNoneFactory_Access_Array_Access_Array;
end org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References;

with org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.graphics.ScreenCapture_Package_References;

package org.allbinary.graphics.ScreenCaptureNoneFactory_Package is

   package Reference_Types is
   subtype ScreenCapture_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access;
   use type ScreenCapture_Access;
   subtype ScreenCapture_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array;
   use type ScreenCapture_Access_Array;
   subtype ScreenCapture_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access;
   use type ScreenCapture_Access_Array_Access;
   subtype ScreenCapture_Access_Array_Access_Array is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array;
   use type ScreenCapture_Access_Array_Access_Array;
   subtype ScreenCapture_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenCapture_Package_References.ScreenCapture_Access_Array_Access_Array_Access;
   use type ScreenCapture_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScreenCaptureNoneFactory_Access is org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References.ScreenCaptureNoneFactory_Access;
   function "=" (Left, Right : ScreenCaptureNoneFactory_Access) return Boolean renames org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References."=";
   subtype ScreenCaptureNoneFactory_Access_Array is org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References.ScreenCaptureNoneFactory_Access_Array;
   function "=" (Left, Right : ScreenCaptureNoneFactory_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References."=";
   subtype ScreenCaptureNoneFactory_Access_Array_Access is org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References.ScreenCaptureNoneFactory_Access_Array_Access;
   function "=" (Left, Right : ScreenCaptureNoneFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References."=";
   subtype ScreenCaptureNoneFactory_Access_Array_Access_Array is org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References.ScreenCaptureNoneFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenCaptureNoneFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References."=";
   subtype ScreenCaptureNoneFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References.ScreenCaptureNoneFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenCaptureNoneFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ScreenCaptureNoneFactory_Package_References."=";

   type ScreenCaptureNoneFactory is new Java_Object with null record;
   instance : ScreenCapture_Access;

   procedure Initialize (This : in out ScreenCaptureNoneFactory'Class);
   function Create return ScreenCaptureNoneFactory_Access;
   function getInstance return ScreenCapture_Access;

end org.allbinary.graphics.ScreenCaptureNoneFactory_Package;


