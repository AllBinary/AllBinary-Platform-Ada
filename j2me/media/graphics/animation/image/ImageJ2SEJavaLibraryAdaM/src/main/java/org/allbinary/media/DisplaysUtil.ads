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

limited with org.allbinary.media.DisplaysUtil_Package;
package org.allbinary.media.DisplaysUtil_Package_References is
   type DisplaysUtil_Access is access all org.allbinary.media.DisplaysUtil_Package.DisplaysUtil'Class;
   type DisplaysUtil_Access_Array is array (Natural range <>) of DisplaysUtil_Access;
   type DisplaysUtil_Access_Array_Access is access all DisplaysUtil_Access_Array;
   type DisplaysUtil_Access_Array_Access_Array is array (Natural range <>) of DisplaysUtil_Access_Array_Access;
   type DisplaysUtil_Access_Array_Access_Array_Access is access all DisplaysUtil_Access_Array_Access_Array;
end org.allbinary.media.DisplaysUtil_Package_References;

with org.allbinary.media.DisplaysUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.DisplayMode_Package; use java.awt.DisplayMode_Package;
--  with java.awt.GraphicsDevice_Package; use java.awt.GraphicsDevice_Package;
--  with java.awt.GraphicsEnvironment_Package; use java.awt.GraphicsEnvironment_Package;
--  with java.awt.Toolkit_Package; use java.awt.Toolkit_Package;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;

package org.allbinary.media.DisplaysUtil_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DisplaysUtil_Access is org.allbinary.media.DisplaysUtil_Package_References.DisplaysUtil_Access;
   function "=" (Left, Right : DisplaysUtil_Access) return Boolean renames org.allbinary.media.DisplaysUtil_Package_References."=";
   subtype DisplaysUtil_Access_Array is org.allbinary.media.DisplaysUtil_Package_References.DisplaysUtil_Access_Array;
   function "=" (Left, Right : DisplaysUtil_Access_Array) return Boolean renames org.allbinary.media.DisplaysUtil_Package_References."=";
   subtype DisplaysUtil_Access_Array_Access is org.allbinary.media.DisplaysUtil_Package_References.DisplaysUtil_Access_Array_Access;
   function "=" (Left, Right : DisplaysUtil_Access_Array_Access) return Boolean renames org.allbinary.media.DisplaysUtil_Package_References."=";
   subtype DisplaysUtil_Access_Array_Access_Array is org.allbinary.media.DisplaysUtil_Package_References.DisplaysUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DisplaysUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.DisplaysUtil_Package_References."=";
   subtype DisplaysUtil_Access_Array_Access_Array_Access is org.allbinary.media.DisplaysUtil_Package_References.DisplaysUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplaysUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.DisplaysUtil_Package_References."=";

   type DisplaysUtil is new Java_Object with null record;
   instance : DisplaysUtil_Access;

   procedure Initialize (This : in out DisplaysUtil'Class);
   function Create return DisplaysUtil_Access;
   function getInstance return DisplaysUtil_Access;
   function getPrimaryScreenSize (This : in out DisplaysUtil) return Rectangle_Access;
   function getScreenSizesAsRectangleArray (This : in out DisplaysUtil) return Rectangle_Access_Array_Access;

end org.allbinary.media.DisplaysUtil_Package;


